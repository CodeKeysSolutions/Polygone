export const FW = global.exports['fw-core'].GetCoreObject();
import './creation';
import './race';
import { CurrentRace } from './race';

// todo: remove this
on("onResourceStart", () => {
    global.exports['fw-ui'].SendUIMessage("Racing", "SetHud", {
        Visible: false
    });
});

const OpenAliasTextbox = async (Slot: number) => {
    const Textbox = await global.exports['fw-ui'].CreateInput([
        {
            Name: "Alias",
            Label: "Alias",
            Icon: "pencil-alt"
        }
    ])

    if (!Textbox.Alias || Textbox.Alias.length == 0) {
        return FW.Functions.Notify("No alias given!", "error");
    };

    const Result = await FW.SendCallback("fw-racing:Server:SetAlias", Slot, Textbox.Alias)
    if (Result.Success) {
        emit("fw-phone:Client:Notification", "racing-new-event", "fas fa-flag-checkered", [ "white", "#039380" ], 'Racing', `Welcome to the underworld, ${Textbox.Alias}`)
        return
    }

    FW.Functions.Notify(Result.Msg || "Couldnt edit alias..", "error")
    if (Result.Msg == "Alias already taken!") {
        OpenAliasTextbox(Slot);
    };
};
onNet("fw-racing:Client:OpenAliasTextbox", OpenAliasTextbox);

global.exports("IsNitrousAllowed", () => {
    if (!CurrentRace) return true;
    return CurrentRace.Settings.AllowNitrous;
})