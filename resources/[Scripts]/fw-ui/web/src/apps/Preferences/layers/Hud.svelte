<script>
    import Checkbox from "../../../lib/Checkbox/Checkbox.svelte";
    import TextField from "../../../lib/TextField/TextField.svelte";
    import { MyPreferences } from "../preferences.store.js";

    let StatusHud = [
        ["Health", "Health"],
        ["Armor", "Armor"],
        ["Food", "Eten"],
        ["Water", "Drinken"],
    ]

</script>

<p class="preferences-header">Status</p>
<div class="preferences-flex column">
    {#each StatusHud as Data, Key}
        <div style="display: flex; justify-content: space-between;">
            <Checkbox
                Label="Show {Data[1]}"
                bind:Checked={$MyPreferences[`Status.Show${Data[0]}`]}
            />
            <TextField
                Title="Hide if more then... (100 = Never hide)"
                bind:RealValue={$MyPreferences[`Status.${Data[0]}Value`]}
            />
        </div>
    {/each}

    <div style="display: flex; justify-content: space-between;">
        <Checkbox
            Label="Show stress when relevant"
            bind:Checked={$MyPreferences['Status.ShowStress']}
        />
        <Checkbox
            Label="Show Oxygen when relevant"
            bind:Checked={$MyPreferences['Status.ShowOxygen']}
        />
        <Checkbox
            Label="Show Buffs if relevant"
            bind:Checked={$MyPreferences['Status.ShowBuffs']}
        />
    </div>
</div>

<TextField
    Title="Show Radio Channel"
    bind:RealValue={$MyPreferences['Status.RadioVisibility']}
    style="margin-top: 1vh;"
    Select={[
        { Text: "Relevant", Value: "Relevant" },
        { Text: "Always", Value: "Always" },
        { Text: "Never", Value: "Never" }
    ]}
/>

<hr/>
<p class="preferences-header">Vehicles</p>
<Checkbox
    Label="Enable Minimap Border"
    bind:Checked={$MyPreferences['Vehicle.ShowMapOutline']}
/>

<hr/>
<p class="preferences-header">Compass</p>
<Checkbox
    Label="Enable"
    bind:Checked={$MyPreferences['Compass.Show']}
/>

<hr/>
<p class="preferences-header">Black border</p>
<Checkbox
    Label="Enable"
    bind:Checked={$MyPreferences['BlackBars.Show']}
/>
<TextField
    Title="% of the screen"
    Icon="mask"
    bind:RealValue={$MyPreferences['BlackBars.Percentage']}
/>

<hr/>
<p class="preferences-header">Crosshair</p>
<Checkbox
    Label="Enable"
    bind:Checked={$MyPreferences['Crosshair.Show']}
/>