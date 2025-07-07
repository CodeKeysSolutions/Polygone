<script>
    import Checkbox from "../../../lib/Checkbox/Checkbox.svelte";
    import TextField from "../../../lib/TextField/TextField.svelte";
    import { MyPreferences } from "../preferences.store.js";
</script>

<p class="preferences-header">Misc</p>
<TextField
    Title="Brand"
    bind:RealValue={$MyPreferences['Phone.Brand']}
    Select={[
        { Text: "Android", Value: "Android" },
        { Text: "iOS", Value: "iOS" }
    ]}
/>

<TextField
    Title="Background URL (1:2.2 res)"
    Icon="images"
    bind:RealValue={$MyPreferences['Phone.Background']}
/>

<TextField
    Title="Phone Animation"
    bind:RealValue={$MyPreferences['Phone.Animation']}
    Select={[
        { Text: "Right Ear (Default)", Value: "Rechteroor" },
        { Text: "Left Ear", Value: "Linkeroor" }
    ]}
/>

<TextField
    Title="Radio Animation"
    bind:RealValue={$MyPreferences['Radio.Animation']}
    Select={[
        { Text: "Shoulder (Default)", Value: "Schouder" },
        { Text: "Chest", Value: "Borst" }
    ]}
/>

<Checkbox
    Label="Disable movement (Recommended)"
    bind:Checked={$MyPreferences['Phone.DisableMovement']}
/>

<hr/>
<p class="preferences-header">Notifications</p>

<Checkbox
    Label="Receive SMS"
    bind:Checked={$MyPreferences['Notifications.SMS']}
/>
<Checkbox
    Label="New Twat"
    bind:Checked={$MyPreferences['Notifications.Tweet']}
/>
<Checkbox
    Label="Receive Email"
    bind:Checked={$MyPreferences['Notifications.Email']}
/>

<hr/>
<p class="preferences-header">Images</p>

<Checkbox
    Label="Twitter/Message Attachments Enabled"
    bind:Checked={$MyPreferences['Images.Embedded']}
/>