if _G.keyss == nil then
    game.Players.LocalPlayer:Kick("nice try")
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Galaxy Hub - Build A Boat For Treasure", HidePremium = false, SaveConfig = true, IntroEnabled=false})


OrionLib:MakeNotification({
	Name = "Loaded!",
	Content = "GalaxyHub loaded sucessfully.",
	Image = "rbxassetid://4483345998",
	Time = 5
})


--VARIABLES
local autofarm = false
local oldautofarm = false
local autobuy = false
local chesttype = ''
local opendelay = 1

function checkauth()
while true do
    local Response = syn.request({
    Url = "http://galaxy-hub.gay/authenticate",
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = game:GetService("HttpService"):JSONEncode({
        key=_G.keyss,
        userid=tostring(game.Players.LocalPlayer.UserId),
        gameid=tostring(game.PlaceId)
        })
    })
    print(Response.Body)
    if Response.Body == nil then
        game.Players.LocalPlayer:Kick("stop trying to crack a lego hub nigger")
    end

    if Response.Body == "user authenticated" then
        wait()
    else
        game.Players.LocalPlayer:Kick("yea so the api is like having a stroke")
    end
    
    wait(60)
    end
end
local co = coroutine.create(checkauth)
coroutine.resume(co)
--FUNCTIONS
function AutoFarm()
    game.Players.LocalPlayer.Character.Head:Destroy()
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        if autofarm == true then
        game.workspace.Gravity = 0.5
        wait(2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame * CFrame.new(0,5,-50)
            wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage2.DarknessPart.CFrame * CFrame.new(0,5,-50)
            wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage3.DarknessPart.CFrame * CFrame.new(0,5,-50)
            wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage4.DarknessPart.CFrame * CFrame.new(0,5,-50)
            wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage5.DarknessPart.CFrame * CFrame.new(0,5,-50)
            wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage6.DarknessPart.CFrame * CFrame.new(0,5,-50)
            wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage7.DarknessPart.CFrame * CFrame.new(0,5,-50)
            wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage8.DarknessPart.CFrame * CFrame.new(0,5,-50)
            wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage9.DarknessPart.CFrame * CFrame.new(0,5,-50)
            wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage10.DarknessPart.CFrame * CFrame.new(0,5,-50)
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.TheEnd.GoldenChest.Trigger. CFrame * CFrame.new(0,5,0)
        end
    end)
end

function OldAutoFarm()
    game.Players.LocalPlayer.Character.Head:Destroy()
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
    if oldautofarm == true then
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11)
        wait(2)
        game.workspace.Gravity = 0
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-51.1823959, 80.6168747, -536.437805)
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(30, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"), tweenInfo, {CFrame = CFrame.new(-60.5737877, 53.9498825, 8666.35059)})
        tween:Play()
        wait(32)
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
        tween2 =tweenService:Create(game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),tweenInfo, {CFrame = CFrame.new(-55.5486526, -360.063782, 9489.0498)})
        tween2:Play()
        wait(15)
        game.workspace.Gravity = 196.2
        end
    end)
end


--AUTOFARM TAB
local Tab = Window:MakeTab({Name = "Autofarm", Icon = "rbxassetid://4483345998", PremiumOnly = false})
local Section3 = Tab:AddSection({Name = "Info"})
local Section2 = Tab:AddSection({Name = "Autofarms"})

Section3:AddParagraph("AutoFarm","Autofarm [BETA] is a newer version of the autofarm, more effective but riskier. If you want to be as safe as possible use AutoFarm [SAFER]!")
Section2:AddToggle({
	Name = "AutoFarm [BETA]",
	Default = false,
	Callback = function(Value)
		if Value == true then
            autofarm = true           
            while autofarm == true do
                AutoFarm()
            end
        else
            game.workspace.Gravity = 196.2
            autofarm = false
        end
	end    
})

Section2:AddToggle({
	Name = "AutoFarm [SAFER]",
	Default = false,
	Callback = function(Value)
		if Value == true then
            oldautofarm = true           
            while oldautofarm == true do
                OldAutoFarm()
            end
        else
            game.Players.LocalPlayer.Character.Head:Destroy()
            oldautofarm = false
        end
	end
})

-- CHESTS TAB
local Tab4 = Window:MakeTab({Name = "Chests", Icon = "rbxassetid://4483345998", PremiumOnly = false})
local Section6 = Tab4:AddSection({Name = "Chests"})

Section6:AddDropdown({
	Name = "Chest Type",
	Default = "Common Chest",
	Options = {"Common Chest", "Uncommon Chest", "Rare Chest", "Epic Chest", "Legendary Chest"},
	Callback = function(Value)
        chesttype=Value
	end
})

Section6:AddSlider({
	Name = "Delay",
	Min = 0.5,
	Max = 20,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Seconds",
	Callback = function(Value)
		opendelay = tonumber(Value)
	end    
})

Section6:AddToggle({
	Name = "Auto Buy",
	Default = false,
	Callback = function(Value)
        if Value == true then
            autobuy = true
            while autobuy == true do
                local args = {
                    [1] = chesttype,
                    [2] = 1
                }
            workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
            wait(opendelay)
            end
        else
            autobuy = false
        end
    end
})


--TELEPORTS TAB
local Tab5 = Window:MakeTab({Name = "Teleports", Icon = "rbxassetid://4483345998", PremiumOnly = false})
local Section4 = Tab5:AddSection({Name = "Zones"})

Section4:AddButton({
	Name = "Blue",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Really blueZone"].CFrame * CFrame.new(0,5,0)
  	end    
})

Section4:AddButton({
	Name = "Black",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BlackZone.CFrame * CFrame.new(0,5,0)
  	end    
})

Section4:AddButton({
	Name = "Purple",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MagentaZone.CFrame * CFrame.new(0,5,0)
  	end    
})

Section4:AddButton({
	Name = "Yellow",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["New YellerZone"].CFrame * CFrame.new(0,5,0)
  	end    
})

Section4:AddButton({
	Name = "Green",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").CamoZone.CFrame * CFrame.new(0,5,0)
  	end    
})

Section4:AddButton({
	Name = "White",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").WhiteZone.CFrame * CFrame.new(0,5,0)  	
    end    
})



local Tab8 = Window:MakeTab({Name = "Misc", Icon = "rbxassetid://4483345998", PremiumOnly = false})
local Section23 = Tab8:AddSection({Name = "Misc"})

Section23:AddButton({
	Name = "Join Discord",
	Callback = function()
        local Module = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()
        Module.Join("xnnK47Uu6t")
  	end    
})

Section23:AddParagraph("Credits","!EwItsCaydon<3#0001 / imandrewyo#3433")
