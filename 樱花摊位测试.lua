local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local VirtualUser = game:GetService("VirtualUser")
local UserInputService = game:GetService("UserInputService")
local Masterr = ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("UpgradeMas")
local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
local Need
local Need2
local Need3
local Need4

local Noclipping = nil
local Master = false
local KillAnimCash = false
local AutoSell = false
local KillAnimToken = false
local SkinAnimRoll = false
function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end
floatName = randomString()
local DIs = 20
local idk = {
    ["Fishbone"] = "诅咒",
    ["Frog Hollow"] = "诅咒",
    ["Glutton Curse"] = "诅咒",
    ["Paper Curse"] = "纸张",
    ["Mosquito Curse"] = "诅咒",
    ["Thug"] = "人",
    ["Contorted Curse"] = "诅咒",
    ["Bandit"] = "人", 
    ["Paper Curse Half"] = "小纸张",
    ["Paper Curse Quarter"] = "小小纸张",
}
local boss = {
    ["Jotaro Kujo"] = "",
    ["Mimicry"] = "",
    ["Menos"] = "大诅咒",
    ["Spider Curse"] = "",
    ["Adjuchas"] = "",
    ["Toji"] = "甚尔",
    ["The Red Mist"] = "",
    ["Deku"] = "绿谷",
    ["Roland"] = "罗兰",
}
local item = {
    ["Durandal"] = "",
    ["Zelkova"] = "",
    ["AngelicaWeak"] = "",
}
local function ESP(inst, color, size, text, isHighlight,FillTransparency,OutlineTransparency)
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
local function instantInteract()
    for _, v in ipairs(workspace:GetDescendants()) do
        if v:IsA("ProximityPrompt") then
            v.HoldDuration = 0
        end
    end
    ProximityPromptConnection = workspace.DescendantAdded:Connect(function(descendant)
        if descendant:IsA("ProximityPrompt") then
            descendant.HoldDuration = 0
        end
    end)
end
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/addons/SaveManager.lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/Library.lua"))()
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
    Title = "樱花摊位",
    Footer = "V1.1.0",
    Center = true,
    MobileButtonsSide = "Right",
    NotifySide = "Right",
    Icon = 73663200681073,
    AutoShow = true
})
Library:Notify({
    Title = "通知",
    Description = "推荐私服",
    Time = 5
})
local Tab = {
    PlayerTab = Window:AddTab("人物功能","user"),
    MainTab = Window:AddTab("功能", "airplay"),
    PlayerData = Window:AddTab("玩家数据","user"),
    RollAnim = Window:AddTab("抽奖",""), 
    ["设置"] = Window:AddTab("设置", "settings"),
}
local GroupBox = {
    Kill = Tab.MainTab:AddLeftGroupbox("杀戮光环"),
    Mastery = Tab.MainTab:AddLeftGroupbox("精通"),
    PlayersFunction = Tab.PlayerTab:AddLeftGroupbox("玩家速度"),
    PlayerData = Tab.PlayerData:AddLeftGroupbox("玩家数据"),
    Telp = Tab.MainTab:AddLeftGroupbox("传送"),
    KillAnim = Tab.RollAnim:AddLeftGroupbox("击杀动画抽奖"),
    SkinAnim = Tab.RollAnim:AddRightGroupbox("皮肤抽奖"),
    ESP = Tab.MainTab:AddRightGroupbox("透视")

}
local Label = {
    Mastery = GroupBox.PlayerData:AddLabel("玩家精通: "..LocalPlayer.Data.Mastery.Value),
    Token = GroupBox.PlayerData:AddLabel("玩家红币: "..LocalPlayer.Data.Token.Value),
    Fingers = GroupBox.PlayerData:AddLabel("玩家手指: "..LocalPlayer.Data.Fingers.Value),
    Cash = GroupBox.PlayerData:AddLabel("玩家马内: "..LocalPlayer.Data.Cash.Value),
    Soul = GroupBox.PlayerData:AddLabel("玩家灵魂: "..LocalPlayer.Data.Soul.Value),
    Worth = GroupBox.PlayerData:AddLabel("玩家荣誉: "..LocalPlayer.Data.Worth.Value),
    BP = GroupBox.PlayerData:AddLabel("玩家BP: "..LocalPlayer.Data.BP.Value),
    Oops = GroupBox.SkinAnim:AddLabel("没座")
}
local itemloot = Tab.MainTab:AddRightTabbox()
local itemLoot = itemloot:AddTab("物品掉落")
local Fast = itemloot:AddTab("快速区")

GroupBox.PlayersFunction:AddToggle("开启玩家速度",{
	Text = "开启玩家速度",
	Default = false,
	Callback =function(v)
		local oldSpeed = LocalPlayer.Character.Humanoid.WalkSpeed
        if v then
            Speedlol = RunService.Heartbeat:Connect(function()
                LocalPlayer.Character.Humanoid.WalkSpeed = Speed
            end)
        else
            Speedlol:Disconnect()
            LocalPlayer.Character.Humanoid.WalkSpeed = oldSpeed
        end
	end
})
GroupBox.PlayersFunction:AddToggle("开启玩家视野",{
	Text = "开启玩家视野",
	Default = false,
	Callback =function(v)
        if v then
            fovlol = RunService.Heartbeat:Connect(function()
                Workspace.Camera.FieldOfView = fov
            end)
        else
            fovlol:Disconnect()
            Workspace.Camera.FieldOfView = 70
        end
	end
})
GroupBox.PlayersFunction:AddSlider("速度调整", {
    Text = "速度调整",
    Default = 16,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        Speed = Value
    end
})
GroupBox.PlayersFunction:AddSlider("视野调整", {
    Text = "视野调整",
    Default = 70,
    Min = 0,
    Max = 120,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        fov = Value
    end
})
GroupBox.PlayersFunction:AddToggle("穿墙",{
    Text = "穿墙",
    Default = false,
    Callback = function(v)
		Clip = false
		if v then
		Noclipping = RunService.Heartbeat:Connect(NoclipLoop)
	else
		if Noclipping then
			Noclipping:Disconnect()
		end
		Clip = true
		end
    end
})
GroupBox.PlayersFunction:AddToggle("开启防挂机", {
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
GroupBox.PlayersFunction:AddButton("强制死亡",{
    Text = "强制死亡",
    DoubleClick = true,
    Func = function()
       LocalPlayer.Character.Humanoid.Health = 0 
    end
})
GroupBox.Kill:AddToggle("秒杀怪",{
    Text = "秒杀怪",
    Default = false,
    Tooltip = "秒杀怪",
    Callback = function(Value)
        if Value then
        Kill = RunService.Heartbeat:Connect(function()
            for _,v in ipairs(Workspace.Living:GetChildren()) do
            if idk[v.Name] then
                local dis = (LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
                if dis <= DIs then
                    if v:FindFirstChild("Humanoid") then
                        task.wait(0.3)
                        v.Humanoid.Health = 0
                            end
                        end
                    end
                end
            end)
        else
            if Kill then
            Kill:Disconnect()
            Kill = nil
            end
        end
    end
})
GroupBox.Kill:AddToggle("秒杀boss",{
    Text = "秒杀boss",
    Default = false,
    Callback = function(Value)
        if Value then
        Kill = RunService.Heartbeat:Connect(function()
            for _,v in ipairs(Workspace.Living:GetChildren()) do
            if boss[v.Name] then
                local dis = (LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
                if dis <= DIs then
                    if v:FindFirstChild("Humanoid") then
                        task.wait(2)
                        v.Humanoid.Health = 0
                            end
                        end
                    end
                end
            end)
        else
            if Kill then
            Kill:Disconnect()
            Kill = nil
            end
        end
    end
})
itemLoot:AddToggle("捡箱子",{
    Text = "捡箱子",
    Default = false,
    Callback = function(v)
        if v then
        Fucking = Workspace.Item.ChildAdded:Connect(function(v)
            if v.Name == "Box" and v:IsA("Part") then
                task.wait(2)
                HumanoidRootPart.CFrame = v.CFrame
                task.wait(0.3)
                fireproximityprompt(v.ProximityPrompt)
            end
        end)
        Need =  pcall(function()
            for _,v in ipairs(Workspace.Item:GetChildren()) do
                if v.Name == "Box" and v:IsA("Part") then
                    task.wait(2)
                    HumanoidRootPart.CFrame = v.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v.ProximityPrompt)
                    end
                end
            end)
        else
            Fucking = nil
            Fucking:Disconnect()
            Need:Disconnect()
            Need = nil
        end
    end
})
itemLoot:AddToggle("捡手指",{
    Text = "捡手指",
    Default = false,
    Callback = function(v)
        if v then
            Need2 = pcall(function()
            for _, v in ipairs(Workspace.Item:GetDescendants()) do
                if v:FindFirstChild("SukunaFinger")then
                task.wait(2)
                HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,2.5,0)
                task.wait(0.3)
                fireproximityprompt(v.ProximityPrompt)
                else
                    return
                    end
                end
            end)
    else
        Need2:Disconnect()
        Need2 = nil
        end
    end
})
itemLoot:AddToggle("捡木桶",{
    Text = "捡木桶",
    Default = false,
    Callback = function(v)
        if v then
            Need3 = pcall(function()
            for _, v in ipairs(Workspace.Item:GetChildren()) do
                if v:FindFirstChild("Barrel")then
                task.wait(2)
                HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,2.5,0)
                task.wait(0.3)
                fireproximityprompt(v.ProximityPrompt)
                else
                    return
                        end
                end
            end)
        else
            if Need3 then
                Need3:Disconnect()
                Need3 = nil
            end
        end
    end
})
itemLoot:AddDivider()
itemLoot:AddLabel("需要有钥匙")
itemLoot:AddToggle("开箱子",{
    Text = "开箱子",
    Default = false,
    Callback = function(v)
        if v then
            Need4 = pcall(function()
            for _, v in ipairs(Workspace.Item:GetDescendants()) do
                if v:FindFirstChild("Chest")then
                task.wait(2)
                HumanoidRootPart.CFrame = v.Chest.Parent.CFrame + Vector3.new(0,3,0)
                task.wait(1)
                fireproximityprompt(v.Chest.Parent.ProximityPrompt)
                else
                    return
                        end
                    end
                end) 
        else
            Need4:Disconnect()
            Need4 = nil
        end
    end
})
Fast:AddToggle("快速互动",{
    Text = "快速互动",
    Default = false,
    Callback =function(v)
        if v then
                instantInteract()
            else
                if not v then
                    ProximityPromptConnection:Disconnect()
                end
        end
    end
})
Fast:AddToggle("快速出售", {
    Text = "快速出售",
    Default = false,
    Callback = function(v)
        if v then
            AutoSell = true
            while AutoSell do
                    task.wait(1)
                    ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer("Mysterious Camera")
                    ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer("Stop Sign")
                    ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer("Stone Mask")
                    ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer("Haunted Sword")
                    ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer("Spin Manual")
                    ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer("Barrel")
                    ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer("Hamon Manual")
                    ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer("Rokakaka")
                    ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer("Arrow")
                    task.wait(1)
                end
        else
            AutoSell = false
        end
    end
})
GroupBox.Telp:AddDropdown("传送地图",{
    Values = {"仪式","咖啡厅","虚空间","图书馆","废墟"},
    Default = "",
    Text = "传送地图",
    AllowNull = true,
    Callback = function(v)
        if v == "仪式" then
            HumanoidRootPart.CFrame = Workspace.SpecialAreas.RoninQuotes.HallOfHeroes.CFrame
        elseif v == "咖啡厅" then
            HumanoidRootPart.CFrame = Workspace.Locations.Cafe.CFrame
        elseif v == "虚空间" then
            HumanoidRootPart.CFrame = Workspace.Locations.Hueco.CFrame
        elseif v == "图书馆" then
            HumanoidRootPart.CFrame = Workspace.Locations.Library.CFrame
        elseif v == "废墟" then
            HumanoidRootPart.CFrame = Workspace.Locations.RuinedCity.CFrame
        end
    end
})
GroupBox.Telp:AddDropdown("传送角色",{
    Values = {"五条", "宿傩","夏油杰","每日任务点","仓库","购买","高速婆婆"},
    Default = "",
    Text = "传送角色",
    AllowNull = true,
    Callback = function(v)
        if v == "五条" then
            HumanoidRootPart.CFrame = Workspace.Map.NPCs.Gojo.HumanoidRootPart.CFrame
        elseif v == "宿傩" then
            HumanoidRootPart.CFrame = Workspace.Map.NPCs.Sukuna.HumanoidRootPart.CFrame
        elseif v == "夏油杰" then
            HumanoidRootPart.CFrame = Workspace.Map.NPCs.Geto.HumanoidRootPart.CFrame
        elseif v == "每日任务点" then
            HumanoidRootPart.CFrame = Workspace.Map.NPCs.Drago.HumanoidRootPart.CFrame
        elseif v == "仓库" then
            HumanoidRootPart.CFrame = Workspace.Map.NPCs.Simplrr.HumanoidRootPart.CFrame
        elseif v == "购买" then
            HumanoidRootPart.CFrame = Workspace.Map.NPCs.Auddy.HumanoidRootPart.CFrame
        elseif v == "高速婆婆" then
            HumanoidRootPart.CFrame = Workspace.Map.NPCs["Turbo Granny"].HumanoidRootPart.CFrame
        end
    end
})
GroupBox.KillAnim:AddToggle("击杀动画(Cash)",{
    Text = "击杀动画抽奖(Cash)",
    Default = false,
    Callback =function(v)
        if v then
            KillAnimCash = true
            while KillAnimCash do
                task.wait(2)
                ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("PurchaseDeathAnim"):FireServer("Cash")
                task.wait(2)
            end
        else
            KillAnimCash = false
        end
    end
})
GroupBox.KillAnim:AddToggle("击杀动画(Token)",{
    Text = "击杀动画抽奖(Token)",
    Default = false,
    Callback =function(v)
        if v then
            KillAnimToken = true
            while KillAnimToken do
                task.wait(1)
                ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("PurchaseDeathAnim"):FireServer("Token")
                task.wait(2)
            end
        else
            KillAnimToken = false
        end
    end
})
GroupBox.SkinAnim:AddToggle("皮肤抽奖",{
    Text = "皮肤抽奖",
    Default = false,
    Callback = function(v)
        if v then
            SkinAnimRoll = true
            while SkinAnimRoll do
                    task.wait(1)
            end
        else
            SkinAnimRoll = false
        end
    end
})
GroupBox.ESP:AddToggle("透视诅咒",{
    Text = "透视诅咒",
    Default = false,
    Callback = function(v)
        if v then
            Monster = Workspace.Living.ChildAdded:Connect(function(v)
                if idk[v.Name] then 
                    ESP(v, Color3.new(1,0.5,0), UDim2.new(0, 16, 0, 1), ""..idk[v.Name],true,0.5,0.5)
                end
            end)
            for _, v in ipairs(Workspace.Living:GetChildren()) do
                if idk[v.Name] then
                    ESP(v, Color3.new(1,0.5,0), UDim2.new(0, 16, 0, 1), ""..idk[v.Name],true,0.5,0.5)
                end
            end
            Boss = Workspace.Living.ChildAdded:Connect(function(v)
                if boss[v.Name] then
                    ESP(v,Color3.new(0.870588, 0.913725, 0.501960),UDim2.new(0,16,0,1),""..boss[v.Name],true,0.5,0.5)
                end
            end)
            for _, v in ipairs(Workspace.Living:GetChildren()) do
                if boss[v.Name] then
                    ESP(v,Color3.new(0.870588, 0.913725, 0.501960),UDim2.new(0,16,0,1),""..boss[v.Name],true,0.5,0.5)
                end
            end
        else
            Monster:Disconnect()
            Boss:Disconnect()
            for _,v in ipairs(Workspace.Living:GetDescendants()) do
                if boss[v.Name] then
                    local L1 = v:FindFirstChild("L1")
                    local L2 = v:FindFirstChild("L2")
                    if L1 then L1:Destroy() end
                    if L2 then L2:Destroy() end
                end
            end
            for _, v in ipairs(Workspace.Living:GetDescendants()) do
                if idk[v.Name] then
                    local L1 = v:FindFirstChild("L1")
                    local L2 = v:FindFirstChild("L2")
                    if L1 then L1:Destroy() end
                    if L2 then L2:Destroy() end
                end
            end
        end
    end
})
GroupBox.Mastery:AddToggle("自动精通",{
    Text = "自动精通",
    Default = false,
    Tooltip = "自动精通",
    Callback =function(v)
        if v then
            Master = true
                while Master do
                    task.wait(5)
                    Masterr:FireServer()
                    task.wait(10)
                end
        else
            Master = false
        end
    end
})
GroupBox.PlayerData:AddButton("更新数据",{
        Text = "更新数据",
        Func = function()
            Label.Mastery:SetText("玩家精通: "..LocalPlayer.Data.Mastery.Value)
            Label.Token:SetText("玩家红币: "..LocalPlayer.Data.Token.Value)
            Label.Fingers:SetText("玩家手指: "..LocalPlayer.Data.Fingers.Value)
            Label.Cash:SetText("玩家马内: "..LocalPlayer.Data.Cash.Value)
            Label.Soul:SetText("玩家灵魂: "..LocalPlayer.Data.Soul.Value)
            Label.Worth:SetText("玩家荣誉: "..LocalPlayer.Data.Worth.Value)
            Label.BP:SetText("玩家BP: "..LocalPlayer.Data.BP.Value)
        end,
})
GroupBox.PlayerData:AddToggle("隐藏数据",{
    Text = "隐藏数据",
    Default = false,
    Callback =function(v)
        if v then
        Label.Mastery:SetVisible(false)
        Label.Token:SetVisible(false)
        Label.Fingers:SetVisible(false)
        Label.Cash:SetVisible(false)
        Label.Soul:SetVisible(false)
        Label.Worth:SetVisible(false)
        Label.BP:SetVisible(false)
        else
        Label.Mastery:SetVisible(true)
        Label.Token:SetVisible(true)
        Label.Fingers:SetVisible(true)
        Label.Cash:SetVisible(true)
        Label.Soul:SetVisible(true)
        Label.Worth:SetVisible(true)
        Label.BP:SetVisible(true)
        end
    end
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
ThemeManager:SetFolder("SS")
SaveManager:SetFolder("ssScript/SSSS-game")
SaveManager:SetSubFolder("SS-place") 
SaveManager:BuildConfigSection(Tab["设置"])
ThemeManager:ApplyToTab(Tab["设置"])
SaveManager:LoadAutoloadConfig()
