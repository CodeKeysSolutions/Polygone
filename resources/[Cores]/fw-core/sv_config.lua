Config = Config or {}

Config.ServerName = 'Polygone'
Config.DiscordServerBotToken = 'Njk3NzM4ODA1MjQzMDE5Mjk1.G4KAGW.GjfH406sW51Yi0QkqT61qEzCkiUtoS_cNQMqlI'
Config.SpecialMessage = {
    ['STEAM_ID'] = 'SPECIAL CONNECTION MESSAGE',
}

Config.ConnectCard = {
    type = "AdaptiveCard",
    minHeight = "75px",
    version = "1.3",
    body = {
        {
            type = "TextBlock",
            text = "Polygone Roleplay",
            fontType = "Default",
            weight = "Bolder",
            size = "ExtraLarge",
            color = "Light",
            horizontalAlignment = "Center"
        }, 
        {
            type = "TextBlock",
            text = "",
            fontType = "Default",
            weight = "Bolder",
            color = "Light",
            horizontalAlignment = "Center"
        } 
    }
}