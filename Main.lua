autoClicker = false
autoRebirth = false


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Rebirth Champions X [RCX]", "GrapeTheme")

local a = Window:NewTab("Main")
local b = Window:NewTab("Eggs")
local c = Window:NewTab("Misc")
local d = Window:NewTab("Settings")

local a1 = a:NewSection("Autoclicker")
a1:NewToggle("Autoclicker", "An autoclicker", function(state)
    if state then
        autoClicker = true
while autoClicker == true do
   game:GetService("ReplicatedStorage").Events.Click3:FireServer()
   task.wait()
end
    else
        autoClicker = false
    end
end)

local a2 = a:NewSection("Remote")
a2:NewButton("World Boost", "250,000x World Boost", function()
    local worldBoost250kx = { [1] = "75M" }
    game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer(unpack(worldBoost250kx))
    print("250,000x World Boost was given!")
end)


