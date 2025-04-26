local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Net = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Net")
local RegisterAttackRemote = Net:WaitForChild("RE/RegisterAttack")
local RegisterHitRemote = Net:WaitForChild("RE/RegisterHit")

local m1 = 77
local m2 = 97
local part1 = string.char(m1, m2)

local msgBitsA = {100, 101, 32, 98}
local part2 = ""
for _, v in ipairs(msgBitsA) do part2 = part2 .. string.char(v) end

local mid1 = string.char(121, 32, 77, 114, 46)
local mid2 = string.char(32, 67, 111, 100, 101)

local msgBitsB = {114, 32, 109, 121, 32, 100, 105}
local part3 = ""
for _, v in ipairs(msgBitsB) do part3 = part3 .. string.char(v) end

local frag = string.char(115, 99, 111, 114, 100)
local extra = string.char(32, 117, 115, 101, 114)
local suffixBits = {110, 97, 109, 101, 32, 105}
local part4 = ""
for _, n in ipairs(suffixBits) do part4 = part4 .. string.char(n) end

local last = "s deathly_11"
local SessionToken = part1 .. part2 .. mid1 .. mid2 .. part3 .. frag .. extra .. part4 .. last

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

local function ClickAttackNearbyPlayer()
    local mouse = LocalPlayer:GetMouse()
    mouse.Button1Down:Connect(function()
        AttackClosestPlayerInRange(300)
    end)
end

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

print(SessionToken)
