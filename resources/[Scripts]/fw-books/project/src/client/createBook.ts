import { FW } from "./client";
import { exp } from "../shared/utils";

import { MinPageWidth, MinPageHeight } from "../shared/config";

onNet("fw-books:Client:WriteBook", async (IgnorePaperRequirement: boolean = false) => {
    if (!IgnorePaperRequirement && !exp['fw-inventory'].HasEnoughOfItem("paper", 1)) {
        return FW.Functions.Notify("You are missing Paper!", "error");
    };

    const Result = await exp['fw-ui'].CreateInput([
        {
            Icon: 'user-edit',
            Label: 'Book title',
            Name: 'Title'
        },
        {
            Icon: 'image',
            Label: 'Icon (imgur image link)',
            Name: 'Icon'
        },
        {
            Icon: 'image',
            Label: 'Pages (imgur image link, one per page)',
            Name: 'PagesUrls',
            Value: [],
            _Type: "ImageList",
            _MinWidth: MinPageWidth, _MinHeight: MinPageHeight,
        }
    ]);

    emit("fw-emotes:Client:PlayEmote", "notepad", null, true);
    const Finished = await FW.Functions.CompactProgressbar(10e3, "Writing book..", false, true, {
        disableMovement: false, disableCarMovement: false, disableMouse: false, disableCombat: true
    }, {}, {}, {}, false);
    emit("fw-emotes:Client:CancelEmote", true);
    
    if (!Finished) return;

    // Check again, in case if someone decided to take it out of their inventory.
    if (!IgnorePaperRequirement && !exp['fw-inventory'].HasEnoughOfItem("paper", 1)) {
        return FW.Functions.Notify("You are missing Paper!", "error");
    };

    const Data = await FW.SendCallback("fw-books:Server:CreateBook", Result, IgnorePaperRequirement);
    if (Data.Success) {
        emit("fw-books:Client:OpenBook", Result.PagesUrls)
    }
});