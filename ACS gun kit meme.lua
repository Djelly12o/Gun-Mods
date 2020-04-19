-- Secure gun kit? Never heard of one LOL!
local LP = game:GetService 'Players'.LocalPlayer

function Notify(args)
    game:GetService 'StarterGui':SetCore("SendNotification", {Title = "[Slays Bot]", Text = args})
end

if not LP.Character:FindFirstChildWhichIsA 'Tool' or not LP.Character[LP.Character:FindFirstChildWhichIsA 'Tool'.Name]["ACS_Modulo"]:FindFirstChildWhichIsA 'ModuleScript' then
    return Notify("You know you need to hold a gun right?")
else
    Notify(LP.Character:FindFirstChildWhichIsA 'Tool'.Name .. " has been modified!")
    local Stat = require(LP.Character:FindFirstChildWhichIsA 'Tool'["ACS_Modulo"].Variaveis.Settings)
	Stat.Name = "God Gun"
    Stat.BulletType = "Holy Angelic Bullets"
    Stat.FireModes = {ChangeFiremode = true, Semi = true, Burst = true, Auto = true, Explosive = true}
	Stat.ExplosiveHit = true
	Stat.ExPressure = 9e9
	Stat.ExpRadius = math.huge
	Stat.ExplosionDamage = math.huge
	Stat.Ammo = math.huge 
	Stat.Bullets = 8
	Stat.FireRate = 0
	Stat.Mode = "Auto"
	Stat.AutoChamber = true 
	Stat.AimRecoilReduction = 9e9
	Stat.MinSpread = 0
	Stat.MaxSpread = 0
	Stat.AimInaccuracyStepAmount = 0
	Stat.WalkMultiplier = 0
	Stat.SwayBase = 0
	Stat.MaxSway = 0
	Stat.LimbsDamage = { 9e9, 9e9 }
	Stat.TorsoDamage = { 9e9, 9e9 }
	Stat.HeadDamage = { 9e9, 9e9 } 
	Stat.BulletPenetration = 100 
	Stat.FallOfDamage = 0
	Stat.Distance = 9e9 
	Stat.FastReload = true 
	Stat.CanBreak = false 
	Stat.RainbowMode = true
end