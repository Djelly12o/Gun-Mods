--[[
     Yet again reused code from my USAF gun mod script.
     https://www.roblox.com/games/4614535106 -- Iran game "AlLaHu aKbAr DURRR"
]]

local LP = game:GetService 'Players'.LocalPlayer

function Notify(args)
    game:GetService 'StarterGui':SetCore("SendNotification", {Title = "[Slays Bot]", Text = args})
end

if not LP.Character:FindFirstChildWhichIsA 'Tool' or not LP.Character[LP.Character:FindFirstChildWhichIsA 'Tool'.Name].ConfigMods:FindFirstChild("CConfig") then
    return Notify("You know you need to hold a gun right?")
else
    Notify(LP.Character:FindFirstChildWhichIsA 'Tool'.Name .. " has been modified!")
    local Stat = require(LP.Character:FindFirstChildWhichIsA 'Tool'.ConfigMods:FindFirstChild("CConfig"))
    Stat.BaseDamage = 9e9 
	Stat.LimbDamage = 9e9
	Stat.ArmorDamage = 9e9 
	Stat.HeadDamage = 9e9 
	Stat.EShieldDamage = 9e9
	Stat.Ammo = math.huge
    Stat.StoredAmmo = math.huge
    Stat.Firerate = 0
    Stat.FireMode = 1
	Stat.BurstEnabled = true
 -- Stat.BulletSpeed = 9e9 -- Change at the risk of it not hitting.
    Stat.BurstNum = 3 
    Stat.ShotNum = 10 
    Stat.SprintWalkIntensity = 0
    Stat.CamShakeMin = 0 
	Stat.CamShakeMax = 0 
	Stat.AimCanShakeMin = 0 
    Stat.AimCamShakeMax = 0 
    Stat.gunRecoilMin = 0 
	Stat.gunRecoilMax = 0 
	Stat.AimGunRecoilMin = 0
    Stat.AimGunRecoilMax = 0 
	Stat.KickbackMin = 0
	Stat.KickbackMax = 0 
	Stat.AimKickbackMin = 0 
	Stat.AimKickbackMax = 0
	Stat.SideKickMin = 0 
	Stat.SideKickMax = 0
	Stat.AimSideKickMin = 0
	Stat.AimSideKickMax = 0 
    Stat.AntiTK = false
end