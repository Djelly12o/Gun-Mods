-- I know skids like Zell will steal this cause it's open source but oh well.
local LP = game:GetService 'Players'.LocalPlayer
local USAF = {
    [645691660] = true,
    [1287003848] = true,
    [2393079927] = true,
    [4686909069] = true,
    [4641573792] = true,
    [4282086873] = true,
    [4435314355] = true,
    [4282067617] = true,
    [4282070813] = true
}

local annoyance = {
    645691660,
    1287003848,
    2393079927
    -- 4480472063, -- Redundant for various reasons.
    -- 1212001367, -- Redundant for various reasons.
}

function Notify(args)
    game:GetService 'StarterGui':SetCore("SendNotification", {Title = "[Slays Bot]", Text = args})
end

if not USAF[game.PlaceId] then
    Notify("Teleporting you to one of the right games.")
    wait(2)
    game:GetService 'TeleportService':Teleport(annoyance[math.random(#annoyance)]) -- Random place.
    return
end

-- Gun mod can be used for any gun kit that has a module, just got to make it yourself.
if not LP.Character:FindFirstChildWhichIsA 'Tool' or not LP.Character[LP.Character:FindFirstChildWhichIsA 'Tool'.Name]:FindFirstChildWhichIsA 'ModuleScript' then
    return Notify("You know you need to hold a gun right?")
else
    Notify(LP.Character:FindFirstChildWhichIsA 'Tool'.Name .. " has been modified!")
    local Stat = require(LP.Character:FindFirstChildWhichIsA 'Tool'.Configuration)
    Stat.Type = "GOD GUN" -- Aesthetic
    Stat.BulletType = "Holy Angelic Bullets" -- Aesthetic
    Stat.ClipSize = math.huge
    Stat.StartingStoredAmmo = math.huge
    Stat.KnockBackEffect = 9e9
    Stat.KnockBackEffectLength = 9e9
    Stat.BaseDamage = 9e9
    Stat.MinimumDamage = 9e9
    Stat.Spread = 0
    Stat.FireRate = 0
    Stat.ReloadTime = 0
end
