--!strict
--!optimize 2

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

local Hook = require(ReplicatedStorage.Hook)

local stepped = Hook.new()
local elapsed = 0
local secondId = 0

local firstId = stepped:add(function(dt)
	elapsed += dt
	if elapsed >= 1 then
		print("[HookDev] one second elapsed")
		stepped:remove(secondId)
	end
end)

secondId = stepped:add(function(dt)
	print(("[HookDev] second callback %.3f"):format(dt))
end)

RunService.Heartbeat:Connect(function(dt)
	stepped:fire(dt)

	if elapsed >= 2 then
		stepped:remove(firstId)
	end
end)

