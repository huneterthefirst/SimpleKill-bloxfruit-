local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Net = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Net")
local RegisterAttackRemote = Net:WaitForChild("RE/RegisterAttack")
local RegisterHitRemote = Net:WaitForChild("RE/RegisterHit")

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
			attackTargets[1][2], -- first NPC's part
			attackTargets,
			[4] = "756ab798", -- attack ID for NPC
			[5] = mode -- true = hold attack, false = tap
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
			[4] = "7566d5e3" -- attack ID for player
		}

		RegisterHitRemote:FireServer(unpack(args))
		RegisterAttackRemote:FireServer(0)
	end
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
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.B then
		holdingB = false
	elseif input.KeyCode == Enum.KeyCode.N then
		holdingN = false
	end
end)
