local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/Library.lua"))()
if game.PlaceId == 18687417158 then
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer
	local RunService = game:GetService("RunService")
	local Workspace = game:GetService("Workspace")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local UserInputService = game:GetService("UserInputService")
	local VirtualUser = game:GetService("VirtualUser")
	local VIM = game:GetService("VirtualInputManager")
	local Lighting = game:GetService("Lighting")

	local InfiniteStamina = false
	local Noclipping = nil
	local Highlight = false
	local running = false
	local BypassCooldown = false
	local Dogens = false
	local loopty = false
	local Do1x1PopupsLoop = false

	local Waittime = 2.5
	local Randomness = 0

	function randomString()
		local length = math.random(10,20)
		local array = {}
		for i = 1, length do
			array[i] = string.char(math.random(32, 126))
		end
		return table.concat(array)
	end
	local function ESP(inst, color, size, text, isHighlight,FillTransparency)
		if isHighlight then
			local Highlight = Instance.new("Highlight")
			Highlight.Parent = inst
			Highlight.FillColor = color
			Highlight.FillTransparency = FillTransparency
			Highlight.OutlineTransparency = OutlineTransparency
			Highlight.Name = "L1"
		end

		local BillboardGui = Instance.new("BillboardGui")
		BillboardGui.AlwaysOnTop = true
		BillboardGui.Parent = inst
		BillboardGui.Size = UDim2.new(0, 25, 0, 7.5)
		BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
		BillboardGui.Name = "L2"

		local TextLabel = Instance.new("TextLabel")
		TextLabel.Text = text
		TextLabel.Font = Enum.Font.PatrickHand
		TextLabel.FontSize = Enum.FontSize.Size24
		TextLabel.TextColor3 = color
		TextLabel.BackgroundTransparency = 1
		TextLabel.Size = size
		TextLabel.Parent = BillboardGui
		TextLabel.Name = "L3"
		TextLabel.TextStrokeTransparency = 0
		TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)

		return Highlight, BillboardGui
	end
	floatName = randomString()
	local function NoclipLoop()
		if Clip == false and LocalPlayer.Character ~= nil then
			for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
				if v:IsA("BasePart") and v.CanCollide == true and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
	end
	local function AntiAFK()
		AntiAFKConnection = game.Players.LocalPlayer.Idled:Connect(function()
			VirtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			task.wait(1)
			VirtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
	end
	local function SkibidiGenerator(shouldLoop)
		while shouldLoop and running do
			loopty = true
			local FartNapFolder = workspace:FindFirstChild("Map")
				and workspace.Map:FindFirstChild("Ingame")
				and workspace.Map.Ingame:FindFirstChild("Map")
			if FartNapFolder then
				local closestGenerator, closestDistance = nil, math.huge
				local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
				for _, g in ipairs(FartNapFolder:GetChildren()) do
					if g.Name == "Generator" and g.Progress.Value < 100 then
						local distance = (g:GetPivot().Position - playerPosition).Magnitude
						if distance < closestDistance then
							closestDistance = distance
							closestGenerator = g
						end
					end
				end
				if closestGenerator then
					while closestGenerator.Progress.Value < 100 and loopty do
						if BypassCooldown then
							while
								closestGenerator.Progress.Value < 100
								and loopty
								and shouldLoop
								and Dogens
								and BypassCooldown
							do
								task.wait(0.5)
								closestGenerator.Remotes.RE:FireServer()
								task.wait(0.5)
								closestGenerator.Remotes.RF:InvokeServer("leave")
								if closestGenerator.Main:WaitForChild("Prompt", 1) then
									fireproximityprompt(closestGenerator.Main:WaitForChild("Prompt", 1))
								end
							end
						else
							task.wait(Waittime + math.random(0, Randomness))
							closestGenerator.Remotes.RE:FireServer()
							break
						end
					end
				else
					return
				end
			end
		end
		loopty = false
	end
	local function Do1x1x1x1Popups()
		while true do
			if Do1x1PopupsLoop then
				local player = game:GetService("Players").LocalPlayer
				local popups = player.PlayerGui.TemporaryUI:GetChildren()

				for _, i in ipairs(popups) do
					if i.Name == "1x1x1x1Popup" then
						local centerX = i.AbsolutePosition.X + (i.AbsoluteSize.X / 2)
						local centerY = i.AbsolutePosition.Y + (i.AbsoluteSize.Y / 2) + 50
						VIM:SendMouseButtonEvent(
							centerX,
							centerY,
							Enum.UserInputType.MouseButton1.Value,
							true,
							player.PlayerGui,
							1
						)
						VIM:SendMouseButtonEvent(
							centerX,
							centerY,
							Enum.UserInputType.MouseButton1.Value,
							false,
							player.PlayerGui,
							1
						)
					end
				end
			end
			task.wait(0.1)
		end
	end
	local Survivors = {
		["Guest1337"] = "访客",
		["Elliot"] = "披萨",
		["Noob"] = "菜鸟",
		["Shedletsky"] = "谢德",
		["Taph"] = "神秘炸弹男",
		["TwoTime"] = "两次",
		["Dusekkar"] = "法师",
		["Chance"] = "赌徒",
		["Builderman"] = "建造者",
		["007n7"] = "小屁孩他爹"
	}
	local Killers = {
		["JohnDoe"] = "约翰多",
		["1x1x1x1"] = "1x",
		["Jason"] = "杰森",
		["c00lkidd"] = "小屁孩",
		["PizzaDeliveryRig"] = "小屁孩分身"
	}
	local Item = {
		["BloxyCola"] = "可乐",
		["Medkit"] = "急救包",

	}
	local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/addons/ThemeManager.lua"))()
	local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/addons/SaveManager.lua"))()
	local Options = Library.Options
	Library.IsMobile = false
	if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled then
		Library.IsMobile = true
	else
		Library.IsMobile = false
	end
	Library:SetFont(Enum.Font.Gotham)
	Library.ShowToggleFrameInKeybinds = true
	local Window = Library:CreateWindow({
		Title = "灵构",
		Footer = "Game : "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.." 灵构脚本 | 版本 : V0.1.0.0",
		Center = true,
		MobileButtonsSide = "Right",
		NotifySide = "Right",
		Icon = 73663200681073,
		AutoShow = true
	})
	local Tab = {
		MaxinTab = Window:AddTab("主页","user"),
		MainTab = Window:AddTab("功能", "airplay"),
		ESPTab = Window:AddTab("透视", "aperture"),
		["设置"] = Window:AddTab("设置", "settings"),
	}
	local GroupBox = {
		MaxinTab = Tab.MaxinTab:AddLeftGroupbox("主要"),
		UpdateNotice = Tab.MaxinTab:AddRightGroupbox("更新公告"),
		ESPTab = Tab.ESPTab:AddLeftGroupbox("透视"),
		PlayersFunction = Tab.MainTab:AddLeftGroupbox("人物功能"),
		PlayersFunction2 = Tab.MainTab:AddRightGroupbox("功能"),
	}
	Library:Notify({
		Title = "提示",
		Description = "此脚本暂时未完成",
		Time = 10,
		SoundId = 3779045779
	})
	GroupBox.MaxinTab:AddLabel("作者: AC")
	GroupBox.MaxinTab:AddLabel("没做完")
	GroupBox.MaxinTab:AddDivider()
	GroupBox.MaxinTab:AddButton("复制Q群",{
		Text = "复制Q群",
		Func = function()
			setclipboard("996155023")
		end
	})
	GroupBox.MaxinTab:AddToggle("开启防挂机", {
        Text = "开启防挂机",
        Default = false,
        Callback = function(v)
            if v then     
                AntiAFK()   
            else
                if AntiAFKConnection then
                    AntiAFKConnection:Disconnect()
                    AntiAFKConnection = nil
                end
            end
        end,
    })
	GroupBox.UpdateNotice:AddLabel("更新内容: ")

	GroupBox.PlayersFunction:AddToggle("开启无限体力",{
		Text = "开启无限体力",
		Default = false,
		Callback = function(v)
			if v then
				local Script = require(ReplicatedStorage.Systems.Character.Game.Sprinting)
				InfiniteStamina = true
				while InfiniteStamina do
					task.wait(0.1)
					Script.StaminaLoss = 0
				end
			else
				InfiniteStamina = false
				task.wait(0.1)
				local Script = require(ReplicatedStorage.Systems.Character.Game.Sprinting)
				Script.StaminaLoss = 10
			end
		end,
	})
	GroupBox.PlayersFunction:AddToggle("开启跑步速度修改",{
		Text = "开启跑步速度修改",
		Default = false,
		Callback = function(v)
			local oldspeed = require(ReplicatedStorage.Systems.Character.Game.Sprinting).SprintSpeed
			if v then
				local Script = require(ReplicatedStorage.Systems.Character.Game.Sprinting)
				SpeedLol = RunService.Heartbeat:Connect(function()
					Script.SprintSpeed = Speed
				end)
			else
				local Script = require(ReplicatedStorage.Systems.Character.Game.Sprinting)
				Script.SprintSpeed = oldspeed
			end
		end,
	})
	GroupBox.PlayersFunction:AddSlider("速度修改", {
		Text = "速度修改",
		Default = 26,
		Min = 0,
		Max = 1000,
		Rounding = 1,
		Compact = false,
		Callback = function(v)
			Speed = v
		end
	})
	GroupBox.PlayersFunction:AddInput("速度修改", {
		Text = "速度修改",
		Default = 26,
		Numeric = true,
		Placeholder = "输入数字",
		Callback = function(v)
			Speed = v
		end
	})
	GroupBox.PlayersFunction:AddToggle("开启穿墙",{
		Text = "开启穿墙",
		Default = false,
		Callback = function(v)		
			Clip = false
			if v then
				Noclipping = RunService.Stepped:Connect(NoclipLoop)
			else
				if Noclipping then
					Noclipping:Disconnect()
				end
				Clip = true
			end
		end
	})
	GroupBox.PlayersFunction2:AddToggle("开启高亮",{
		Text = "开启高亮",
		Default = false,
		Callback = function(v)
			local time = Lighting.ClockTime
			if v then
				Highlight = true
				while Highlight do
					task.wait(0.1)
					Lighting.ClockTime = 12
				end
				DestroyAtmosphere = Lighting.ChildAdded:Connect(function(inst)
					if inst:IsA("Atmosphere") then
						inst:Destroy()
					end
				end)
				for _,v in ipairs(Lighting:GetChildren()) do
					if v.Name == "Atmosphere" and v:IsA("Atmosphere")then
						v:Destroy()
					end
				end
			else
				DestroyAtmosphere:Disconnect()
				Highlight = false
				Lighting.ClockTime = time
			end
		end
	})
	GroupBox.PlayersFunction2:AddToggle("开启自动修机",{
		Text = "开启自动修机",
		Default = false,
		Callback = function(v)
			running = v
			Dogens = v
			SkibidiGenerator(v)
		end,
	})
	GroupBox.PlayersFunction2:AddToggle("开启1x自动点",{
		Text = "开启1x自动点",
		Default = false,
		Callback = function(v)
			Do1x1PopupsLoop = v
			if v then
				task.spawn(Do1x1x1x1Popups)
			end
		end,
	})
	GroupBox.PlayersFunction2:AddLabel("最小0最大10")
	GroupBox.PlayersFunction2:AddInput("自动修时间间隔", {
        Text = "自动修时间间隔",
        Tooltip = "是等待时间",
        Default = ""..Waittime,
        Numeric = true,
        Placeholder = "输入数字",
        Callback = function(Value)
            Waittime = Value
        end
    })
	GroupBox.PlayersFunction2:AddInput("自动修随机性", {
        Text = "自动修随机性",
        Tooltip = "是等待时间",
        Default = ""..Randomness,
        Numeric = true,
        Placeholder = "输入数字",
        Callback = function(Value)
            Randomness = Value
        end
    })
	GroupBox.ESPTab:AddToggle("玩家透视", {
		Text = "玩家透视",
		Default = false,
		Callback = function(v)
			if v then
				ESPPlayers = Workspace.Players.Survivors.ChildAdded:Connect(function(inst)
					if Survivors[inst.Name] then
						ESP(inst, Color3.fromRGB(75, 146, 81), UDim2.new(1, 0, 1, 0), Survivors[inst.Name], true, 0.5)
					end
				end)
				for _,v in ipairs(Workspace.Players.Survivors:GetChildren()) do
					if Survivors[v.Name] then
						print(v.Name)
						ESP(v, Color3.fromRGB(75, 146, 81), UDim2.new(1, 0, 1, 0), Survivors[v.Name], true, 0.5)
					end
				end
			else
				ESPPlayers:Disconnect()
				for _,v in ipairs(Workspace.Players.Survivors:GetDescendants()) do
					if Survivors[v.Name] then
						if v:FindFirstChild("L1") then
							v.L1:Destroy()
						end
						if v:FindFirstChild("L2") then
							v.L2:Destroy()
						end
						if v:FindFirstChild("L3") then
							v.L3:Destroy()
						end
					end
				end
			end
		end,
	})
	GroupBox.ESPTab:AddToggle("杀手透视",{
		Text = "杀手透视",
		Default = false,
		Callback = function(v)
			if v then
				KillerESP = Workspace.Players.Killers.ChildAdded:Connect(function(inst)
					if Killers[inst.Name] then
						ESP(inst, Color3.fromRGB(255, 0, 0), UDim2.new(1, 0, 1, 0), Killers[inst.Name], true, 0.5)
					end
				end)
				for _,v in ipairs(Workspace.Players.Killers:GetChildren()) do
					if Killers[v.Name] then
						ESP(v, Color3.fromRGB(255, 0, 0), UDim2.new(1, 0, 1, 0), Killers[v.Name], true, 0.5)
					end
				end
			else
				KillerESP:Disconnect()
				for _,v in ipairs(Workspace.Players.Killers:GetDescendants()) do
					if Killers[v.Name] then
						if v:FindFirstChild("L1") then
							v.L1:Destroy()
						end
						if v:FindFirstChild("L2") then
							v.L2:Destroy()
						end
						if v:FindFirstChild("L3") then
							v.L3:Destroy()
						end
					end
				end
			end
		end,
	})
	GroupBox.ESPTab:AddToggle("物品透视",{
		Text = "物品透视",
		Default = false,
		Callback = function(v)
			if v then
				ItemESP = Workspace.Map.Ingame.ChildAdded:Connect(function(inst)
					if Item[inst.Name] then
						ESP(inst, Color3.fromRGB(0, 0, 255), UDim2.new(1, 0, 1, 0), Item[inst.Name], true, 0.5)
					end
				end)
				for _,v in ipairs(Workspace.Map.Ingame:GetChildren()) do
					if Item[v.Name] then
						ESP(v, Color3.fromRGB(0, 0, 255), UDim2.new(1, 0, 1, 0), Item[v.Name], true, 0.5)
					end
				end
			else
				ItemESP:Disconnect()
				for _,v in ipairs(Workspace.Map.Ingame:GetDescendants()) do
					if Item[v.Name] then
						if v:FindFirstChild("L1") then
							v.L1:Destroy()
						end
						if v:FindFirstChild("L2") then
							v.L2:Destroy()
						end
						if v:FindFirstChild("L3") then
							v.L3:Destroy()
						end
					end
				end
			end
		end,
	})
	GroupBox.ESPTab:AddToggle("发电机透视",{
		Text = "发电机透视",
		Default = false,
		Callback = function(v)
			if v then
				ItemESP = Workspace.Map.Ingame.Map.ChildAdded:Connect(function(inst)
					if inst.Name == "Generator" and inst:IsA("Model") then
						ESP(inst, Color3.fromRGB(0, 0, 255), UDim2.new(1, 0, 1, 0),"发电机", true, 0.5)
					end
				end)
				for _,v in ipairs(Workspace.Map.Ingame.Map:GetChildren()) do
					if v.Name == "Generator" and v:IsA("Model")then
						ESP(v, Color3.fromRGB(0, 0, 255), UDim2.new(1, 0, 1, 0),"发电机", true, 0.5)
					end
				end
			else
				ItemESP:Disconnect()
				for _,v in ipairs(Workspace.Map.Ingame.Map:GetDescendants()) do
					if v.Name == "Generator" and v:IsA("Model") then
						if v:FindFirstChild("L1") then
							v.L1:Destroy()
						end
						if v:FindFirstChild("L2") then
							v.L2:Destroy()
						end
						if v:FindFirstChild("L3") then
							v.L3:Destroy()
						end
					end
				end
			end
		end,
	})
	local MenuGroup = Tab["设置"]:AddLeftGroupbox("菜单")
	MenuGroup:AddToggle("按键绑定界面", {
		Default = Library.KeybindFrame.Visible,
		Text = "按键绑定界面",
		Callback = function(value)
			Library.KeybindFrame.Visible = value
		end,
	})
	MenuGroup:AddToggle("自定义鼠标", {
		Text = "自定义鼠标",
		Default = true,
		Callback = function(Value)
			Library.ShowCustomCursor = Value
		end,
	})
	MenuGroup:AddDropdown("通知方向", {
		Values = { "Left", "Right" },
		Default = "Right",
		Text = "通知方向",
		Callback = function(Value)
			Library:SetNotifySide(Value)
		end,
	})
	MenuGroup:AddDropdown("UI大小", {
		Values = { "50%", "75%", "100%", "125%", "150%", "175%", "200%" },
		Default = "100%",
		Text = "UI大小",
		Callback = function(Value)
			Value = Value:gsub("%%", "")
			local DPI = tonumber(Value)
			Library:SetDPIScale(DPI)
		end,
	})
	MenuGroup:AddDivider()
	MenuGroup:AddLabel("菜单按钮"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "菜单按钮" })
	MenuGroup:AddButton("关闭ui",{
		Text = "关闭Ui",
		Func = function()
			Library:Unload()
		end,
		DoubleClick = true
	})
	Library.ToggleKeybind = Options.MenuKeybind 
	ThemeManager:SetLibrary(Library)
	SaveManager:SetLibrary(Library)
	SaveManager:IgnoreThemeSettings()
	SaveManager:SetIgnoreIndexes({ "菜单按钮" })
	ThemeManager:SetFolder("大厅/themes")
	SaveManager:SetFolder("大厅/Forsaken-game")
	SaveManager:SetSubFolder("大厅/Forsaken数据") 
	SaveManager:BuildConfigSection(Tab["设置"])
	ThemeManager:ApplyToTab(Tab["设置"])
	SaveManager:LoadAutoloadConfig()
else
    Library:Notify({
        Title = "错误警告: ",
        Description = "请在正确的游戏内使用",
        Time = 10,
        SoundId = 3779045779
    })
end
