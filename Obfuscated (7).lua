-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Cstart = Instance.new("TextButton")
local Cstop = Instance.new("TextButton")
local Rstart = Instance.new("TextButton")
local Rstop = Instance.new("TextButton")
local Autof = Instance.new("TextButton")
local top = Instance.new("Frame")
local Roundify = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.356792152, 0, 0.313718379, 0)
Frame.Size = UDim2.new(0, 273, 0, 290)

Cstart.Name = "Cstart"
Cstart.Parent = Frame
Cstart.BackgroundColor3 = Color3.fromRGB(255, 0, 68)
Cstart.BorderSizePixel = 0
Cstart.Position = UDim2.new(0.0528658256, 0, 0.149965763, 0)
Cstart.Size = UDim2.new(0, 95, 0, 35)
Cstart.Font = Enum.Font.SourceSansBold
Cstart.Text = "Auto Points Start"
Cstart.TextColor3 = Color3.fromRGB(255, 255, 255)
Cstart.TextSize = 14.000

Cstop.Name = "Cstop"
Cstop.Parent = Frame
Cstop.BackgroundColor3 = Color3.fromRGB(255, 0, 68)
Cstop.BorderSizePixel = 0
Cstop.Position = UDim2.new(0.59858793, 0, 0.149965763, 0)
Cstop.Size = UDim2.new(0, 95, 0, 35)
Cstop.Font = Enum.Font.SourceSansBold
Cstop.Text = "Auto Points Stop"
Cstop.TextColor3 = Color3.fromRGB(255, 255, 255)
Cstop.TextSize = 14.000

Rstart.Name = "Rstart"
Rstart.Parent = Frame
Rstart.BackgroundColor3 = Color3.fromRGB(255, 0, 68)
Rstart.BorderSizePixel = 0
Rstart.Position = UDim2.new(0.0528658256, 0, 0.394793361, 0)
Rstart.Size = UDim2.new(0, 95, 0, 35)
Rstart.Font = Enum.Font.SourceSansBold
Rstart.Text = "Auto Rebirth Start"
Rstart.TextColor3 = Color3.fromRGB(255, 255, 255)
Rstart.TextSize = 14.000

Rstop.Name = "Rstop"
Rstop.Parent = Frame
Rstop.BackgroundColor3 = Color3.fromRGB(255, 0, 68)
Rstop.BorderSizePixel = 0
Rstop.Position = UDim2.new(0.594990373, 0, 0.394793361, 0)
Rstop.Size = UDim2.new(0, 95, 0, 35)
Rstop.Font = Enum.Font.SourceSansBold
Rstop.Text = "Auto Rebirth Stop"
Rstop.TextColor3 = Color3.fromRGB(255, 255, 255)
Rstop.TextSize = 14.000

Autof.Name = "Autof"
Autof.Parent = Frame
Autof.BackgroundColor3 = Color3.fromRGB(255, 0, 68)
Autof.BorderSizePixel = 0
Autof.Position = UDim2.new(0.323928118, 0, 0.636172652, 0)
Autof.Size = UDim2.new(0, 95, 0, 35)
Autof.Font = Enum.Font.SourceSansBold
Autof.Text = "Autofarm"
Autof.TextColor3 = Color3.fromRGB(255, 255, 255)
Autof.TextSize = 14.000

top.Name = "top"
top.Parent = Frame
top.BackgroundColor3 = Color3.fromRGB(255, 0, 68)
top.BorderSizePixel = 0
top.Position = UDim2.new(-0.00218221545, 0, -7.47144222e-05, 0)
top.Size = UDim2.new(0, 273, 0, 14)

Roundify.Name = "Roundify"
Roundify.Parent = top
Roundify.AnchorPoint = Vector2.new(0.5, 0.5)
Roundify.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Roundify.BackgroundTransparency = 1.000
Roundify.Position = UDim2.new(0.500013411, 0, 1.21919692, 0)
Roundify.Size = UDim2.new(0.985320926, 4, 0.956979215, 4)
Roundify.Image = "rbxassetid://3570695787"
Roundify.ImageColor3 = Color3.fromRGB(255, 0, 68)
Roundify.ScaleType = Enum.ScaleType.Slice
Roundify.SliceCenter = Rect.new(100, 100, 100, 100)
Roundify.SliceScale = 0.167

Title.Name = "Title"
Title.Parent = top
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.244897053, 0, -0.20912388, 0)
Title.Size = UDim2.new(0, 139, 0, 31)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Supers CTG gui"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 24.000

-- Scripts:

local function DZZC_fake_script() -- Cstart.LocalScript 
	local script = Instance.new('LocalScript', Cstart)

	oof = false
	Frame = script.Parent.Parent
	button = script.Parent
	
	button.MouseButton1Down:Connect(function()
		_G.On = true
		while _G.On == true do
			wait()
			local Event = game:GetService("Workspace").Events.AddPoints
			Event:FireServer()
		end
	end)
end
coroutine.wrap(DZZC_fake_script)()
local function XIUOCOP_fake_script() -- Cstop.LocalScript 
	local script = Instance.new('LocalScript', Cstop)

	oof = false
	Frame = script.Parent.Parent
	button = script.Parent
	
	button.MouseButton1Down:Connect(function()
		_G.On = oof
		while _G.On == true do
			wait()
			local Event = game:GetService("Workspace").Events.AddPoints
			Event:FireServer()
		end
	end)
end
coroutine.wrap(XIUOCOP_fake_script)()
local function QLJAR_fake_script() -- Rstart.LocalScript 
	local script = Instance.new('LocalScript', Rstart)

	oof = false
	Frame = script.Parent.Parent
	button = script.Parent
	
	button.MouseButton1Down:Connect(function()
		_G.On = true
		while _G.On == true do
			wait(1.6)
			local Event = game:GetService("Workspace").Events.Prestige
			Event:FireServer()
		end
	end)
end
coroutine.wrap(QLJAR_fake_script)()
local function ALIQGB_fake_script() -- Rstop.LocalScript 
	local script = Instance.new('LocalScript', Rstop)

	oof = false
	Frame = script.Parent.Parent
	button = script.Parent
	
	button.MouseButton1Down:Connect(function()
		_G.On = oof
		while _G.On == true do
			wait(1)
			local Event = game:GetService("Workspace").Events.Prestige
			Event:FireServer()
		end
	end)
end
coroutine.wrap(ALIQGB_fake_script)()
local function SJQHJVX_fake_script() -- Autof.LocalScript 
	local script = Instance.new('LocalScript', Autof)

	oof = false
	Frame = script.Parent.Parent
	button = script.Parent
	
	button.MouseButton1Down:Connect(function()
		while true do
			_G.On = true
			while _G.On == true do
				wait()
				local Event = game:GetService("Workspace").Events.AddPoints
				Event:FireServer()
			end
			wait()
			while true do
				wait(10)
				local Event = game:GetService("Workspace").Events.Prestige
				Event:FireServer()
			end
		end
	end)
end
coroutine.wrap(SJQHJVX_fake_script)()
local function PPTZT_fake_script() -- Frame.drag 
	local script = Instance.new('LocalScript', Frame)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(PPTZT_fake_script)()
