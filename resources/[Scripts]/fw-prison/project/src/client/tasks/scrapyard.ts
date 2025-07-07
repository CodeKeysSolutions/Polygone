import { Vector3Format } from "../../shared/classes/math";
import { Delay, GetRandom } from "../../shared/utils";
import { FW } from "../client";
import { ReduceJailTime } from "./main";
import { PrisonTask } from "./task";

const Scrapyard = new PrisonTask("Scrapyard", "Scrapyard", "Sort junk and stack bricks."); // was "Sorteer troep en stapel stenen."

let HasScrap: boolean = false;
let TaskBlip: number = 0;

Scrapyard.addTask("StackBricks", async () => {
    TaskStartScenarioInPlace(PlayerPedId(), "CODE_HUMAN_MEDIC_TIME_OF_DEATH", 0, true)
    const Finished = await FW.Functions.CompactProgressbar(20000, "Counting...", false, true, { // was "Tellen..."
        disableMovement: false, disableCarMovement: false, disableMouse: false, disableCombat: true
    }, {}, {}, {}, false);

    ClearPedTasks(PlayerPedId())
    if (!Finished) return;

    FW.TriggerServer("fw-prison:Server:TaskReward", GetRandom(3, 7));

    ReduceJailTime(2);
});

Scrapyard.addTask("SortScrap", async () => {
    if (HasScrap) return FW.Functions.Notify("You already have a box of junk..", "error"); // was "Je hebt al een doos met troep.."

    TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_CONST_DRILL", 0, true)
    const Finished = await FW.Functions.CompactProgressbar(20000, "Sorting junk...", false, true, { // was "Troep sorteren..."
        disableMovement: false, disableCarMovement: false, disableMouse: false, disableCombat: true
    }, {}, {}, {}, false);

    ClearPedTasks(PlayerPedId());
    if (!Finished) return;

    FW.Functions.Notify("You have filled a box with junk, bring it to the delivery point."); // was "Je hebt een doos gevuld met troep, breng deze naar het afleverpunt."
    CreateTaskBlip(50, 16, 'Delivery Point', {x: 1720.44, y: 2566.67, z: 45.55}); // was 'Afleverpunt'
    TriggerEvent('fw-emotes:Client:PlayEmote', "box", null, true)
    HasScrap = true;

    // if (Math.random() == 0.01) {
    //     FW.Functions.Notify("You found a weird phone..", "error") // was "Je vondt een gek telefoontje.."
    // };
});

Scrapyard.addTask("DeliverScrap", async () => {
    if (!HasScrap) return FW.Functions.Notify("You really have a lot of junk man..", "error"); // was "Je hebt wel echt veel troep man.."

    TriggerEvent("fw-emotes:Client:CancelEmote", true)
    await Delay(100);
    TriggerEvent('fw-emotes:Client:PlayEmote', "clipboard", null, true)
    const Finished = await FW.Functions.CompactProgressbar(10000, "Delivering box of materials...", false, true, { // was "Doos met materialen inleveren..."
        disableMovement: false, disableCarMovement: false, disableMouse: false, disableCombat: true
    }, {}, {}, {}, false);

    TriggerEvent("fw-emotes:Client:CancelEmote", true)
    if (!Finished) return;

    HasScrap = false;

    FW.TriggerServer("fw-prison:Server:TaskReward", GetRandom(10, 15));

    ReduceJailTime(4);
    if (DoesBlipExist(TaskBlip)) RemoveBlip(TaskBlip);
});

const CreateTaskBlip = (Sprite: number, Color: number, Text: string, Coords: Vector3Format) => {
    if (DoesBlipExist(TaskBlip)) RemoveBlip(TaskBlip);
    TaskBlip = AddBlipForCoord(Coords.x, Coords.y, Coords.z)
    SetBlipSprite(TaskBlip, Sprite)
    SetBlipColour(TaskBlip, Color)
    SetBlipScale(TaskBlip, 0.7)
    SetBlipAsShortRange(TaskBlip, false)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(Text)
    EndTextCommandSetBlipName(TaskBlip)
}