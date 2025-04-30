local KeySystem = loadstring(game:HttpGet("https://raw.githubusercontent.com/OopssSorry/LuaU-Free-Key-System-UI/main/source.lua"))()
local KeyValid = false

local response = KeySystem:Init({
    Debug=false,
    Title="Kuromi Loader | Key System",
    Description=nil,
    Link="https://link-center.net/601123/femware-scripts",
    Discord="https://discord.gg/dgNSwK2rK5",
    SaveKey=false,
    Verify=function(key)
        if key=="X7F2K9LQW3PAM8ZT" then
            KeyValid=true
            return true
        else
            return false
        end
    end,
    GuiParent = game.CoreGui,
})

if response and KeyValid then
    -- Eğer key doğrulandıysa, ikinci script'i yükle
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Mangnex/Lunar-Hub/refs/heads/main/FreeLoader"))()
else
    warn("WRONG KEY BRONIDE!")
end
