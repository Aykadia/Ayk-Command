local translations = {
    en = {
        staff = "Staff of",                                                                                                -- You can change the text between : ""
        messageAfterDiscord = "No time to copy the links? No stress.",                                                     -- You can change the text between : ""
        pressF8 = "Press your F8 key and the link will be there!",                                                         -- You can change the text between : ""
        acceptRules = "Make sure you accept the rules when you join to have access to the entire discord.",                -- You can change the text between : ""
        thanksSupport = "Thanks for your support!",                                                                        -- You can change the text between : ""
    },
    fr = {
        staff = "Staff de",                                                                                                -- Tu peux changé le texte entre les : ""
        messageAfterDiscord = "Pas le temps de copier le liens ? Pas de stress.",                                          -- Tu peux changé le texte entre les : ""
        pressF8 = "Appuyez sur votre touche F8 et le lien y sera !",                                                       -- Tu peux changé le texte entre les : ""
        acceptRules = "Assurez-vous d'accepter les règles lorsque vous rejoignez pour avoir accès à tout le discord.",     -- Tu peux changé le texte entre les : ""
        thanksSupport = "Merci pour votre soutien !",                                                                      -- Tu peux changé le texte entre les : ""
    },
}

local function getTranslation(key)
    return translations[Config.Language][key] or key
end

RegisterCommand("discord", function(source, args, rawCommand)
    -- notif
    
if Config.Notif == "QB" then

    TriggerEvent('QBCore:Notify', Config.DiscordLink, info, 3000)
    Citizen.Wait(5000)
    TriggerEvent('QBCore:Notify', getTranslation("messageAfterDiscord"), info, 3000)
    Citizen.Wait(1000)
    TriggerEvent('QBCore:Notify', getTranslation("pressF8"), info, 5000 )


elseif Config.Notif == "okok" then
        
        exports['okokNotify']:Alert(Config.NameServer.." / Discord", Config.DiscordLink, 3000, 'info')
        Citizen.Wait(5000)
        exports['okokNotify']:Alert(Config.NameServer.." / Discord", getTranslation("messageAfterDiscord"), 3000, 'info')
        Citizen.Wait(1000)
        exports['okokNotify']:Alert(Config.NameServer.." / Discord", getTranslation("pressF8"), 5000, 'info')


elseif Config.Notif == "brutal" then

        exports['brutal_notify']:SendAlert(Config.NameServer.." / Discord", Config.DiscordLink, 3000, 'info')
        Citizen.Wait(5000)
        exports['brutal_notify']:SendAlert(Config.NameServer.." / Discord", getTranslation("messageAfterDiscord"), 3000, 'info')
        Citizen.Wait(1000)
        exports['brutal_notify']:SendAlert(Config.NameServer.." / Discord", getTranslation("pressF8"), 5000, 'info')
    
    
elseif Config.Notif == "vms" then
        
        exports["vms_notify"]:Notification(Config.NameServer.." / Discord", Config.DiscordLink, 3000, "#1566e8", "fa-solid fa-user")
        Citizen.Wait(5000)
        exports["vms_notify"]:Notification(Config.NameServer.." / Discord", getTranslation("messageAfterDiscord"), 3000, "#1566e8", "fa-solid fa-user")
        Citizen.Wait(1000)
        exports["vms_notify"]:Notification(Config.NameServer.." / Discord", getTranslation("pressF8"), 5000, "#1566e8", "fa-solid fa-user")
   
elseif Config.Notif == "forge" then
       
        exports['forge-notify']:ShowNotification(Config.DiscordLink, 3000) 
        Citizen.Wait(5000)
        exports['forge-notify']:ShowNotification(getTranslation("messageAfterDiscord"), 3000)
        Citizen.Wait(1000)
        exports['forge-notify']:ShowNotification(getTranslation("pressF8"), 5000)
    
    
elseif Config.Notif == "none" then
        local function sendNotification(message)
            SetNotificationTextEntry("STRING")
            AddTextComponentString(message)
            DrawNotification(true, false)
        end

        sendNotification("~b~"..Config.DiscordLink)
        Citizen.Wait(5000)
        sendNotification("~b~"..getTranslation("messageAfterDiscord"))
        Citizen.Wait(1000)
        sendNotification('~b~'..getTranslation("pressF8"))
    end

    
    if Config.F8 == true then
        Citizen.CreateThread(function()
            print(getTranslation("discord") .. " : " .. Config.DiscordLink)
            Citizen.Wait(1000)
            print(getTranslation("acceptRules"))
            Citizen.Wait(1000)
            print(getTranslation("thanksSupport"))
            Citizen.Wait(1000)
            print(getTranslation("staff") .. " " .. Config.NameServer)
        end)
    end    
end, false)
