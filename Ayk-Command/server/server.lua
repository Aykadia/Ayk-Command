local resourceName = " [ Aykadia Script ]"
local Message = " Thanks for using this script ! "
local versioncheck = " New Version : "
local NewVersion = " 1.0.0 -- download it from gituhub "
local version = " 1.0.0"
local symbols = "---------------------------------------"
local espace = " "

Citizen.CreateThread(function()

    Citizen.Wait(10000)
    print(espace)
    print('^9'..symbols..'')
    print('^3'..resourceName..'')
    print(espace)
    print('^0'..' Current Version -- '..'^1'..version..'')
    print('^0'..versioncheck..'^2'..NewVersion..'')
    print(espace)
    print('^0'.." News : First Version")
    print(espace)
    print('^2'..Message..'')
    print('^9'..symbols..'')
    print('^0'..espace..'')

end)