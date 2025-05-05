--Make By AC
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/Library.lua"))()
if game.PlaceId == 8534845015 then
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Workspace = game:GetService("Workspace")
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local RunService = game:GetService("RunService")
    local VirtualUser = game:GetService("VirtualUser")
    local UserInputService = game:GetService("UserInputService")
    local Masterr = ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("UpgradeMas")
    local Masteryr = ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("Breakthrough")

    local BarrelLoot
    local Need4
    local CityEggLoot1
    local KuzmaEggLoot
    local EggLoot


    local Noclipping = nil
    local Master = false
    local KillAnimCash = false
    local AutoSellFruit = false
    local AutoSell = false
    local KillAnimToken = false
    local Maste = false
    local SkinAnimRoll = false
    local MasteryTime = 10
    local RollTime = 2
    local Waittime = 2
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
        ["Thug"] = "恶棍",
        ["Contorted Curse"] = "诅咒",
        ["Bandit"] = "恶棍", 
        ["Paper Curse Half"] = "小纸张",
        ["Paper Curse Quarter"] = "小小纸张",
    }
    local boss = {
        ["Jotaro Kujo"] = "空条承太郎",
        ["Mimicry"] = "模仿者",
        ["Menos"] = "大诅咒",
        ["Spider Curse"] = "失败的man",
        ["Adjuchas"] = "亚丘卡斯",
        ["Toji"] = "甚尔",
        ["The Red Mist"] = "红雾",
        ["Deku"] = "绿谷",
        ["Roland"] = "罗兰",
    }
    local item = {
        ["Durandal"] = "",
        ["Zelkova"] = "",
        ["AngelicaWeak"] = "",
        ["Hie Hie Devil Fruit"] = "",
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
    local Notification = Library:Notify({
        Title = "通知",
        Description = "推荐私服",
        Time = 5,
        SoundId = 8486683243
    })
    local Tab = {
        MaxinTab = Window:AddTab("主页","tablet"),
        PlayerTab = Window:AddTab("人物功能","user"),
        MainTab = Window:AddTab("功能", "airplay"),
        RollAnim = Window:AddTab("抽奖","aperture"),         
        PlayerData = Window:AddTab("玩家数据","user"),
        ["设置"] = Window:AddTab("设置", "settings"),
    }
    local GroupBox = {
        MaxinTab = Tab.MaxinTab:AddLeftGroupbox("主要"),
        Kill = Tab.MainTab:AddLeftGroupbox("杀戮光环"), 
        Mastery = Tab.MainTab:AddLeftGroupbox("精通"),
        PlayersFunction = Tab.PlayerTab:AddLeftGroupbox("玩家速度"),
        PlayerData = Tab.PlayerData:AddLeftGroupbox("玩家数据"),
        Telp = Tab.MainTab:AddLeftGroupbox("传送"),
        Time = Tab.MainTab:AddRightGroupbox("时间"),
        KillAnim = Tab.RollAnim:AddLeftGroupbox("击杀动画抽奖"),
        SkinAnim = Tab.RollAnim:AddRightGroupbox("皮肤抽奖"),
        ESP = Tab.MainTab:AddRightGroupbox("透视")

    }
    local Label = {
        PlayerName = GroupBox.PlayerData:AddLabel("玩家名字: "..LocalPlayer.Name),
        Mastery = GroupBox.PlayerData:AddLabel("玩家精通: "..LocalPlayer.Data.Mastery.Value),
        Breakthrough = GroupBox.PlayerData:AddLabel("玩家突破: "..LocalPlayer.Data.Breakthrough.Value),
        Token = GroupBox.PlayerData:AddLabel("玩家红币: "..LocalPlayer.Data.Token.Value),
        Cash = GroupBox.PlayerData:AddLabel("玩家马内: "..LocalPlayer.Data.Cash.Value),
        BP = GroupBox.PlayerData:AddLabel("玩家BP: "..LocalPlayer.Data.BP.Value),
        Fingers = GroupBox.PlayerData:AddLabel("玩家手指: "..LocalPlayer.Data.Fingers.Value),
        Worth = GroupBox.PlayerData:AddLabel("玩家荣誉: "..LocalPlayer.Data.Worth.Value),
    }
    local Label2 = {
        GroupBox.MaxinTab:AddLabel("作者: AC"),
        GroupBox.MaxinTab:AddDivider(),
        GroupBox.MaxinTab:AddLabel("更新内容："),
        GroupBox.MaxinTab:AddLabel("1.添加了捡蛋"),
        GroupBox.MaxinTab:AddLabel("2.添加了新boss的兼容"),
        GroupBox.MaxinTab:AddLabel("3.修复了一些bug"),
        GroupBox.MaxinTab:AddLabel("4.新增了皮肤类"),
        GroupBox.MaxinTab:AddLabel("5.新增自动突破"),
        GroupBox.MaxinTab:AddLabel("6.新增NPC传送跟地图传送"),
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
                    if LocalPlayer.Character then
                    LocalPlayer.Character.Humanoid.WalkSpeed = Speed 
                    else
                        return
                    end
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
                            if v:FindFirstChild("Participated") and v.Participated:FindFirstChild(LocalPlayer.Name) then
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
    GroupBox.Kill:AddToggle("秒杀新boss",{
        Text = "秒杀新boss",
        Default = false,
        Callback = function(Value)
            if Value then
            Kill2 = RunService.Heartbeat:Connect(function()
                for _,v in ipairs(Workspace.Living:GetChildren()) do
                if v.Name == "Eggxeed" then
                    local dis = (LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
                    if dis <= DIs then
                        if v:FindFirstChild("Participated") and v.Participated:FindFirstChild(LocalPlayer.Name) then
                            v.Humanoid.Health = 0
                                end
                            end
                        end
                    end
                end)
            else
                if Kill2 then
                Kill2:Disconnect()
                Kill2 = nil
                end
            end
        end
    })
    GroupBox.Time:AddInput("设置传送时间", {
        Text = "设置传送时间",
        Tooltip = "是等待时间",
        Default = "2",
        Numeric = true,
        Placeholder = "输入数字",
        Callback = function(Value)
            Waittime = Value
        end
    })
    itemLoot:AddToggle("捡箱子(old)",{
        Text = "捡箱子(old)",
        Default = false,
        Callback = function(v)
            if v then
                FUCKINGBICH = RunService.RenderStepped:Connect(function()
                    for _, v in ipairs(Workspace.Item:GetChildren()) do
                        if v.Name == "Box" and v:IsA("Part") then
                            task.wait(Waittime)
                            LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,3,0)
                            task.wait(0.5)
                            fireproximityprompt(v.ProximityPrompt)
                        end
                    end
                end)
            else
                FUCKINGBICH:Disconnect()
                FUCKINGBICH = nil
            end
        end
    })
    --[[itemLoot:AddToggle("捡箱子",{
        Text = "捡箱子",
        Default = false,
        Callback = function(v)
            if v then
                AutoLoot = true
            Need =  pcall(function()
                while AutoLoot do
                    task.wait(Waittime)
                for _,v in pairs(Workspace.Item:GetDescendants()) do
                    if v.Name == "Box" and v:IsA("Part") then
                        task.wait(2)
                        HumanoidRootPart.CFrame = v.Box.CFrame+ Vector3.new(0,3,0)
                        task.wait(0.3)
                        fireproximityprompt(v.Box.ProximityPrompt)
                            end
                        end
                    end
                end)
            else
                AutoLoot = false
            end
        end
    })
    ]]
    itemLoot:AddToggle("捡手指",{
        Text = "捡手指",
        Default = false,
        Callback = function(v)
            if v then
                FingerLoot = Workspace.Item.ChildAdded:Connect(function(v)
                    local oldFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                    if v.Name == "SukunaFinger" and v:IsA("Part") then
                        task.wait(Waittime)
                        LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,2.5,0)
                        task.wait(0.2)
                        fireproximityprompt(v.ProximityPrompt)
                        task.wait(0.3)
                        LocalPlayer.Character.HumanoidRootPart.CFrame = oldFrame
                    end
                end)
                for _,v in ipairs(Workspace.Item:   GetChildren()) do
                    local oldFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                    if v.Name == "SukunaFinger" and v:IsA("Part") then
                        task.wait(Waittime)
                        LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,2.5,0)
                        task.wait(0.2)
                        fireproximityprompt(v.ProximityPrompt)
                        task.wait(0.3)
                        LocalPlayer.Character.HumanoidRootPart.CFrame = oldFrame

                    end
                end
            else
                FingerLoot:Disconnect()
                FingerLoot = nil
            end
        end
    })
    itemLoot:AddToggle("捡木桶",{
        Text = "捡木桶",
        Default = false,
        Callback = function(v)
            if v then
                BarrelLoot = RunService.RenderStepped:Connect(function()
                for _, v in ipairs(Workspace.Item:GetChildren()) do
                    local oldFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                    if v.Name == "Barrel" and v:IsA("Part")then
                    task.wait(Waittime)
                    LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,2.5,0)
                    task.wait(0.2)
                    fireproximityprompt(v.ProximityPrompt)
                    task.wait(0.3)
                    LocalPlayer.Character.HumanoidRootPart.CFrame = oldFrame
                    else
                        return
                    end
                end
            end)
            else
                BarrelLoot:Disconnect()
                BarrelLoot = nil
            end
        end
    })
    itemLoot:AddToggle("捡蛋",{
        Text = "捡蛋",
        Default = false,
        Callback = function(v)
            if v then
                EggLoot = Workspace.Item.ChildAdded:Connect(function(v)
                    local oldFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                    if v.Name == "Silver Egg" and v:IsA("Part") then
                        task.wait(Waittime)
                        LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,2.5,0)
                        task.wait(0.3)
                        fireproximityprompt(v.ProximityPrompt)
                        task.wait(0.4)
                        LocalPlayer.Character.HumanoidRootPart.CFrame = oldFrame
                    end
                end)
                for _,v in ipairs(Workspace.Item:GetChildren()) do
                    local oldFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                    if v.Name == "Silver Egg" and v:IsA("Part") then
                        task.wait(Waittime)
                        LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,2.5,0)
                        task.wait(0.3)
                        fireproximityprompt(v.ProximityPrompt)
                        task.wait(0.4)
                        LocalPlayer.Character.HumanoidRootPart.CFrame = oldFrame

                    end
                end
            else
                EggLoot:Disconnect()
                EggLoot = nil
            end
        end
    })
    itemLoot:AddToggle("捡任务蛋(城市)",{
        Text = "捡任务蛋(城市)",
        Default = false,
        Callback = function(v)
            if v then
                CityEggLoot1 = RunService.RenderStepped:Connect(function()
                for _,v in ipairs(Workspace.Map.EggLocation.City:GetChildren()) do
                    local oldFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                    if v.Name == "Egg"then
                        if v.Transparency == 0 then
                        task.wait(Waittime)
                        LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,2.5,0)
                        task.wait(0.3)
                        fireproximityprompt(v.ProximityPrompt)
                        task.wait(1)
                        LocalPlayer.Character.HumanoidRootPart.CFrame = oldFrame
                        else
                            CityEggLoot1:Disconnect()
                            CityEggLoot1 = nil
                        end
                    end
                end
            end)
            else
                CityEggLoot1:Disconnect()
                CityEggLoot1 = nil 
            end
        end
    })
    itemLoot:AddToggle("捡任务蛋(Kuzma)",{
        Text = "捡任务蛋(Kuzma)",
        Default = false,
        Callback = function(v)
            if v then
                KuzmaEggLoot = RunService.RenderStepped:Connect(function()
                for _,v in ipairs(Workspace.Map.Kuzma.City:GetChildren()) do
                    local oldFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                    if v.Name == "Egg"then
                        if v.Transparency == 0 then
                        task.wait(Waittime)
                        LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,2.5,0)
                        task.wait(0.3)
                        fireproximityprompt(v.ProximityPrompt)
                        task.wait(1)
                        LocalPlayer.Character.HumanoidRootPart.CFrame = oldFrame
                        else
                            KuzmaEggLoot:Disconnect()
                            KuzmaEggLoot = nil
                        end
                    end
                end
            end)
            else
                KuzmaEggLoot:Disconnect()
                KuzmaEggLoot = nil
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
                Need4 = RunService.RenderStepped:Connect(function()
                for _,v in ipairs(LocalPlayer.Backpack:GetChildren()) do
                    if v.Name == "Chest Key" and v:IsA("Tool") then
                    for _, v in ipairs(Workspace.Item:GetChildren()) do
                    if v:FindFirstChild("Chest")then
                    task.wait(Waittime)
                    HumanoidRootPart.CFrame = v.Chest.CFrame + Vector3.new(0,3,0)
                    task.wait(1)
                    fireproximityprompt(v.Chest.ProximityPrompt)
                    else
                        return
                            end
                        end
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
                    end
            else
                AutoSell = false
            end
        end
    })
    Fast:AddToggle("快速出售果实", {
        Text = "快速出售果实",
        Default = false,
        Callback = function(v)
            if v then
                AutoSellFruit = true
                while AutoSellFruit do
                        task.wait(1)
                        ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer("Bomu Bomu Devil Fruit")
                        ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer("Mochi Mochi Devil Fruit")
                        ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer("Bari Bari Devil Fruit")
                    end
            else
                AutoSellFruit = false
            end
        end
    })
    GroupBox.Telp:AddDropdown("传送地图",{
        Values = {"仪式","咖啡厅","虚空间","图书馆","废墟","迪奥生成地"},
        Default = "",
        Text = "传送地图",
        AllowNull = true,
        Callback = function(v)
            if v == "仪式" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.SpecialAreas.RoninQuotes.HallOfHeroes.CFrame
            elseif v == "咖啡厅" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Locations.Cafe.CFrame
            elseif v == "虚空间" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Locations.Hueco.CFrame
            elseif v == "图书馆" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Locations.Library.CFrame
            elseif v == "废墟" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Locations.RuinedCity.CFrame
                elseif v == "迪奥生成地" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Locations.Depth.CFrame
            end
        end
    })
    GroupBox.Telp:AddDropdown("传送NPC",{
        Values = {"五条", "宿傩","夏油杰","每日任务点","仓库","购买","高速婆婆","胡萝卜女孩","千叶"},
        Default = "",
        Text = "传送NPC",
        AllowNull = true,
        Callback = function(v)
            if v == "五条" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Map.NPCs.Gojo.HumanoidRootPart.CFrame
            elseif v == "宿傩" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Map.NPCs.Sukuna.HumanoidRootPart.CFrame
            elseif v == "夏油杰" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Map.NPCs.Geto.HumanoidRootPart.CFrame
            elseif v == "每日任务点" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Map.NPCs.Drago.HumanoidRootPart.CFrame
            elseif v == "仓库" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Map.NPCs.Simplrr.HumanoidRootPart.CFrame
            elseif v == "购买" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Map.NPCs.Auddy.HumanoidRootPart.CFrame
            elseif v == "高速婆婆" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Map.NPCs["Turbo Granny"].HumanoidRootPart.CFrame
            elseif v == "胡萝卜女孩" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Map.NPCs.Carrot.HumanoidRootPart.CFrame
            elseif v == "千叶" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Map.NPCs.Chiba.HumanoidRootPart.CFrame
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
                    task.wait(RollTime)
                    ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("PurchaseDeathAnim"):FireServer("Cash")
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
                    task.wait(RollTime)
                    ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("PurchaseDeathAnim"):FireServer("Token")
                end
            else
                KillAnimToken = false
            end
        end
    })
    GroupBox.SkinAnim:AddLabel("请先停止再设置时间")
    GroupBox.SkinAnim:AddToggle("皮肤抽奖",{
        Text = "皮肤抽奖",
        Default = false,
        Callback = function(v)
            if v then
                SkinAnimRoll = true
                while SkinAnimRoll do
                        task.wait(RollTime)
                        game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("ArcadePurchase"):FireServer(false,false)
                end
            else
                SkinAnimRoll = false
            end
        end
    })
    GroupBox.SkinAnim:AddInput("设置抽奖时间", {
        Text = "设置抽奖时间",
        Tooltip = "是等待时间",
        Default = "2",
        Numeric = true,
        Placeholder = "输入数字",
        Callback = function(Value)
            RollTime = Value
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
                        task.wait(MasteryTime)
                        Masterr:FireServer()
                    end
            else
                Master = false
            end
        end
    })
    GroupBox.Mastery:AddToggle("自动突破",{
        Text = "自动突破",
        Default = false,
        Callback =function(v)
            if v then
                Maste = true
                    while Maste do
                        task.wait(MasteryTime)
                        Masteryr:FireServer()
                    end
            else
                Maste = false
            end
        end
    })
    GroupBox.Mastery:AddInput("设置精通时间", {
        Text = "设置精通时间",
        Tooltip = "是等待时间",
        Default = "2",
        Numeric = true,
        Placeholder = "输入数字",
        Callback = function(Value)
            MasteryTime = Value
        end
    })
    local Visiblefalse = GroupBox.PlayerData:AddButton("更新数据",{
            Text = "更新数据",
            Func = function()
                Label.PlayerName:SetText("玩家名字: "..LocalPlayer.Name)
                Label.Mastery:SetText("玩家精通: "..LocalPlayer.Data.Mastery.Value)
                Label.Token:SetText("玩家红币: "..LocalPlayer.Data.Token.Value)
                Label.Fingers:SetText("玩家手指: "..LocalPlayer.Data.Fingers.Value)
                Label.Cash:SetText("玩家马内: "..LocalPlayer.Data.Cash.Value)
                Label.Worth:SetText("玩家荣誉: "..LocalPlayer.Data.Worth.Value)
                Label.BP:SetText("玩家BP: "..LocalPlayer.Data.BP.Value)
                Label.Breakthrough:SetText("玩家突破: "..LocalPlayer.Data.Breakthrough.Value)
            end,
    })  
    GroupBox.PlayerData:AddToggle("隐藏数据",{
        Text = "隐藏数据",
        Default = false,
        Callback =function(v)
            if v then
            Label.PlayerName:SetVisible(false)
            Label.Mastery:SetVisible(false)
            Label.Token:SetVisible(false)
            Label.Fingers:SetVisible(false)
            Label.Cash:SetVisible(false)
            Label.Worth:SetVisible(false)
            Label.Breakthrough:SetVisible(false)
            Label.BP:SetVisible(false)
            Visiblefalse:SetVisible(false)
            else
            Label.PlayerName:SetVisible(true)
            Label.Mastery:SetVisible(true)
            Label.Token:SetVisible(true)
            Label.Fingers:SetVisible(true)
            Label.Cash:SetVisible(true)
            Label.Worth:SetVisible(true)
            Label.BP:SetVisible(true)
            Label.Breakthrough:SetVisible(true)
            Visiblefalse:SetVisible(true)
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
    ThemeManager:SetFolder("大厅/themes")
    SaveManager:SetFolder("大厅/SS-game")
    SaveManager:SetSubFolder("SS-数据") 
    SaveManager:BuildConfigSection(Tab["设置"])
    ThemeManager:ApplyToTab(Tab["设置"])
    SaveManager:LoadAutoloadConfig()
    Notification:ChangeTitle("灵构")
    Notification:ChangeDescription("享受脚本")
else
    Library:Notify({
        Title = "错误警告: ",
        Description = "请在正确的游戏内使用",
        Time = 10,
        SoundId = 3779045779
    })
end
