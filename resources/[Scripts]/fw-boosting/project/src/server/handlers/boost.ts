import { Vector3Format } from "../../shared/classes/math";
import { HackCooldown, TierConfigs, TsunamiLimit, VinLimit, WeeklyLimit } from "../../shared/config";
import { DropoffLocations, ScratchLocations } from "../../shared/locations";
import { BoostingContract } from "../../shared/types";
import { Delay, GetRandom, exp } from "../../shared/utils";
import { FW } from "../server";
import { Queuer, VehicleClass } from "../types";
import { GetContractsByCid } from "./contracts";
import { AddCryptoToPlayer, AddPlayerRep, GetBoostingDataByCid, RemovePlayerRep, SetBoostingDataByCid } from "./db";
import { Queuers, RemoveCidFromQueue } from "./queue";

export let ActiveContracts: number[] = [];
export let ScratchContracts: number[] = [];
export let CanceledContracts: number[] = [];
let ContractsData: {[key: number]: BoostingContract} = {};
let VehicleTrackers: {[key: string]: number} = {};
let ContractsDone: {[key: string]: number} = {};
let PlateMap: {
    [key: string]: {
        GroupId: string,
        Class: VehicleClass,
        Tracker: {
            Completed: number;
            Busy: number,
            Delay: number,
            Cooldown: number,
        },
        HackTypes: string[],
        HackTime: number,
        DidRemoveRep: boolean
    }
} = {};

const JobTasks = {
    Dropoff: [
        {
            Title: "Find and steal the target vehicle.",
            Progress: 0, RequiredProgress: 1,
        },
        {
            Title: "Look for tracking devices and disable them.",
            Progress: 0, RequiredProgress: 1,
        },
        {
            Title: "Make sure the police are not nearby and go to the drop-off.",
            Progress: 0, RequiredProgress: 1,
        },
        {
            Title: "Park the vehicle at the delivery location and leave the area.",
            Progress: 0, RequiredProgress: 1,
        },
    ],
    Vin: [
        {
            Title: "Find and steal the target vehicle.",
            Progress: 0, RequiredProgress: 1,
        },
        {
            Title: "Look for tracking devices and disable them.",
            Progress: 0, RequiredProgress: 1,
        },
        {
            Title: "Make sure the police are not nearby and go to the drop-off.",
            Progress: 0, RequiredProgress: 1,
        },
        {
            Title: "Go to the workstation laptop and erase online VIN registrations.",
            Progress: 0, RequiredProgress: 1,
        },
        {
            Title: "Physically scratch the VIN from the vehicle.",
            Progress: 0, RequiredProgress: 1,
        },
    ]
}

export default () => {
    FW.Functions.CreateCallback("fw-boosting:Server:StartContract", async (Source: number, Cb: Function, Contract: BoostingContract) => {
        const Player = FW.Functions.GetPlayer(Source);
        if (!Player) return;

        const Job = exp['fw-jobmanager'].GetGroupByUser(Player.PlayerData.citizenid);
        if (!Job || Queuers.findIndex((Val: Queuer) => Val.Cid == Player.PlayerData.citizenid) == -1) {
            return Cb({
                data: {
                    success: false,
                    message: "You are not in the queue!"
                }
            });
        };

        const { GroupId } = Job;
        const GroupData = exp['fw-jobmanager'].GetGroup("boosting", GroupId);
        if (GroupData.State != "Busy") {
            return Cb({
                data: {
                    success: false,
                    message: "Your group is not ready to work!"
                }
            });
        };

        const BoostData = await GetBoostingDataByCid(Player.PlayerData.citizenid);
        const CurrentTime = new Date().getTime();

        const HasBoostWeekEnded = (CurrentTime - BoostData.WeekStartTime) / (1000 * 60 * 60) >= 168;
        const HasVinWeekEnded = (CurrentTime - BoostData.LastVinScratch) / (1000 * 60 * 60) >= 168;

        const HasTsunamiLimit = ContractsDone[Player.PlayerData.citizenid] >= TsunamiLimit;
        const HasVinLimit = Contract.Vin && !HasVinWeekEnded && BoostData.WeekScratches >= VinLimit;
        const HasWeekLimit = !HasBoostWeekEnded && BoostData.WeekContracts >= WeeklyLimit;

        if (HasTsunamiLimit || HasVinLimit || HasWeekLimit) {
            return Cb({
                data: {
                    success: false,
                    message: "You cannot start this contract.. You have reached a limit."
                }
            });
        }

        const ClassConfig = TierConfigs[Contract.Class];
        const ContractPrice = BoostData.ContractsDone > 0 ? Contract.BuyIn : 0;

        if (ContractPrice > 0 && !Player.Functions.RemoveCrypto(Contract.Crypto, ContractPrice)) {
            return Cb({
                data: {
                    success: false,
                    message: `You do not have enough ${Contract.Crypto} in your wallet to start the contract!`
                }
            });
        };

        let Tries = 0;
        let Plate: undefined | string;
        while (!Plate || PlateMap[Plate] != undefined) {
            Plate = await FW.Functions.GeneratePlate();
            await Delay(25);
            Tries += 1;

            // Try it for 60 seconds.
            if (Tries >= 2400 && (!Plate || PlateMap[Plate] != undefined)) {
                return Cb({
                    data: {
                        success: true,
                        message: "Something went wrong while starting the contract.."
                    }
                });
            };
        };

        const NetId = FW.Functions.SpawnVehicle(Source, Contract.Vehicle, {
            x: Contract.Location.Vehicle.x,
            y: Contract.Location.Vehicle.y,
            z: Contract.Location.Vehicle.z + 1.5,
            a: Contract.Location.Vehicle.w,
        }, false, Plate);

        const Vehicle = NetworkGetEntityFromNetworkId(NetId);

        while (!DoesEntityExist(Vehicle)) {
            await Delay(25);
        };

        SetVehicleDoorsLocked(Vehicle, 2);
        SetVehicleColours(Vehicle, GetRandom(0, 159), GetRandom(0, 159));
        SetVehicleNumberPlateText(Vehicle, Plate);

        let DidRemoveRep = false;
        if (BoostData.Experience - 8 >= 0) {
            DidRemoveRep = true;
            RemovePlayerRep(Player.PlayerData.citizenid, 8);
        };

        PlateMap[Plate] = {
            GroupId,
            Class: Contract.Class,
            Tracker: {
                Completed: 0,
                Busy: 0,
                Delay: 0,
                Cooldown: 0,
            },
            HackTypes: ClassConfig.HackTypes,
            HackTime: ClassConfig.HackTime,
            DidRemoveRep
        };

        Cb({
            data: {
                success: true,
                message: "Contract started, instructions have been sent to your phone."
            }
        });

        const Tasks = [...JobTasks[Contract.Vin ? "Vin" : "Dropoff"]];
        // Tasks[1].RequiredProgress = Math.max(ClassConfig.Trackers, 1);

        let Dropoff = GetRandomDropoffLocation();
        if (Contract.Vin) {
            Dropoff = GetRandomScratchLocation();
        }

        Contract.Data = {
            NetId: NetId,
            Dropoff,
            Plate,
        };

        ContractsData[GroupId] = Contract;

        exp["fw-jobmanager"].SetupJob("boosting", GroupId, {
            Activity: {
                Title: "Boosting",
                Timer: (1000 * 60) * 120,
            },
            Tasks,
        });

        ActiveContracts.push(Contract.Id);
        if (Contract.Vin) ScratchContracts.push(Contract.Id);

        exp["ghmattimysql"].executeSync("UPDATE `laptop_boosting` SET `started` = 1 WHERE `id` = ?", [ Contract.Id ])
    });

    FW.Functions.CreateCallback("fw-boosting:Server:CancelContract", async (Source: number, Cb: Function, Contract: BoostingContract, KeepVehicle: boolean) => {
        const Player = FW.Functions.GetPlayer(Source);
        if (!Player) return;

        const Job = exp['fw-jobmanager'].GetGroupByUser(Player.PlayerData.citizenid);
        if (!Job) {
            return;
        };

        const JobData = ContractsData[Job.GroupId];
        if (!JobData || !JobData.Data) return;

        if (!KeepVehicle) DeleteEntity(NetworkGetEntityFromNetworkId(JobData.Data.NetId));
        if (VehicleTrackers[JobData.Data.NetId]) {
            clearTick(VehicleTrackers[JobData.Data.NetId]);
            delete VehicleTrackers[JobData.Data.NetId];
        };

        delete ContractsData[Job.GroupId];

        CanceledContracts.push(Contract.Id);

        const ActiveIndex = ActiveContracts.findIndex((Val) => Val == Contract.Id);
        ActiveContracts.splice(ActiveIndex, 1);

        const ScratchIndex = ScratchContracts.findIndex((Val) => Val == Contract.Id);
        if (ScratchIndex != -1) ScratchContracts.splice(ScratchIndex, 1);

        exp["ghmattimysql"].executeSync("UPDATE `laptop_boosting` SET `started` = 0 WHERE `id` = ?", [ Contract.Id ]);

        const BoosterData = await GetBoostingDataByCid(Player.PlayerData.citizenid);
        AddCryptoToPlayer(Player.PlayerData.citizenid, Contract.Crypto, BoosterData.ContractsDone > 0 ? Contract.BuyIn : 0);

        const GroupData = exp['fw-jobmanager'].GetGroup("boosting", Job.GroupId);
        emit("fw-jobmanager:Server:AbandonJob", "boosting", Job.GroupId, GroupData.Activity.Id, true);

        for (let i = 0; i < GroupData.Members.length; i++) {
            const Member = FW.Functions.GetPlayerByCitizenId(GroupData.Members[i].Cid)
            if (Member) {
                emitNet("fw-hud:Client:SetHudValue", Member.PlayerData.source, exp['fw-hud'].GetHudId("Boosting"), 0.0)
            };
        };

        Cb({contracts: await GetContractsByCid(Player.PlayerData.citizenid)});
    });

    FW.Functions.CreateCallback("fw-boosting:Server:IsVehicleHackable", async (Source: number, Cb: Function, Plate: string) => {
        if (!PlateMap[Plate]) {
            return Cb({
                data: {
                    succes: false,
                    message: "This vehicle does not have a tracker!"
                }
            });
        };

        if (PlateMap[Plate].Tracker.Cooldown > 0) {
            return Cb({
                data: {
                    success: false,
                    message: "Please wait a moment.."
                }
            });
        };

        if (PlateMap[Plate].Tracker.Busy > 0) {
            return Cb({
                data: {
                    success: false,
                    message: "Someone else is already hacking..."
                }
            });
        };

        PlateMap[Plate].Tracker.Busy = Source;

        Cb({
            data: {
                success: true,
                HackTypes: PlateMap[Plate].HackTypes,
                HackTime: PlateMap[Plate].HackTime,
            }
        })
    });

    FW.Functions.CreateUsableItem("hacking_device", async (Source: number, Item: any) => {
        const Player = FW.Functions.GetPlayer(Source);
        if (!Player) return;

        if (!await Player.Functions.GetItemBySlot(Item.Slot)) return;

        TriggerClientEvent("fw-boosting:Client:UseHackingDevice", Source, Item);
    });

    FW.RegisterServer("fw-boosting:Server:AddHackProgress", (Source: number, Plate: string) => {
        const Player = FW.Functions.GetPlayer(Source);
        if (!Player) return;

        if (!PlateMap[Plate]) return;

        const Delay = GetRandom(2, 12);
        PlateMap[Plate].Tracker.Completed++;
        PlateMap[Plate].Tracker.Busy = 0;
        PlateMap[Plate].Tracker.Delay += Delay;
        PlateMap[Plate].Tracker.Cooldown = HackCooldown;

        Player.Functions.Notify(`You delayed the hack by ${Delay} seconds!`);

        const Group = exp['fw-jobmanager'].GetGroup("boosting", PlateMap[Plate].GroupId)
        const HackingProgress = (100 / TierConfigs[PlateMap[Plate].Class].Trackers) * PlateMap[Plate].Tracker.Completed;

        for (let i = 0; i < Group.Members.length; i++) {
            const Member = FW.Functions.GetPlayerByCitizenId(Group.Members[i].Cid)
            if (Member) {
                emitNet("fw-hud:Client:SetHudValue", Member.PlayerData.source, exp['fw-hud'].GetHudId("Boosting"), HackingProgress)
            };
        };

        if (HackingProgress >= 100) {
            exp["fw-jobmanager"].AddTaskProgress("boosting", PlateMap[Plate].GroupId, Group.Activity.Id, 2, 1)
        };
    });

    FW.RegisterServer("fw-boosting:Server:ScratchVin", async (Source: number, Contract: BoostingContract, Mods: any) => {
        const Player = FW.Functions.GetPlayer(Source);
        if (!Player) return;

        if (!Contract || !Contract.Data) return;

        const ScratchIndex = ScratchContracts.findIndex((Val) => Val == Contract.Id);
        if (ScratchIndex == -1) return;

        await exp['ghmattimysql'].executeSync("INSERT INTO `player_vehicles` (`citizenid`, `vehicle`, `plate`, `vinnumber`, `state`, `mods`, `vinscratched`) VALUES (?, ?, ?, ?, 'out', ?, 1)", [
            Player.PlayerData.citizenid,
            Contract.Vehicle,
            Contract.Data.Plate,
            await FW.Functions.GenerateVin(),
            JSON.stringify(Mods)
        ]);

        exp['ghmattimysql'].executeSync("INSERT INTO `vehicles_ownership` (seller, buyer, plate, price, timestamp) VALUES (?, ?, ?, ?, ?)", [
            "Darell Hensbergen",
            Player.PlayerData.citizenid,
            Contract.Data.Plate,
            0,
            new Date().getTime()
        ])

        const JobData = exp["fw-jobmanager"].GetGroupByUser(Player.PlayerData.citizenid)
        if (!JobData) return;

        const GroupData = exp["fw-jobmanager"].GetGroup("boosting", JobData.GroupId);
        if (!GroupData) return;

        exp["fw-jobmanager"].AddTaskProgress("boosting", JobData.GroupId, GroupData.Activity.Id, 5, 1);
    });
};

onNet("fw-boosting:Server:SetAlertSent", () => {
    const Source: number = source;
    const Player = FW.Functions.GetPlayer(Source);
    if (!Player) return;

    const JobData = exp["fw-jobmanager"].GetGroupByUser(Player.PlayerData.citizenid)
    const GroupData = exp["fw-jobmanager"].GetGroup("boosting", JobData.GroupId)

    for (let i = 0; i < GroupData.Members.length; i++) {
        const Member = FW.Functions.GetPlayerByCitizenId(GroupData.Members[i].Cid)
        if (Member) {
            emitNet("fw-boosting:Client:SetAlertSent", Member.PlayerData.source)
        };
    };
});

onNet("fw-boosting:Server:FailedHack", (Plate: string) => {
    if (!PlateMap[Plate]) return;
    PlateMap[Plate].Tracker.Busy = 0;
    PlateMap[Plate].Tracker.Delay = 0; // Reset delay bcuz fail.
    PlateMap[Plate].Tracker.Cooldown = HackCooldown;
    PlateMap[Plate].Tracker.Completed -= TierConfigs[PlateMap[Plate].Class].HackFail
    if (PlateMap[Plate].Tracker.Completed < 0) PlateMap[Plate].Tracker.Completed = 0;

    const Group = exp['fw-jobmanager'].GetGroup("boosting", PlateMap[Plate].GroupId)
    const HackingProgress = (100 / TierConfigs[PlateMap[Plate].Class].Trackers) * PlateMap[Plate].Tracker.Completed;

    for (let i = 0; i < Group.Members.length; i++) {
        const Member = FW.Functions.GetPlayerByCitizenId(Group.Members[i].Cid)
        if (Member) {
            emitNet("fw-hud:Client:SetHudValue", Member.PlayerData.source, exp['fw-hud'].GetHudId("Boosting"), HackingProgress)
        };
    };
});

onNet("fw-boosting:Server:StartTrackingVehicle", (Contract: BoostingContract) => {
    const Source: number = source;
    const Player = FW.Functions.GetPlayer(Source);
    if (!Player) return;

    if (!Contract.Data) return;
    const {NetId, Plate} = Contract.Data;

    PlateMap[Plate].Tracker.Cooldown = HackCooldown + 30;

    let Counter = 0;
    VehicleTrackers[NetId] = setTick(async () => {
        if (!Contract.Data) {
            clearTick(VehicleTrackers[NetId]);
            delete VehicleTrackers[NetId];
            return;
        };

        if (PlateMap[Plate].Tracker.Cooldown > 0) {
            PlateMap[Plate].Tracker.Cooldown--;
        };

        if (PlateMap[Plate].Tracker.Delay > 0) {
            PlateMap[Plate].Tracker.Delay--;
            if (PlateMap[Plate].Tracker.Delay != 0) return;
        };

        const Job = exp['fw-jobmanager'].GetGroupByUser(Player.PlayerData.citizenid);
        if (!Job) return;

        const GroupData = exp['fw-jobmanager'].GetGroup("boosting", Job.GroupId);

        Counter++;
        if (Counter % 10 == 0) { // Every 10 seconds.
            if (GroupData.Tasks[1].Progress >= GroupData.Tasks[1].RequiredProgress) {
                clearTick(VehicleTrackers[NetId]);
                delete VehicleTrackers[NetId];
                return;
            };

            const Vehicle = NetworkGetEntityFromNetworkId(NetId);

            // @ts-ignore - GetEntityCoords RPC only requires 1 argument, however TS disagrees.
            emitNet("fw-boosting:Client:CreateTrackerBlip", -1, GetEntityCoords(Vehicle))
            emitNet("fw-boosting:Client:TrackerSound", -1, NetId);
        };

        await Delay(1000);
    });
});

onNet("fw-boosting:Server:CleanupBoosting", async (Contract: BoostingContract, Completed: boolean, KeepVehicle: boolean) => {
    const Source: number = source;
    const Player = FW.Functions.GetPlayer(Source);
    if (!Player) return;

    if (!Contract.Data) return;

    const Plate = Contract.Data.Plate;
    if (!KeepVehicle && (!Contract.Vin || !Completed)) {
        const Vehicle = NetworkGetEntityFromNetworkId(Contract.Data.NetId);
        DeleteEntity(Vehicle);
    };

    const GroupData = exp["fw-jobmanager"].GetGroup("boosting", PlateMap[Contract.Data.Plate].GroupId);
    const PlateData = PlateMap[Plate];
    if (!PlateData) return;

    const CurrentTime = new Date().getTime();

    const CanceledId = CanceledContracts.findIndex(Val => Val == Contract.Id);

    for (let i = 0; i < GroupData.Members.length; i++) {
        const { Cid } = GroupData.Members[i];

        const BoosterData = await GetBoostingDataByCid(Cid);
        let XPReward: number = 0;

        // If its not a vin, give XP.
        if (!Contract.Vin) {
            if (Contract.Cid == Cid) {
                XPReward = CanceledId == -1 ? Contract.Xp : 0; // Add leader xp
                if (PlateData.DidRemoveRep) XPReward += 8; // If contract was started and xp was removed, add it back.
            } else {
                XPReward = CanceledId == -1 ? Math.floor(Contract.Xp / 2) : 0; // Add member xp
            };
            BoosterData.Experience += XPReward;
        }

        // Add this job to history.
        if (Contract.Cid == Cid) {
            if (!ContractsDone[Cid]) ContractsDone[Cid] = 0;
            ContractsDone[Cid]++;
            BoosterData.ContractsDone++;
            BoosterData.WeekContracts++;
        };

        // If a week has been passed, reset this.
        const HasBoostWeekEnded = (CurrentTime - BoosterData.WeekStartTime) / (1000 * 60 * 60) >= 168;
        if (HasBoostWeekEnded) {
            BoosterData.WeekContracts = 1;
            BoosterData.WeekStartTime = CurrentTime;
        };

        // Count vinscratch up.
        if (Contract.Cid == Cid && Contract.Vin) {
            BoosterData.WeekScratches++;

            const HasVinWeekEnded = (CurrentTime - BoosterData.LastVinScratch) / (1000 * 60 * 60) >= 168;
            if (HasVinWeekEnded) {
                BoosterData.WeekScratches = 1;
                BoosterData.LastVinScratch = CurrentTime;
            };
        };

        if (CanceledId == -1 && !Contract.Vin) {
            const Member = FW.Functions.GetPlayerByCitizenId(Cid);
            let Payout = Contract.Reward;
            if (Cid != Contract.Cid) Payout = Math.floor((Payout - Contract.BuyIn) / 2);
            AddCryptoToPlayer(Cid, Contract.Crypto, Payout);

            if (Member) {
                emit("fw-phone:Server:Mails:AddMail", "Boosting Service", `${Contract.Class}-${Cid}`, `You receive ${Payout} ${Contract.Crypto} for the contract!`, Member.PlayerData.source);
            };
        };

        // Save their data!
        SetBoostingDataByCid(Cid, BoosterData);
    };

    const ActiveIndex = ActiveContracts.findIndex((Val) => Val == Contract.Id);
    ActiveContracts.splice(ActiveIndex, 1);

    const ScratchIndex = ScratchContracts.findIndex((Val) => Val == Contract.Id);
    if (ScratchIndex != -1) ScratchContracts.splice(ScratchIndex, 1);
    if (CanceledId != -1) CanceledContracts.splice(CanceledId, 1);

    exp['ghmattimysql'].executeSync("DELETE FROM `laptop_boosting` WHERE `id` = ?", [ Contract.Id ]);
});

onNet("fw-boosting:Server:ConfirmVINOrder", ({Id, Contract}: {Id: string; Contract: BoostingContract}) => {
    const Source: number = source;
    const Player = FW.Functions.GetPlayer(Source);
    if (!Player) return;

    if (!Player.Functions.RemoveCrypto(Contract.Crypto, Contract.ScratchPrice)) {
        emitNet('fw-phone:Client:UpdateNotification', Source, Id, true, true, false, "You do not have enough GNE!", true)
        emitNet("fw-boosting:Client:ConfirmOrder", Source, false)
    };

    emitNet('fw-phone:Client:RemoveNotification', Source, Id)
    emitNet("fw-boosting:Client:ConfirmOrder", Source, true);
});

on("fw-boosting:Server:OnImpound", async (Plate: string) => {
    if (!PlateMap[Plate]) return;

    const { GroupId } = PlateMap[Plate];
    const Group = exp['fw-jobmanager'].GetGroup("boosting", GroupId)
    if (!Group) return;

    const Player = FW.Functions.GetPlayerByCitizenId(Group.Members[0].Cid);
    emitNet("fw-boosting:Client:ForceCancel", Player.PlayerData.source);
});

const GetRandomDropoffLocation = (): Vector3Format => {
    const RandomIndex = Math.floor(Math.random() * DropoffLocations.length);
    return DropoffLocations[RandomIndex];
};

const GetRandomScratchLocation = (): Vector3Format => {
    const RandomIndex = Math.floor(Math.random() * ScratchLocations.length);
    return ScratchLocations[RandomIndex].Coords;
};

const IsBoostingVehicle = (Plate: string) => {
    if (!Plate) return false;
    return PlateMap[Plate] != undefined;
};
exp("IsBoostingVehicle", IsBoostingVehicle)

exp("GetActiveContractByGroup", (GroupId: number) => {
    return ContractsData[GroupId];
});

onNet("playerDropped", (reason: string) => {
    const Source = source;
    const Player = FW.Functions.GetPlayer(Source);
    if (!Player) return;

    // Remove "Busy" state on tracker, in case if someone crashes whilst hacking.
    // @ts-ignore - VSCode cries cuz GetPlayerPed required string, but if we toString it, webpack wants a number for GetPlayerPed?
    const Vehicle = GetVehiclePedIsIn(GetPlayerPed(Source), false);
    const Plate = GetVehicleNumberPlateText(Vehicle);
    if (Vehicle && DoesEntityExist(Vehicle) && PlateMap[Plate]) {
        if (PlateMap[Plate].Tracker.Busy == Source) PlateMap[Plate].Tracker.Busy = 0;
    } else {
        for (const [Key, Value] of Object.entries(PlateMap)) {
            if (Value.Tracker.Busy == Source) {
                PlateMap[Key].Tracker.Busy = 0;
                break;
            };
        };
    };

    // Remove user from queue, if they are in.
    RemoveCidFromQueue(Source, Player.PlayerData.citizenid);
});