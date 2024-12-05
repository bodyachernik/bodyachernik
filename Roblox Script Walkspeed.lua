black = Color3.new(0,0,0)
gray = Color3.new(0.196078, 0.196078, 0.196078)
white = Color3.new(255,255,255)
font = "Michroma"
local sg = Instance.new("ScreenGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
sg.Parent = game.Players.LocalPlayer.PlayerGui
sg.Name = "XptnGui"
sg.ResetOnSpawn = false
local fr = Instance.new("Frame")
local ui = Instance.new("UICorner")
fr.Parent = sg
fr.BackgroundColor3 = black
fr.Name = "Frame"
fr.Size = UDim2.new(0, 200,0, 130)
fr.Position = UDim2.new(0, 50,0, 50)
fr.Active = true
ui.Parent = fr
fr.Draggable = true

local ui2 = Instance.new("UICorner")
local tb2 = Instance.new("TextBox")
tb2.Parent = fr
tb2.BackgroundColor3 = gray
tb2.Active = true
tb2.Text = "16"
tb2.TextColor3 = white
tb2.Font = font
tb2.Size = UDim2.new(0, 190,0, 50)
tb2.Position = UDim2.new(0, 5,0, 5)
tb2.TextSize = 23
ui2.Parent = tb2

local tb = Instance.new("TextButton")
local ui1 = Instance.new("UICorner")
tb.Parent = fr
tb.BackgroundColor3 = gray
tb.Active = true
tb.AutoButtonColor = true
tb.Text = "Set Walkspeed"
tb.TextColor3 = white
tb.Font = font
tb.Size = UDim2.new(0, 190,0, 50)
tb.Position = UDim2.new(0, 5,0, 65)
tb.TextSize = 23
ui1.Parent = tb

local tx = Instance.new("TextLabel")
tx.Parent =  fr
tx.Transparency = 1
tx.Active = true
tx.Text = "by bogdanchernik"
tx.TextColor3 = white
tx.Font = font
tx.Size = UDim2.new(0, 200,0, 30)
tx.Position = UDim2.new(0, 0,0, 120)
tx.TextSize = 23
print("Thanks for using bogdanchernick's CheatGui")

tb.MouseButton1Click:Connect(function()
	if humanoid then
		local cws = humanoid.WalkSpeed
		cws = tb2.Text
		humanoid.WalkSpeed = cws
		print("Your walkspeed has been changed")
	else
		print("Error")
	end
end)
