import { FW } from "../server"

FW.Commands.Add(["hud", "binds"], "HUD Settings", [], false, (Source: number, Args: Array<string>) => {
    const Player = FW.Functions.GetPlayer(Source)
    if (!Player) return;

    emitNet('fw-hud:Client:TogglePreferences', Source, true);
});