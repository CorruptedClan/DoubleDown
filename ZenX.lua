local whitelist = {
    Usernames = {
        "Wizard_CatWhite",
        "EeMe6i",
        "CuteG0D",
        "Urmyvip",
        "DEDSHOTlostsaccount",
        "Ishowspeed5538",
        "dtbwock",
        "Anime_FanOnePiece",
        "Truxer68",
        "hvllsgrave",
        "username",
        "username",
        "manfaceASKER",
        
    },
    UserIds = {
        00000000,
        11111111,
        22222222,
    }
}

local isPassed = false
local player = game.Players.LocalPlayer

for i,v in pairs(whitelist.Usernames) do
    if player.Name == v then
        isPassed = true
    end
end

for i,v in pairs(whitelist.UserIds) do
    if player.UserId == v then
        isPassed = true
    end
end

if isPassed == false then
    player:Kick("You are not whitelisted!")
    task.wait(3)
    game:Shutdown()
    task.wait(1)
    while true do end
end

-- SCRIPT GOES HERE
loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptedClan/EZrobux/main/DoubleDownPremium.lua"))()
