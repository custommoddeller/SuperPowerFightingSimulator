function increaseX(x: String, t: Number)
    for = 1, t do
        game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Multiplier"):InvokeServer(unpack({
            [1] = x,
            [2] = 0.9
        }))
    end
end

local creditThing = Instance.new("BindableFunction")

function creditThing.OnInvoke(response)
    if response == "Copy username" then
        setclipboard("astria5")
    end
end

game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Made by astria5";
	Text = "Credits to astria5 for making the script";
	Duration = 5;
	Button1 = "Copy";
	Button2 = "Dismiss";
})

task.spawn(function()
    while task.wait() do
        if getgenv().luckMultiplier then
            increaseX("LuckMultiplier", getgenv().speed_MAY_INCREASE_LAG_IF_TOO_HIGH)
        end
        if getgenv().chestSpeed then
            increaseX("ChestSpeedMultiplier", getgenv().speed_MAY_INCREASE_LAG_IF_TOO_HIGH)
        end
    end
end)
