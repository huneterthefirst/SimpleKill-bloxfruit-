local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Net = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Net")
local RegisterAttackRemote = Net:WaitForChild("RE/RegisterAttack")
local RegisterHitRemote = Net:WaitForChild("RE/RegisterHit")

-- Disguised secret message (split like a session token)
local sessionPartA = "77\\97\\100\\101\\32\\98\\121"
local sessionPartB = "32\\77\\114\\46\\32\\67\\111\\100\\101"
local sessionPartC = "\\114\\32\\109\\121\\32\\100\\105\\115"
local sessionPartD = "\\99\\111\\114\\100\\32\\117\\115\\101"
local sessionPartE = "\\114\\110\\97\\109\\101\\32\\105\\115"
local sessionPartF = "\\32\\100\\101\\97\\116\\104\\108\\121"
local sessionPartG = "\\95\\49\\49\\"

local fullSessionToken = sessionPartA..sessionPartB..sessionPartC..sessionPartD..sessionPartE..sessionPartF..sessionPartG

local secret = ""
for num in string.gmatch(fullSessionToken, "(%d+)\\") do
    secret = secret .. string.char(tonumber(num))
end

print(secret) -- Optional: remove if stealth is necessary

-- Attack all NPCs in range
local function AttackNpcsInRange(range, mode)
    local enemiesFolder = Workspace:FindFirstChild("Enemies")
    if not enemiesFolder then return end

    local attackTargets = {}

    for _, enemy in pairs(enemiesFolder:GetChildren()) do
        if enemy:IsA("Model") and enemy.PrimaryPart then
            local distance = (enemy.PrimaryPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if distance <= range then
                table.insert(attackTargets, { enemy, enemy.PrimaryPart })
            end
        end
    end

    if #attackTargets > 0 then
        local args = {
            attackTargets[1][2],
            attackTargets,
            [4] = "756ab798",
            [5] = mode
        }

        RegisterHitRemote:FireServer(unpack(args))
        RegisterAttackRemote:FireServer(0)
    end
end

-- Attack closest player using custom structure
local function AttackClosestPlayerInRange(range)
    local closestPlayer
    local closestDistance = range

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("LeftLowerLeg") then
            local part = player.Character.LeftLowerLeg
            local distance = (part.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if distance <= closestDistance then
                closestPlayer = player
                closestDistance = distance
            end
        end
    end

    if closestPlayer then
        local targetPart = closestPlayer.Character.LeftLowerLeg

        local args = {
            targetPart,
            {},
            [4] = "7566d5e3"
        }

        RegisterHitRemote:FireServer(unpack(args))
        RegisterAttackRemote:FireServer(0)
    end
end

-- Click to attack nearby player
local function ClickAttackNearbyPlayer()
    local mouse = LocalPlayer:GetMouse()
    mouse.Button1Down:Connect(function()
        AttackClosestPlayerInRange(300)
    end)
end

-- Key handling
local holdingB = false
local holdingN = false

task.spawn(function()
    while true do
        if holdingB then
            AttackNpcsInRange(1000, false)
        elseif holdingN then
            AttackClosestPlayerInRange(1000)
        end
        task.wait()
    end
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    if input.KeyCode == Enum.KeyCode.B then
        holdingB = true
    elseif input.KeyCode == Enum.KeyCode.N then
        holdingN = true
    elseif input.KeyCode == Enum.KeyCode.M then
        ClickAttackNearbyPlayer()
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.B then
        holdingB = false
    elseif input.KeyCode == Enum.KeyCode.N then
        holdingN = false
    end
end)
