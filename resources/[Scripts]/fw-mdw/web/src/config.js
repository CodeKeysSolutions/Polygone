import { get } from "svelte/store";
import { IsGov, IsEms, IsJudge } from "./stores";

export const DefaultReport = `<p><strong>[DEPARTMENT] Report</strong></p><p>[DATE_TIMESTAMP]</p><p>&nbsp;</p><p><strong>Reporting Officer:</strong></p><p>[REPORTING_OFFICER]</p><p>&nbsp;</p><p><strong>Assisting Officer(s):</strong></p><p>&nbsp;</p><p><strong>Suspect(s):</strong></p><p>&nbsp;</p><p><strong>Victim(s):</strong></p><p>&nbsp;</p><p><strong>Witness(es):</strong></p><p>&nbsp;</p><p><strong>Location:</strong></p><p>&nbsp;</p><p><strong>Debrief:</strong></p><p></p>`
export const DefaultMedicalReport = `<p><strong>Los Santos Medical Group Report</strong></p><p>[DATE_TIMESTAMP]</p><p>&nbsp;</p><p><strong>Is there suspicion of internal/external blood loss:</strong> Yes/No</p><p>&nbsp;</p><p><strong>Is there suspicion of non-visible injury:</strong> Yes/No</p><p>&nbsp;</p><p><strong>Is there suspicion of visible internal injury:</strong> Yes/No</p><p>&nbsp;</p><p><strong>Treating Physician:</strong></p><p>[REPORTING_OFFICER]</p><p>&nbsp;</p><p><strong>Co-treating Physician(s):</strong></p><p>&nbsp;</p><p><strong>Patient(s):</strong></p><p>&nbsp;</p><p><strong>Location of incident:</strong></p><p>&nbsp;</p><p><strong>What is the patient suffering from?</strong></p><p>&nbsp;</p><p><strong>Treatment:</strong></p>`
export const MCUReport = `<figure class="image"><img src="https://lh3.googleusercontent.com/HhFsWBEKklEsPQRgiKgHl23r8_hllz4s3pgmPxkQRgWxU4QU1D3m6wuAIDqJzi9ITN17-s_-9CT1hl1zPBmw-enXqw8oRmnA9UdEcZNoNXCRmBeBDv2xax-dfd8PSQlr5IAEW28R6EPGGH3CNrrJHec"></figure><p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; LOS SANTOS&nbsp;</strong></p><p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; MAJOR CRIME DIVISION</strong></p><p>&nbsp;</p><h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CASE REPORT</strong></h2><p>&nbsp;</p><p>&nbsp;</p><p><strong>FILE INFORMATION </strong><i><strong>#000-0000-G</strong></i></p><p>SUBJECT:&nbsp;</p><p>DETECTIVE(S):</p><p>[REPORTING_OFFICER]</p><p>DATE: [DATE_TIMESTAMP]</p><p>LOCATION:</p><p>&nbsp;</p><p><strong>SUSPECT (1) INFORMATION:</strong></p><p>NAME:</p><p>SURNAME:</p><p>STATE-ID:</p><p>&nbsp;</p><p><strong>REPORT FINDINGS:</strong></p><p>&nbsp;</p><p>&nbsp;</p>`;
export const CivilianReport = `<p><strong>[DEPARTMENT] Statement</strong></p><p>[DATE_TIMESTAMP]</p><p>&nbsp;</p><p><strong>Reporting Officer:</strong></p><p>[REPORTING_OFFICER]</p><p>&nbsp;</p><p><strong>Complainant:</strong></p><p>#[bsn] - [first and last name] ([phone number])</p><p>&nbsp;</p><p><strong>Debrief:</strong></p><p>Between [date and time] and [date and time] in the vicinity of [location], the incident mentioned in the introduction occurred and the complainant stated the following about the incident:</p><p>&nbsp;</p>`
export const BurnReport = `<p><strong>Burn Report</strong></p><p>[DATE_TIMESTAMP]</p><p>&nbsp;</p><p><strong>Is the patient responsive:</strong> Yes/No</p><p>&nbsp;</p><p><strong>Treating Physician:</strong></p><p>[REPORTING_OFFICER]</p><p>&nbsp;</p><p><strong>Co-treating Physician(s):</strong></p><p>&nbsp;</p><p><strong>Patient(s):</strong></p><p>&nbsp;</p><p><strong>Treatment location:</strong></p><p>&nbsp;</p><p><strong>What happened?</strong></p><p>&nbsp;</p><p><strong>What type of burn is it?</strong></p><p>&nbsp;</p><p><strong>Treatment:</strong></p>`
export const GunshotReport = `<p><strong>Gunshot Wound Report</strong></p><p>[DATE_TIMESTAMP]</p><p>&nbsp;</p><p><strong>Is the patient responsive:</strong> Yes/No</p><p>&nbsp;</p><p><strong>Treating Physician:</strong></p><p>[REPORTING_OFFICER]</p><p>&nbsp;</p><p><strong>Co-treating Physician(s):</strong></p><p>&nbsp;</p><p><strong>Patient(s):</strong></p><p>&nbsp;</p><p><strong>Treatment location:</strong></p><p>&nbsp;</p><p><strong>How many gunshot wounds are found in the body?</strong></p><p>&nbsp;</p><p><strong>Treatment:</strong></p>`
export const VehicleReport = `<p><strong>Vehicle Accident Report</strong></p><p>[DATE_TIMESTAMP]</p><p>&nbsp;</p><p><strong>Is there suspicion of internal/external blood loss:</strong> Yes/No</p><p>&nbsp;</p><p><strong>Is there suspicion of visible internal injury:</strong> Yes/No</p><p>&nbsp;</p><p><strong>Is the patient responsive:</strong> Yes/No</p><p>&nbsp;</p><p><strong>Did the patient fall out of the car:</strong> Yes/No</p><p>&nbsp;</p><p><strong>Treating Physician:</strong></p><p>[REPORTING_OFFICER]</p><p>&nbsp;</p><p><strong>Co-treating Physician(s):</strong></p><p>&nbsp;</p><p><strong>Patient(s):</strong></p><p>&nbsp;</p><p><strong>Treatment location:</strong></p><p>&nbsp;</p><p><strong>What is the patient suffering from?</strong></p><p>&nbsp;</p><p><strong>Treatment:</strong></p>`
export const ReceiptReport = `<p><strong>Prescription Report</strong></p><p>[DATE_TIMESTAMP]</p><p>&nbsp;</p><p><strong>Treating Physician:</strong></p><p>[REPORTING_OFFICER]</p><p>&nbsp;</p><p><strong>Patient(s):</strong></p><p>&nbsp;</p><p><strong>Treatment location:</strong></p><p>&nbsp;</p><p><strong>Medication:</strong></p><p>&nbsp;</p><p><strong>Amount:</strong></p><p>&nbsp;</p><p><strong>Remarks:</strong></p><p>&nbsp;</p><p><strong>Findings:</strong></p>`
export const FysioReport = `<p><strong>Physio Report</strong></p><p>[DATE_TIMESTAMP]</p><p>&nbsp;</p><p><strong>Treating Physician:</strong></p><p>[REPORTING_OFFICER]</p><p>&nbsp;</p><p><strong>Patient(s):</strong></p><p>&nbsp;</p><p><strong>Treatment location:</strong></p><p>&nbsp;</p><p><strong>Findings:</strong></p>`
export const MentalReport = `<p><strong>Mental Status Report</strong></p><p>[DATE_TIMESTAMP]</p><p>&nbsp;</p><p><strong>Is the person normally responsive:</strong> Yes/No</p><p>&nbsp;</p><p><strong>Has the person experienced an accident and is afraid of it:</strong> Yes/No</p><p>&nbsp;</p><p><strong>Has the person been treated before:</strong> Yes/No</p><p>&nbsp;</p><p><strong>Treating Physician:</strong></p><p>[REPORTING_OFFICER]</p><p>&nbsp;</p><p><strong>Patient(s):</strong></p><p>&nbsp;</p><p><strong>Treatment location:</strong></p><p>&nbsp;</p><p><strong>What is the cause of the complaint?</strong></p><p>&nbsp;</p><p><strong>Findings:</strong></p>`

export const MdwTabs = [
    { Hidden: true, Permission: "Dashboard.Visible", Label: "Dashboard", Destination: "Dashboard" },
    { Hidden: true, Permission: "Reports.Visible", Label: "Reports", Destination: "Reports" },
    { Hidden: false, Label: "Profiles", Destination: "Profiles" },
    { Hidden: true, Permission: "Evidence.Visible", Label: "Evidence", Destination: "Evidence" },
    { Hidden: false, Label: "Properties", Destination: "Properties" },
    { Hidden: false, Label: "Charges", Destination: "Charges" },
    { Hidden: false, Label: "Staff", Destination: "Staff" },
    { Hidden: false, Label: "Legislation", Destination: "Legislation" },
    { Hidden: false, Label: "Businesses", Destination: "Businesses" },
    { Hidden: true, Permission: "Dashboard.Visible", Label: "Roster", Destination: "Roster" },
];

export const LicensesLocale = {
    "driver": "Driver's License",
    "hunting": "Hunting License",
    "weapon": "Weapon License",
    "fishing": "Fishing License",
    "flying": "Pilot License",
    "business": "Business License",
}

export const PermissionsLocale = {
    "Dashboard.Visible": "Dashboard: Tab Visible",
    "Dashboard.ShowWarrents": "Dashboard: Show Warrants",
    "Dashboard.ShowBulletin": "Dashboard: Show Bulletin",
    "Reports.Visible": "Reports: Tab Visible",
    "Reports.Edit": "Reports: Edit Report",
    "Reports.Create": "Reports: Create Report",
    "Reports.Delete": "Reports: Delete Report",
    "Reports.Export": "Reports: Export Report",
    "Profiles.Visible": "Profiles: Tab Visible",
    "Profiles.Edit": "Profiles: Edit Profile",
    "Profiles.Create": "Profiles: Create Profile",
    "Profiles.Delete": "Profiles: Delete Profile",
    "Profiles.ShowHousing": "Profiles: Show Housing",
    "Profiles.ShowNotes": "Profiles: Show Notes",
    "Evidence.Visible": "Evidence: Tab Visible",
    "Evidence.Edit": "Evidence: Edit Evidence",
    "Evidence.Create": "Evidence: Create Evidence",
    "Evidence.Delete": "Evidence: Delete Evidence",
    "Staff.Visible": "Staff: Tab Visible",
    "Staff.GiveCerts": "Staff: Give/Remove Officer Certs",
    "Staff.ShowStrikes": "Staff: Show Officer Strikes",
    "Staff.GiveStrikes": "Staff: Give Officer Strike",
    "Legislation.Visible": "Legislation: Tab Visible",
    "Legislation.Edit": "Legislation: Edit Legislation",
    "Legislation.Create": "Legislation: Create Legislation",
    "Legislation.Delete": "Legislation: Delete Legislation",
    "Config.EditCharges": "Config: Edit Charges",
    "Config.DeleteCharges": "Config: Delete Charges",
}

export const ReportTypes = [
    { Label: "Physio Report", Jobs: ["ems", "judge"], Certs: false },
    { Label: "Prescription Report", Jobs: ["ems", "judge"], Certs: false },
    { Label: "Medical Report", Jobs: ["ems", "judge"], Certs: false },
    { Label: "Burn Report", Jobs: ["ems", "judge"], Certs: false },
    { Label: "Gunshot Wound Report", Jobs: ["ems", "judge"], Certs: false },
    { Label: "Mental Status Report", Jobs: ["ems", "judge"], Certs: false },
    { Label: "Vehicle Accident Report", Jobs: ["ems", "judge"], Certs: false },
    { Label: "Incident Report", Jobs: ["pd", "judge"], Certs: false },
    { Label: "Investigation Report", Jobs: ["pd", "judge"], Certs: false },
    { Label: "MCU Investigation Report", Jobs: ["pd", "judge"], Certs: [7, 8] },
    { Label: "Seizure Report", Jobs: ["pd", "judge"], Certs: false },
    { Label: "Civilian Report", Jobs: ["pd", "judge"], Certs: false },
    { Label: "Bulletin Board", Jobs: ["pd", "ems", "judge"], Certs: false },
    { Label: "BOLO", Jobs: ["pd", "judge"], Certs: false },
    { Label: "Note", Jobs: ["pd", "judge"], Certs: false },
];

export const GetReportTypes = (Certs, JustArray) => {
    let Retval = [];

    const _IsGov = get(IsGov);
    const _IsJudge = get(IsJudge);
    const _IsEms = get(IsEms);
    const Job = (_IsGov || _IsJudge) ? ( _IsEms ? "ems" : "pd"  ) : "";

    for (let i = 0; i < ReportTypes.length; i++) {
        const Type = ReportTypes[i];

        if (Type.Jobs.includes(Job) && (!Type.Certs || Type.Certs.some(item => Certs.includes(item)))) {
            if (JustArray) {
                Retval.push(Type.Label)
            } else {
                Retval.push({ Text: Type.Label, Value: Type.Label });
            }
        };
    };

    return Retval;
};