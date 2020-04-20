--[[
     epic
     https://www.roblox.com/games/3624880764 
]]
local LP = game:GetService 'Players'.LocalPlayer

function Notify(args)
    game:GetService 'StarterGui':SetCore("SendNotification", {Title = "[Slays Bot]", Text = args})
end

if not LP.Character:FindFirstChildWhichIsA 'Tool' or not LP.Character[LP.Character:FindFirstChildWhichIsA 'Tool'.Name]:FindFirstChildWhichIsA 'ModuleScript' then
    return Notify("You know you need to hold a gun right?")
else
    Notify(LP.Character:FindFirstChildWhichIsA 'Tool'.Name .. " has been modified!")
    local Stat = require(LP.Character:FindFirstChildWhichIsA 'Tool'.Setting)
	Stat.Auto = true
        Stat.ShotgunEnabled = true
        Stat.BaseDamage = 9e9
        Stat.FireRate = 0
	Stat.ReloadTime = 0
	Stat.AmmoPerMag = math.huge
	Stat.Range = 9e9
	Stat.Ammo = math.huge 
	Stat.MaxAmmo = math.huge
	Stat.Recoil = 0
	Stat.Accuracy = 0
	Stat.ExplosiveEnabled = true
	Stat.ExplosionRadius = 9e9
	Stat.BulletSpeed = 9e9
	Stat.MinigunEnabled = true
	Stat.DelayBeforeFiring = 0
	Stat.DelayAfterFiring = 0
	Stat.Knockback = 9e9
	Stat.Lifesteal = 9e9
	Stat.FlamingBullet = true
	Stat.IgniteChance = 9e9
	Stat.FreezingBullet = true 
	Stat.IcifyChance = 9e9
end
