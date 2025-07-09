Config = Config or {}

Config.ServerName = 'Polygone'
Config.DiscordServerBotToken =  GetConvar("DISCORD_TOKEN", '')
Config.SpecialMessage{
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