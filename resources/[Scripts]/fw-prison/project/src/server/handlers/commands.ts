import { DateTime } from "luxon";
import { FW, GetCurrentDocs } from "../server";

export default () => {
    FW.Commands.Add("jail", "Send a criminal to jail.", [ // was "Stuur een crimineel naar de gevangenis."
        { name: "id", help: "Player ID" }, // was "player ID"
        { name: "tijd", help: "How long should the criminal be jailed" }, // was "Hoelang de crimineel moet wegrotten"
        { name: "voorwaardelijk", help: "How many months parole?" } // was "Hoeveel maanden voorwaardelijk?"
    ], true, (Source: number, Args: string[]) => {
        const Player = FW.Functions.GetPlayer(Source)
        if (!Player) return;

        if (Player.PlayerData.job.name == "police" && GetCurrentDocs() >= 2) {
            return Player.Functions.Notify("Department of Corrections is present..", "error"); // was "Department of Corrections is aanwezig.."
        }

        if ((Player.PlayerData.job.name != "police" && Player.PlayerData.job.name != "doc") || !Player.PlayerData.job.onduty) {
            return Player.Functions.Notify("You cannot do this..", "error"); // was "Dit kan jij niet.."
        };
    
        const TPlayer = FW.Functions.GetPlayer(Number(Args[0]));
        if (!TPlayer) return;
    
        let Time: number = Math.min(Math.floor(Number(Args[1])), 99999); // 69 days
        if (!Time || Time <= 0) return Player.Functions.Notify("At least 0 months jail time!", "error"); // was "Minstens 0 maanden celstaf!"
    
        if (TPlayer.PlayerData.metadata.paroletime > 0) Time += TPlayer.PlayerData.metadata.paroletime;
    
        const Parole: number = Number(Args[2])
        if (Parole == undefined || Parole == null || Parole < 0) return Player.Functions.Notify("At least 0 months parole!", "error"); // was "Minstens 0 maanden voorwaardelijk!"
    
        TPlayer.Functions.SetMetaData("paroletime", Parole)
        TPlayer.Functions.SetMetaData("jailtime", Time)
        emitNet("fw-assets:Client:JailMugshot", TPlayer.PlayerData.source, `${TPlayer.PlayerData.charinfo.firstname} ${TPlayer.PlayerData.charinfo.lastname}`, Time, TPlayer.PlayerData.citizenid, DateTime.local().toFormat('dd/MM/yyyy'));
    })
}