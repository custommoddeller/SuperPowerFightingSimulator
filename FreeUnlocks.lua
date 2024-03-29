getgenv().chestSpeed = true
getgenv().luckMultiplier = true

while task.wait() do
    if getgenv().chestSpeed then
        game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Multiplier"):InvokeServer(unpack({
            [1] = "LuckMultiplier",
            [2] = 0.9
        }))
    end
    if getgenv().luckMultiplier then
        game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Multiplier"):InvokeServer(unpack({
            [1] = "ChestSpeedMultiplier",
            [2] = 0.9
        }))
    end
end
