--GAME LINK: https://www.roblox.com/games/2619187362/Super-Power-Fighting-Simulator

while task.wait() do
    game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Multiplier"):InvokeServer(unpack({
        [1] = "LuckMultiplier",
        [2] = 0.9
    }))
    game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Multiplier"):InvokeServer(unpack({
        [1] = "ChestSpeedMultiplier",
        [2] = 0.9
    }))
end
