autoClicker = false
autoRebirth = false


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Rebirth Champions X [RCX]", "GrapeTheme")

local a = Window:NewTab("Main")
local b = Window:NewTab("Eggs")
local c = Window:NewTab("Misc")
local d = Window:NewTab("Settings")
local e = Window:NewTab("Credits")

local a1 = a:NewSection("Autoclicker")
a1:NewToggle("Autoclicker", "An autoclicker", function(state)
    if state then
        getgenv().autoClicker = true
while getgenv().autoClicker == true do
   game:GetService("ReplicatedStorage").Events.Click3:FireServer()
   task.wait()
end
    else
        autoClicker = false
    end
end)
