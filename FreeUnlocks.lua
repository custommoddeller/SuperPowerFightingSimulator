function increaseLuck(t)
    for = 1, t do
        game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Multiplier"):InvokeServer(unpack({
            [1] = "LuckMultiplier",
            [2] = 0.9
        }))
    end
end

function increaseCSM(t)
    for = 1, t do
        game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Multiplier"):InvokeServer(unpack({
            [1] = "ChestSpeedMultiplier",
            [2] = 0.9
        }))
    end
end

local creditThing = Instance.new("BindableFunction")

function creditThing.OnInvoke(response)
    if response == "Copy" then
        setclipboard("astria5")
    end
end

--[[game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Made by astria5";
	Text = "Credits to astria5 for making the script";
	Duration = 5;
	Button1 = "Copy username";
	Button2 = "Dismiss";
})--]]

task.spawn(function()
    while task.wait() do
        if getgenv().luckMultiplier then
            increaseLuck(getgenv().speed_MAY_INCREASE_LAG_IF_TOO_HIGH)
        end
        if getgenv().chestSpeed then
            increaseCSM(getgenv().speed_MAY_INCREASE_LAG_IF_TOO_HIGH)
        end
    end
end)
