--[[
     Yet again reused code from my USAF gun mod script only I added extra features to this one.
     https://www.roblox.com/games/155615604 -- Prison Life
]]

local LP = game:GetService 'Players'.LocalPlayer
local Mouse = LP:GetMouse()

function Notify(args)
    game:GetService 'StarterGui':SetCore("SendNotification", {Title = "[Slays Bot]", Text = args})
end

Notify("Press Q to mod guns and T to get all guns.")

Mouse.KeyDown:connect(function(Input)
        if Input == "q" then
            if not LP.Character:FindFirstChildWhichIsA 'Tool' or not LP.Character[LP.Character:FindFirstChildWhichIsA 'Tool'.Name]:FindFirstChildWhichIsA 'ModuleScript' then
                return Notify("You know you need to hold a gun right?")
            else
                Notify(LP.Character:FindFirstChildWhichIsA 'Tool'.Name .. " has been modified!")
                local Stat = require(LP.Character:FindFirstChildWhichIsA 'Tool':FindFirstChildWhichIsA 'ModuleScript')
                Stat.Damage = 9e9
                Stat.MaxAmmo = math.huge
                Stat.CurrentAmmo = math.huge
                Stat.StoredAmmo = math.huge
                Stat.FireRate = 0
                Stat.AutoFire = true
                Stat.Range = 9e9
                Stat.Spread = 0
                Stat.ReloadTime = 0
                Stat.Bullets = 10
            end
        end

        if Input == "t" then
            for i, v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
                if v.Name == "Remington 870" or v.Name == "M9" or v.Name == "AK-47" then
                    workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
                end
            end
        end
    end)
