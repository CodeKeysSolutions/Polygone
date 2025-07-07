Config = Config or {}

Config.LicensesLocales = {
    ['driver'] = 'Driver\'s License',
    ['hunting'] = 'Hunting License',
    ['weapon'] = 'Weapon License',
    ['fishing'] = 'Fishing License',
    ['flying'] = 'Pilot License',
    ['business'] = 'Business License',
}

Config.LicenseTemplate = '<p><strong>Issued to</strong></p><figure class="table"><table><tbody><tr><th>Name</th><td>%s</td></tr><tr><th>SSN number</th><td>%s</td></tr><tr><th>Gender</th><td>%s</td></tr></tbody></table></figure><p><strong>Issued by</strong></p><figure class="table"><table><tbody><tr><th>Name</th><td>%s</td></tr><tr><th>Date</th><td>%s</td></tr></tbody></table></figure><p>&nbsp;</p>'
exports("GetLicenseTemplate", function()
    return Config.LicenseTemplate
end)

Config.ConfiscateMessage = "Dear %s, we regret to inform you that your property has been confiscated by the state due to outstanding debts. We are sorry to say that if no contact is made with the Los Santos courthouse within a certain period, the state may sell the confiscated property to cover the outstanding debts. Please contact the Los Santos courthouse as soon as possible to discuss further steps. Kind regards, the State of Los Santos."