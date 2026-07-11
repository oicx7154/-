-- Make By AC
-- Version 1.7.0
-- Fix some bugs
local REVEAL_HINT_STACK = false
local ANTI_ENV_LOG_MESSAGE =
[[
    What are you doing? and what are you seeing?
]]
if not getmetatable or not setmetatable or not type or not select or type(select(2, pcall(getmetatable, setmetatable({}, {__index = function(self, ...) while true do end end})))['__index']) ~= 'function' or not pcall or not debug or not rawget or not rawset or not pcall(rawset,{}," "," ") or not select or not getfenv or select(1, pcall(getfenv, 69)) == true or not select(2, pcall(rawget, debug, "info")) or #(((select(2, pcall(rawget, debug, "info")))(getfenv, "n")))<=1 or #(((select(2, pcall(rawget, debug, "info")))(print, "n")))<=1 or not (select(2, pcall(rawget, debug, "info")))(print, "s") == "[C]" or not (select(2, pcall(rawget, debug, "info")))(require, "s") == "[C]" or (select(2, pcall(rawget, debug, "info")))((function()end), "s") == "[C]" then
  return REVEAL_HINT_STACK and tostring(ANTI_ENV_LOG_MESSAGE) or nil
end

local shit=function()pcall(function()game.Players.LocalPlayer:Kick()end);pcall(game.Shutdown,game)end

local fuck=function()return"a"end
hookfunction(fuck,function()return"b"end)
if not isfunctionhooked then shit();return end
if not isfunctionhooked(fuck)then shit();return end

local bitch=game.HttpGet
hookfunction(bitch,function()end)
if not isfunctionhooked(bitch)then shit();return end
restorefunction(bitch)
if isfunctionhooked(bitch)then shit();return end

local cunt=request or http_request or(syn and syn.request)or(fluxus and fluxus.request)

task.spawn(function()
    while task.wait(0.5)do
        pcall(function()
            if isfunctionhooked(game.HttpGet)then shit()end
            if isfunctionhooked(game.HttpPost)then shit()end
            if isfunctionhooked(tostring)then shit()end
            if isfunctionhooked(setclipboard)then shit()end
            if cunt and isfunctionhooked(cunt)then shit()end
            if isfolder("HttpGetFolder")or isfolder("WebhookFolder")or isfolder("RequestFolder")then shit()end
        end)
    end
end)

for _,dick in pairs({"rconsoleprint","rconsolewarn","rconsoleinfo","rconsoleerr","rconsoletitle","clonefunction"})do
    getgenv()[dick]=nil
end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/tanhoangviet/Obsidian-UI-Modded/main/Library.lua"))()
local b = loadstring(request({
    Url = "https://raw.githubusercontent.com/oicx7154/Background/refs/heads/main/b.lua"
}).Body)()
setfpscap(9e9) --this is important,your fps can become fucking hight
if _G.AntiAFKConnection then 
_G.AntiAFKConnection:Disconnect()
_G.AntiAFKConnection = nil
end
if _G.AutoUpdate then
task.cancel(_G.AutoUpdate)
_G.AutoUpdate = nil
end
s = setmetatable({},{__index=function(t,k)local v=cloneref(game:GetService(k));rawset(t,k,v);return v end,__call=function(_,k)return k and s[k]or game end})
do 
        Library:NotifyWarning({
            Title = "提示",
            Description = "推荐私服",
            Time = 5,
            SoundId = 3779045779,
            Actions = {
                { Text = "知道了" },
                {
                    Text = "关闭",
                    CloseOnClick = true,
                    Callback = function()
                    end,
                },
            },
        })
    local UserInputService = s.UserInputService
    local Players = s.Players
    local ReplicatedStorage = s.ReplicatedStorage
    local RunService = s.RunService
    local LocalPlayer = Players.LocalPlayer
    local Workspace = s.Workspace
    local VirtualUser = s.VirtualUser
    local ContentProvider = s.ContentProvider
    local Folder = {}
    local Modules = {}
    Modules.Masterr = ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("UpgradeMas")
    Modules.Masteryr = ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("Breakthrough")
    Modules.SellEvent = ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem")

    VERSION = "V0.1.7.0"
    Library.ForceCheckbox = false 
    Library.ShowToggleFrameInKeybinds = true
    do
    local Loading = Library:CreateLoading({
        Title = "灵构",
        Icon = 73663200681073,
        TotalSteps = 4
    })
    Loading:SetMessage("初始化...")
    Loading:SetDescription("正在等待游戏加载完成...")

    if not game:IsLoaded() then
        game.Loaded:Wait()
    end

    Loading:SetCurrentStep(1)
    Loading:SetDescription("正在加载中...")

    local comms = s.ReplicatedStorage
    local need = Workspace.Terrain

    if comms and need then
        Loading:SetDescription("游戏内容已加载成功")
    else
        Loading:SetDescription("部分内容加载缓慢,尝试继续...")
    end
    task.wait(0.5)

    Loading:SetCurrentStep(2)
    Loading:ShowSidebarPage(true)
    Loading.Sidebar:AddLabel("用户名: " .. LocalPlayer.Name)
    Loading.Sidebar:AddLabel("用户ID: " .. LocalPlayer.UserId)
    Loading.Sidebar:AddLabel("版本: "..VERSION)
    Loading:SetDescription("正在同步用户信息...")
    task.wait(0.5)

    Loading:SetCurrentStep(3)
    Loading:SetDescription("正在加载游戏材质与音效...")

    local assetsToLoad = {
        ReplicatedStorage:FindFirstChild("Assets"),
        ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("UpgradeMas"),
        ReplicatedStorage:WaitForChild("GlobalUsedRemotes"):WaitForChild("Breakthrough")
    }

    local validAssets = {}
    for _, v in pairs(assetsToLoad) do
        if v then table.insert(validAssets, v) end
    end

    ContentProvider:PreloadAsync(validAssets) 

    Loading:SetCurrentStep(4)
    Loading:SetDescription("等待玩家模型加载成功...")

    if not LocalPlayer.Character then
        LocalPlayer.CharacterAdded:Wait()
    end

    Loading:SetDescription("加载成功")
    task.wait(0.5)

    Loading:Continue()
    end
    local Nu = {}
    local False = {}
    Nu.MasteryTime = 2
    False.AutoMastery = false
    False.AutoPick = false
    False.AutoSell = false
    False.ESPPlayer = false
    local GlobalDistanceEnabled = false
    local GlobalHealthEnabled= false
    local Color = {
        ["Players"] = Color3.fromRGB(0,170,255),
        ["Monster"] = Color3.fromRGB(255,0,0)
    }
    local Admins = {
        ["Chxmei"] = true,
        ["Auuddy"] = true,
        ["ii_ArunXz"] = true,
        ["Q3Prototype"] = true,
        ["PuddingBumby"] = true,
        ["Milkytillys"] = true,
        ["N4Animation"] = true,
        ["M87Ray"] = true,
        ["freehotdogeveryday"] = true,
        ["4mmeie"] = true,
        ["TheHonokaiOne"] = true,
        ["piknishi"] = true,
        ["AUTT3"] = true,
        ["pmcaom"] = true,
        ["SimpIrr"] = true,
        ["ErzT7"] = true,
        ["Eyegonis"] = true,
        ["HikaEsquire"] = true,
        ["3378"] = true,
        ["TakanaRemmy"] = true,
        ["Pepsimys"] = true,
        ["zelnul"] = true,
        ["potato341l"] = true,
        ["NotHea_vyy"] = true,
        ["Asakura_CT"] = true,
        ["pangpond654"] = true,
        ["koonkew12"] = true,
        ["Aspirationzs"] = true,
        ["Wicolez"] = true,
    }
    local SellItemList = {
        "Mysterious Camera",
        "Stop Sign",
        "Haunted Sword",
        "Stone Mask",
        "Rokakaka",
        "Arrow",
        "Barrel",
        "Hamon Manual",
        "Spin Manual",
    }
    local Connection = {}
    Connection.CharacterConnections = {}
    Connection.MonsterConnection = {}
    local ESPRegistry = {}
    ESPRegistry.Player = {}
    ESPRegistry.Monster = {}
    local FrameTimer = tick()
    local FrameCounter = 0;
    local FPS = 60;
    local FOV = 70
    local vehicleflyspeed = 1
    local iyflyspeed = 1
    local Speed = 0
    Nu.Waittime = 0.5
    local SafeLocationCFrame = CFrame.new(0, 500, 0) 
    local IYMouse = LocalPlayer:GetMouse()

    local LastPlayerPositionCFrame = nil
    local AutoPickLoop = nil
    local NoclipConnection = nil
    local Noclipping = nil
    local AutoSell = nil
    local adminConnection = nil
    local PlayerAdd = nil
    local Weapon = nil
    _G.AntiAFKConnection = nil
    False.AutoPickBarrel = false
    False.NoticePlayers = false
    False.KickAntiAdmins = false
    local QEfly = true
    local FLYING = false

    local mfly1
    local mfly2

    function randomString()
        local length = math.random(10,20)
        local array = {}
        for i = 1, length do
            array[i] = string.char(math.random(32, 126))
        end
        return table.concat(array)
    end
    floatName = randomString()
    local velocityHandlerName = randomString()
    local gyroHandlerName = randomString()

    local function ESP(inst, HightLight, Text, HiColor)

        if not inst then return end

        local adorneePart
        local humanoid = nil

        if inst:IsA("Model") then
            adorneePart = inst:FindFirstChild("HumanoidRootPart")
                or inst.PrimaryPart
                or inst:FindFirstChildWhichIsA("BasePart")
        elseif inst:IsA("BasePart") then
            adorneePart = inst
        end

        if not adorneePart then
            return
        end

        local container = Instance.new("Folder")
        container.Name = "ESP_" .. inst.Name
        container.Parent = inst

        local highlight
        if HightLight then
            highlight = Instance.new("Highlight")
            highlight.Adornee = inst
            highlight.FillColor = HiColor or Color3.fromRGB(0,170,255)
            highlight.OutlineColor = Color3.new(1,1,1)
            highlight.FillTransparency = 0.45
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.Parent = container
        end

        local billboard = Instance.new("BillboardGui")
        billboard.Adornee = adorneePart
        billboard.Size = UDim2.new(0, 160, 0, 36)
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.AlwaysOnTop = true
        billboard.LightInfluence = 0
        billboard.Parent = container

        local baseText = (Text and Text ~= "" and Text) or inst.Name

        local nameLabel = Instance.new("TextLabel")
        nameLabel.Size = UDim2.new(1,0,0,18)
        nameLabel.Position = UDim2.new(0,0,0,0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.TextScaled = false
        nameLabel.TextSize = 14
        nameLabel.Font = Enum.Font.GothamBold
        nameLabel.TextColor3 = Color3.new(1,1,1)
        nameLabel.TextStrokeTransparency = 0.5
        nameLabel.TextXAlignment = Enum.TextXAlignment.Center
        nameLabel.Text = baseText
        nameLabel.Parent = billboard

        local infoLabel = Instance.new("TextLabel")
        infoLabel.Size = UDim2.new(1,0,0,16)
        infoLabel.Position = UDim2.new(0,0,0,18)
        infoLabel.BackgroundTransparency = 1
        infoLabel.TextScaled = false
        infoLabel.TextSize = 13
        infoLabel.Font = Enum.Font.Gotham
        infoLabel.TextColor3 = Color3.fromRGB(0,255,0)
        infoLabel.TextStrokeTransparency = 0.5
        infoLabel.TextXAlignment = Enum.TextXAlignment.Center
        infoLabel.Text = ""
        infoLabel.Parent = billboard

        local humanoid = inst:FindFirstChildOfClass("Humanoid")
        local showDistance = false
        local showHealthBar = false
        local connection
            connection = Library:GiveSignal(RunService.RenderStepped:Connect(function()

                if not inst.Parent or not adorneePart.Parent then
                    return
                end

                local char = LocalPlayer.Character
                local myRoot = char and char:FindFirstChild("HumanoidRootPart")
                if not myRoot then return end

                local distanceText = ""

                if showDistance then
                    local distance = (myRoot.Position - adorneePart.Position).Magnitude

                    if distance >= 100 then
                        distanceText = string.format("%d 米", math.floor(distance + 0.5))
                    else
                        distanceText = string.format("%.1f 米", distance)
                    end
                end

                local healthText = ""

                if showHealthBar and humanoid and humanoid.MaxHealth > 0 then
                    local percent = math.clamp(humanoid.Health / humanoid.MaxHealth, 0, 1)
                    healthText = string.format("血量: %d%%", math.floor(percent * 100))
                end

                infoLabel.Text = (distanceText .. " " .. healthText)            
            end))
        local ancestryConnection
        ancestryConnection = inst.AncestryChanged:Connect(function(_, parent)
            if not parent then
                if connection then connection:Disconnect() end
                if ancestryConnection then ancestryConnection:Disconnect() end
                container:Destroy()
            end
        end)
        local controller = {}

        function controller:Remove()
            if connection then connection:Disconnect() end
            if ancestryConnection then ancestryConnection:Disconnect() end
            container:Destroy()
        end

        function controller:SetText(newText)
            baseText = newText or inst.Name
        end

        function controller:ToggleDistance(state : boolean)
            showDistance = state
        end

        function controller:SetColor(color)
            if highlight then
                highlight.FillColor = color
            end
        end

        function controller:SetHealth(state : boolean)
            showHealthBar = state
        end

        function controller:GetDistance()
            local char = LocalPlayer.Character
            local myRoot = char and char:FindFirstChild("HumanoidRootPart")
            if not myRoot then return nil end
            return (myRoot.Position - adorneePart.Position).Magnitude
        end

        return controller
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
    local function OnAdminDetected(adminName)
        Library:NotifyWarning({
            Title = "警告",
            Description = "检测到管理员: " .. adminName,
            Time = 5,
            SoundId = 3779045779,
            Actions = {
                { Text = "知道了" },
                {
                    Text = "关闭",
                    CloseOnClick = true,
                    Callback = function()
                    end,
                },
            },
        })
        if adminConnection then
        adminConnection:Disconnect()
        adminConnection = nil
        end
    end
    local function HasCooldown()
        for _, v in ipairs(LocalPlayer:GetChildren()) do
            if string.find(v.Name, "PickUpCooldownSpace") then
                return true
            end
        end
        return false
    end
    local function SetHover(enable)
        local char = LocalPlayer.Character
        local rootPart = char and char:FindFirstChild("HumanoidRootPart")
        if not rootPart then return end

        if enable then
            if not rootPart:FindFirstChild("AntiGravity") then
                local bv = Instance.new("BodyVelocity")
                bv.Name = "AntiGravity"
                bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                bv.Velocity = Vector3.new(0, 0, 0)
                bv.Parent = rootPart
            end
        else
            local bv = rootPart:FindFirstChild("AntiGravity")
            if bv then bv:Destroy() end
        end
    end
    function getRoot(char)
        local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
        return rootPart
    end
    function sFLY(vfly)
        repeat task.wait() until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        repeat task.wait() until IYMouse
        if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

        local T = getRoot(Players.LocalPlayer.Character)
        local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
        local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
        local SPEED = 0

        local function FLY()
            FLYING = true
            local BG = Instance.new('BodyGyro')
            local BV = Instance.new('BodyVelocity')
            BG.P = 9e4
            BG.Parent = T
            BV.Parent = T
            BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            BG.cframe = T.CFrame
            BV.velocity = Vector3.new(0, 0, 0)
            BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
            task.spawn(function()
                repeat wait()
                    if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                        Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
                    end
                    if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
                        SPEED = 50
                    elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
                        SPEED = 0
                    end
                    if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
                        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                        lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
                    elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
                        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                    else
                        BV.velocity = Vector3.new(0, 0, 0)
                    end
                    BG.cframe = workspace.CurrentCamera.CoordinateFrame
                until not FLYING
                CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                SPEED = 0
                BG:Destroy()
                BV:Destroy()
                if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                    Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
                end
            end)
        end
        flyKeyDown = IYMouse.KeyDown:Connect(function(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
            elseif KEY:lower() == 's' then
                CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
            elseif KEY:lower() == 'a' then
                CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
            elseif KEY:lower() == 'd' then 
                CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
            elseif QEfly and KEY:lower() == 'e' then
                CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
            elseif QEfly and KEY:lower() == 'q' then
                CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
            end
            pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
        end)
        flyKeyUp = IYMouse.KeyUp:Connect(function(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = 0
            elseif KEY:lower() == 's' then
                CONTROL.B = 0
            elseif KEY:lower() == 'a' then
                CONTROL.L = 0
            elseif KEY:lower() == 'd' then
                CONTROL.R = 0
            elseif KEY:lower() == 'e' then
                CONTROL.Q = 0
            elseif KEY:lower() == 'q' then
                CONTROL.E = 0
            end
        end)
        FLY()
    end
    function NOFLY()
        FLYING = false
        if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
        if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
            Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
        end
        pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
    end
    local unmobilefly = function(speaker)
        pcall(function()
            FLYING = false
            local root = getRoot(speaker.Character)
            root:FindFirstChild(velocityHandlerName):Destroy()
            root:FindFirstChild(gyroHandlerName):Destroy()
            speaker.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
            mfly1:Disconnect()
            mfly2:Disconnect()
        end)
    end
    local mobilefly = function(speaker, vfly)
        unmobilefly(speaker)
        FLYING = true

        local root = getRoot(speaker.Character)
        local camera = workspace.CurrentCamera
        local v3none = Vector3.new()
        local v3zero = Vector3.new(0, 0, 0)
        local v3inf = Vector3.new(9e9, 9e9, 9e9)

        local controlModule = require(speaker.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
        local bv = Instance.new("BodyVelocity")
        bv.Name = velocityHandlerName
        bv.Parent = root
        bv.MaxForce = v3zero
        bv.Velocity = v3zero

        local bg = Instance.new("BodyGyro")
        bg.Name = gyroHandlerName
        bg.Parent = root
        bg.MaxTorque = v3inf
        bg.P = 1000
        bg.D = 50

        mfly1 = speaker.CharacterAdded:Connect(function()
            local bv = Instance.new("BodyVelocity")
            bv.Name = velocityHandlerName
            bv.Parent = root
            bv.MaxForce = v3zero
            bv.Velocity = v3zero

            local bg = Instance.new("BodyGyro")
            bg.Name = gyroHandlerName
            bg.Parent = root
            bg.MaxTorque = v3inf
            bg.P = 1000
            bg.D = 50
        end)

        mfly2 = Library:GiveSignal(RunService.RenderStepped:Connect(function()
            root = getRoot(speaker.Character)
            camera = workspace.CurrentCamera
            if speaker.Character:FindFirstChildWhichIsA("Humanoid") and root and root:FindFirstChild(velocityHandlerName) and root:FindFirstChild(gyroHandlerName) then
                local humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
                local VelocityHandler = root:FindFirstChild(velocityHandlerName)
                local GyroHandler = root:FindFirstChild(gyroHandlerName)

                VelocityHandler.MaxForce = v3inf
                GyroHandler.MaxTorque = v3inf
                if not vfly then humanoid.PlatformStand = true end
                GyroHandler.CFrame = camera.CoordinateFrame
                VelocityHandler.Velocity = v3none

                local direction = controlModule:GetMoveVector()
                if direction.X > 0 then
                    VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
                end
                if direction.X < 0 then
                    VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
                end
                if direction.Z > 0 then
                    VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
                end
                if direction.Z < 0 then
                    VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
                end
            end
        end))
    end
    local function ClearCategory(categoryName)
        for _, v in ipairs(ESPRegistry[categoryName]) do
            v:Remove()
        end

        ESPRegistry[categoryName] = {}
    end
    local function BroadcastToAllESP(funcName, ...)
        for _, category in pairs(ESPRegistry) do
            for i = #category, 1, -1 do
                local espObj = category[i]

                if espObj and espObj[funcName] then
                    espObj[funcName](espObj, ...)
                else
                    table.remove(category, i)
                end
            end
        end
    end
    local Function = {
        InstInter = function()
            for _,v in ipairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") then
                v.HoldDuration = 0
                end
            end
            _G.In =Library:GiveSignal(Workspace.DescendantAdded:Connect(function(inst)
                if inst:IsA("ProximityPrompt") then
                    inst.HoldDuration = 0
                end
            end))
        end,
        CheckPlayers = function(player)
            if Admins[player.Name] then
                if False.NoticePlayers then
                    OnAdminDetected(player.Name)
                end
                if False.KickAntiAdmins then
                    LocalPlayer:Kick("检测到管理员: "..player.Name)
                end
            end
        end,
        NPCTel = function()
            local Npc = {}
            for _,v in ipairs(Workspace.Map.NPCs:GetChildren()) do
                if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                    table.insert(Npc, v.Name)
                end
            end
            return Npc
        end,
        ["自动精通突破"] = function(value)
            False.AutoMastery = value
            if value then
                if _G["自动精通"] then
                    task.cancel(_G["自动精通"])
                    _G["自动精通"] = nil
                end
                _G["自动精通"] = task.spawn(function()
                    while False.AutoMastery do
                        Modules.Masterr:FireServer()
                        Modules.Masteryr:FireServer()
                        task.wait(tonumber(Nu.MasteryTime) or 2)
                    end
                end)
            else
                if _G["自动精通"] then
                    task.cancel(_G["自动精通"])
                    _G["自动精通"] = nil
                end
            end
        end,
        ["自动拾取"] = function()
            if AutoPickLoop then return end 

            local char = LocalPlayer.Character
            local rootPart = char and char:FindFirstChild("HumanoidRootPart")
            if rootPart and not LastPlayerPositionCFrame then
                LastPlayerPositionCFrame = rootPart.CFrame
            end

            if not NoclipConnection then
                NoclipConnection = Library:GiveSignal(
                    RunService.Stepped:Connect(function()
                        local char = LocalPlayer.Character
                        if char then
                            for _, part in ipairs(char:GetDescendants()) do
                                if part:IsA("BasePart") then
                                    part.CanCollide = false
                                end
                            end
                        end
                    end)
                )
            end

            AutoPickLoop = task.spawn(function()
                while False.AutoPick or False.AutoPickBarrel do
                    task.wait(Nu.Waittime or 0.1)

                    local char = LocalPlayer.Character
                    local rootPart = char and char:FindFirstChild("HumanoidRootPart")
                    if not rootPart then continue end

                    SetHover(true)

                    if HasCooldown() then
                        rootPart.CFrame = SafeLocationCFrame
                        task.wait(0.5)
                    else
                        local found = false

                        if Workspace:FindFirstChild("Item") then
                            for _, v in ipairs(Workspace.Item:GetChildren()) do

                                if False.AutoPick
                                and v.Name == "Box"
                                and v:IsA("Part")
                                and v:FindFirstChild("Outline") then

                                    found = true
                                    rootPart.CFrame = v.CFrame + Vector3.new(0,-4,0)
                                    task.wait(1)

                                elseif False.AutoPickBarrel
                                and v.Name == "Barrel"
                                and v:IsA("Part") then

                                    found = true
                                    rootPart.CFrame = v.CFrame + Vector3.new(0,-4,0)
                                    task.wait(1)
                                end

                                if found then
                                    local prompt = v:FindFirstChildOfClass("ProximityPrompt")
                                    if prompt then
                                        prompt.RequiresLineOfSight = false
                                        prompt.HoldDuration = 0
                                        fireproximityprompt(prompt)
                                    end
                                    break
                                end
                            end
                        end

                        if not found then
                            rootPart.CFrame = SafeLocationCFrame
                            task.wait(0.5)
                        end
                    end
                end
                AutoPickLoop = nil

                if NoclipConnection then
                    NoclipConnection:Disconnect()
                    NoclipConnection = nil
                end

                SetHover(false)

                if LastPlayerPositionCFrame then
                    local char = LocalPlayer.Character
                    local rootPart = char and char:FindFirstChild("HumanoidRootPart")
                    if rootPart then
                        rootPart.CFrame = LastPlayerPositionCFrame
                    end
                    LastPlayerPositionCFrame = nil
                end

            end)
        end,
        ["自动出售物品"] = function(value)
            False.AutoSell = value
            if value then
                if AutoSell then
                task.cancel(AutoSell)
                AutoSell = nil
                end
               AutoSell = task.spawn(function()
                while False.AutoSell and task.wait(1) do
                for _,v in ipairs(SellItemList) do
                if typeof(v) == "string" then
                Modules.SellEvent:FireServer(v)
                end
                end
                end
                end)
            else
                if AutoSell then
                task.cancel(AutoSell)
                AutoSell = nil
                end
            end
        end,
        ["透视玩家"] = function(value)
            False.ESPPlayer = value
            if value then
                ClearCategory("Player")
                for _,v in ipairs(Players:GetPlayers()) do
                    if v ~= LocalPlayer then
                        if v.Character then
                            if not False.ESPPlayer then return end
                            local root = v.Character:WaitForChild("HumanoidRootPart",5)
                            if not root then return end
                            local esp = ESP(v.Character,true,v.Name,Color.Players)
                            if esp then
                            esp:ToggleDistance(GlobalDistanceEnabled)
                            esp:SetHealth(GlobalHealthEnabled)
                            table.insert(ESPRegistry.Player, esp)
                            end
                        end
                        Connection.CharacterConnections = Connection.CharacterConnections or {}
                        Connection.CharacterConnections[v] = Library:GiveSignal(v.CharacterAdded:Connect(function(Character)
                            if not False.ESPPlayer then return end
                            local root = Character:WaitForChild("HumanoidRootPart",5)
                            if not root then return end
                            local esp = ESP(Character,true,v.Name,Color.Players)
                            if esp then
                            esp:ToggleDistance(GlobalDistanceEnabled)
                            esp:SetHealth(GlobalHealthEnabled)
                            table.insert(ESPRegistry.Player, esp)
                            end
                        end))
                    end
                end
                PlayerAdd = Library:GiveSignal(Players.PlayerAdded:Connect(function(player)
                    player.CharacterAdded:Connect(function(Character)
                        local esp = ESP(Character,true,player.Name,Color.Players)
                        if esp then
                        esp:ToggleDistance(GlobalDistanceEnabled)
                        esp:SetHealth(GlobalHealthEnabled)
                        table.insert(ESPRegistry.Player, esp)
                        end
                    end)
                end))
            else
                ClearCategory("Player")
                if PlayerAdd then
                    PlayerAdd:Disconnect()
                    PlayerAdd = nil
                end

                if Connection.CharacterConnections then
                    for _, v in pairs(Connection.CharacterConnections) do
                        v:Disconnect()
                    end
                    Connection.CharacterConnections = {}
                end
            end
        end,
        ["透视怪物"] = function(value)
            False.ESPMonster = value
            if value then

                ClearCategory("Monster")

                for _, v in ipairs(Workspace.Living:GetChildren()) do
                    if v:IsA("Model")
                    and not string.find(v.Name, "Dummy")
                    and not Players:FindFirstChild(v.Name) then
                        local esp = ESP(v, true, v.Name,Color.Monster)
                        if esp then
                            esp:ToggleDistance(GlobalDistanceEnabled)
                            esp:SetHealth(GlobalHealthEnabled)
                            table.insert(ESPRegistry.Monster, esp)
                        end
                    end
                end

                Connection.MonsterConnection = Library:GiveSignal(
                    Workspace.Living.ChildAdded:Connect(function(child)

                        if not False.ESPMonster then return end

                        if child:IsA("Model")
                        and not string.find(child.Name, "Dummy")
                        and not Players:FindFirstChild(child.Name) then

                            local esp = ESP(child, true, child.Name,Color.Monster)

                            if esp then
                                esp:SetHealth(GlobalHealthEnabled)
                                esp:ToggleDistance(GlobalDistanceEnabled)
                                table.insert(ESPRegistry.Monster, esp)
                            end
                        end
                    end))

            else

                ClearCategory("Monster")

                if Connection.MonsterConnection then
                    Connection.MonsterConnection:Disconnect()
                    Connection.MonsterConnection = nil
                end
            end
        end
    }
    local StartAdminCheck = function()
        if adminConnection then return end
        for _, v in ipairs(Players:GetPlayers()) do
            Function.CheckPlayers(v)
        end
        adminConnection = Players.PlayerAdded:Connect(Function.CheckPlayers)
    end
    local StopAdminCheck = function()
        if adminConnection then
            adminConnection:Disconnect()
            adminConnection = nil
        end
    end
    local function UpdateAdminCheck()
        if False.NoticePlayers or False.KickAntiAdmins then
            StartAdminCheck()
        else
            StopAdminCheck()
        end
    end

    local NpcName = Function.NPCTel()

    local GetImage = b.GetImage
    for _, v in ipairs(Players:GetPlayers()) do
        Function.CheckPlayers(v)
    end
    AntiAFK()   

    local TB = GetImage()
    local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/tanhoangviet/Obsidian-UI-Modded/main/addons/ThemeManager.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/tanhoangviet/Obsidian-UI-Modded/main/addons/SaveManager.lua"))()
    local Options = Library.Options
    local Toggles = Library.Toggles
    local Watermark = Library:AddDraggableLabel("灵构脚本")
    Watermark:SetVisible(true)
    Library:SetFont(Enum.Font.Gotham)
    Library.ShowToggleFrameInKeybinds = true
    local Window = Library:CreateWindow({
        Title = "灵构",
        Footer = "Game : "..s.MarketplaceService:GetProductInfo(game.PlaceId).Name.." | 版本 : "..VERSION,
        Center = true,
        MobileButtonsSide = "Right",
        NotifySide = "Right",
        Icon = 73663200681073,
        AutoShow = true,
        BorderColor = TB.theme.Outline,
        BorderThickness = 1.5,
        DynamicIsland = true,
        DynamicIslandAsset = 73663200681073,
        DynamicIslandText = "灵构",
        DynamicIslandClosedText = "点击打开UI",
        DynamicIslandOpenText = "悬浮窗已打开",
        DynamicIslandTopOffset = 15,
        DynamicIslandGlow = true,
        DynamicIslandGlowColor = "WhiteColor",
        DynamicIslandGlowTransparency = 0.86,
        DynamicIslandShadow = true,
        DynamicIslandIdleDelay = 2.2,
        DynamicIslandIdleTransparency = 0.56,
        DynamicIslandHoldDuration = 0.45,
        CornerRadius = 10,
        WindowGlow = false,
        WindowGlowColor = "WhiteColor",
        WindowGlowTransparency = 0,
        WindowShadow = false,
        BackgroundImage = TB.ImageID,
        BackgroundImageTransparency = 0.25,
        BackgroundImageContentTransparency = 1,
        BackgroundImagePanelTransparency = 0.08,
    })
    local Tab = {
        MainTab = Window:AddTab("主页","tablet"),
        PlayerDat = Window:AddTab("个人数据","user"),
        ["人物功能"] = Window:AddTab("人物功能", "user"),
        ["功能"] = Window:AddTab("功能","airplay"),
        ["自动"] = Window:AddTab("自动功能","airplay"),
        ["透视"] = Window:AddTab("透视","airplay"),
        ["设置"] = Window:AddTab("设置", "settings"),
    }
    local GroupBox = {
        MainTab = Tab.MainTab:AddLeftGroupbox("主要"),
        PlayerDat = Tab.PlayerDat:AddLeftGroupbox("主要数据"),
        ["玩家功能"] = Tab["人物功能"]:AddLeftGroupbox("玩家功能"),
        NewUpdate = Tab.MainTab:AddRightGroupbox("更新"),
        AntiAdmin = Tab["功能"]:AddLeftGroupbox("防管理员"),
        ESPMm = Tab["透视"]:AddLeftGroupbox("透视"),
        ["透视设置"] = Tab["透视"]:AddRightGroupbox("透视设置"),
        AutoMas = Tab["自动"]:AddLeftGroupbox("自动突破"),
        AutoPick = Tab["自动"]:AddRightGroupbox("自动捡"),
        AutoSell = Tab["自动"]:AddRightGroupbox("自动出售")
    }
    Library:GiveSignal(RunService.RenderStepped:Connect(function()
        FrameCounter += 1;
        if (tick() - FrameTimer) >= 1 then
            FPS = FrameCounter;
            FrameTimer = tick();
            FrameCounter = 0;
        end;
        Watermark:SetText(('灵构脚本 | %s fps | %s ms'):format(
            math.floor(FPS),
            math.floor(s.Stats.Network.ServerStatsItem['Data Ping']:GetValue())
        ));
    end))
    if LocalPlayer:IsInGroup(33034771) then
    GroupBox.MainTab:AddLabel("你的群组身份: "..LocalPlayer:GetRoleInGroup(33034771))
    else
    GroupBox.MainTab:AddLabel("不在群组")
    end
    
    local Label2 = {
        GroupBox.MainTab:AddImage("玩家头像", {Image = "rbxthumb://type=AvatarHeadShot&id="..LocalPlayer.UserId.."&w=420&h=420",
            Height = 200,
            Width = 200,
            MaintainAspectRatio = true,
            BackgroundColor = Color3.fromRGB(30, 30, 30),
            BackgroundTransparency = 0,
            BorderColor = Color3.fromRGB(50, 168, 82),
            BorderThickness = 2,
        }),
        GroupBox.MainTab:AddLabel("作者: AC"),
        GroupBox.MainTab:AddLabel("脚本含有一些bug."),
        GroupBox.MainTab:AddLabel("你的注入器: "..identifyexecutor()),
        GroupBox.MainTab:AddButton("加入群组",{Text = "加入群组",Func = function()s.GroupService:PromptJoinAsync(33034771) end}),
        GroupBox.NewUpdate:AddLabel("之前的更新:"),
        GroupBox.NewUpdate:AddLabel("1.",true),
        GroupBox.NewUpdate:AddDivider(),
        GroupBox.NewUpdate:AddLabel("新更新: "),
        GroupBox.NewUpdate:AddLabel("1.更新UI\n更新自动精通\n更新自动拾取\n更新排版\n更新透视\n优化性能(idk)",true),
        GroupBox.NewUpdate:AddLabel({Text = "2.NPC传送已适配全部".."(有一些可能是在虚空,".."游戏一共有: "..#NpcName.."个NPC)",DoesWrap = true}),
    }
    do --玩家功能
    GroupBox["玩家功能"]:AddToggle("开启玩家速度",{
        Text = "开启玩家速度",
        Default = false,
        Callback =function(v)
        if v then
            sudu = RunService.Heartbeat:Connect(function(deltaTime)
                if LocalPlayer.Character and LocalPlayer.Character.Humanoid and LocalPlayer.Character.Humanoid.Parent then
                    if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                        LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection * Speed * deltaTime  *60 / 10)
                    end
                end
            end)
        elseif not v and sudu then
            sudu:Disconnect()
            sudu = nil
            end
        end
    })
    GroupBox["玩家功能"]:AddToggle("开启玩家视野",{
        Text = "开启玩家视野",
        Default = false,
        Callback =function(v)
            if v then
                fovlol = RunService.RenderStepped:Connect(function()
                    Workspace.Camera.FieldOfView = FOV
                end)
            else
                if fovlol then
                fovlol:Disconnect()
                Workspace.Camera.FieldOfView = 70
                end
            end
        end
    })
    GroupBox["玩家功能"]:AddToggle("开启飞行",{
        Text = '开启飞行',
        Default = false,
        Callback = function(v)
        if v then
            if not Library.IsMobile then
                 NOFLY()
                    task.wait()
                    sFLY(true)
                else
                    mobilefly(LocalPlayer, true)
                end
            else
                if not Library.IsMobile then
                    NOFLY()
                else
                    unmobilefly(LocalPlayer)
                end
            end
        end,
    })
    GroupBox["玩家功能"]:AddInput("飞行速度调整", {
        Text = "飞行速度调整",
        Default = "1" or 1 or vehicleflyspeed ,
        Numeric = true,
        Placeholder = "输入数字",
        Callback = function(Value)
            vehicleflyspeed = Value
        end
    })
    GroupBox["玩家功能"]:AddInput("速度调整", {
        Text = "速度调整",
        Default = 0,
        Numeric = true,
        Callback = function(v)
            Speed = v
        end
    })
    GroupBox["玩家功能"]:AddSlider("视野调整", {
        Text = "视野调整",
        Default = 70 or FOV,
        Min = 0,
        Max = 120,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
            FOV = Value
        end
    })
    GroupBox["玩家功能"]:AddToggle("穿墙",{
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
    GroupBox["玩家功能"]:AddToggle("开启即时互动",{
        Text = "开启即时互动",
        Default = false,
        Callback = function(v)
            False.Instin = v
            if False.Instin then
            Function.InstInter()
            else
            if _G.In then
            _G.In:Disconnect()
            _G.In = nil
            end
            end
        end
    })
    GroupBox["玩家功能"]:AddButton("强制死亡",{
        Text = "强制死亡",
        DoubleClick = true,
        Func = function()
            if LocalPlayer.Character then
        LocalPlayer.Character.Humanoid.Health = 0 
            end
        end
    })
    Button = GroupBox["玩家功能"]:AddButton("关闭防挂机", {
        Text = "关闭防挂机",
        DoubleClick = true,
        Disabled = false,
        Risky = true,
        Func = function()
            if _G.AntiAFKConnection then
                _G.AntiAFKConnection:Disconnect()
                _G.AntiAFKConnection = nil
            end
            Button:SetDisabled(true)
        end,
    })
    end
    do -- 防管理员
        GroupBox.AntiAdmin:AddToggle("防管理员(通知)",{
            Text = "防管理员(通知)",
            Default = false,
            Callback = function(v)
                False.NoticePlayers = v
                UpdateAdminCheck()
            end
        })
        GroupBox.AntiAdmin:AddToggle("防管理员(踢)",{
            Text = "防管理员(踢)",
            Default = false,
            Callback = function(v)
                False.KickAntiAdmins = v
                UpdateAdminCheck()
            end
        })
    end
    do -- 玩家数据
    local PlayerData = {
        PlayerName = GroupBox.PlayerDat:AddLabel("玩家名字: "..LocalPlayer.Name),
        Mastery = GroupBox.PlayerDat:AddLabel("玩家精通: "..LocalPlayer.Data.Mastery.Value),
        Breakthrough = GroupBox.PlayerDat:AddLabel("玩家突破: "..LocalPlayer.Data.Breakthrough.Value),
        Token = GroupBox.PlayerDat:AddLabel("玩家红币: "..LocalPlayer.Data.Token.Value),
        Cash = GroupBox.PlayerDat:AddLabel("玩家马内: "..LocalPlayer.Data.Cash.Value),
        BP = GroupBox.PlayerDat:AddLabel("玩家BP: "..LocalPlayer.Data.BP.Value),
        Fingers = GroupBox.PlayerDat:AddLabel("玩家手指: "..LocalPlayer.Data.Fingers.Value),
        Worth = GroupBox.PlayerDat:AddLabel("玩家荣誉: "..LocalPlayer.Data.Worth.Value),
    }
    local Visiblefalse = GroupBox.PlayerDat:AddButton("更新数据",{
            Text = "更新数据",
            Func = function()
                PlayerData.PlayerName:SetText("玩家名字: "..LocalPlayer.Name)
                PlayerData.Mastery:SetText("玩家精通: "..LocalPlayer.Data.Mastery.Value)
                PlayerData.Token:SetText("玩家红币: "..LocalPlayer.Data.Token.Value)
                PlayerData.Fingers:SetText("玩家手指: "..LocalPlayer.Data.Fingers.Value)
                PlayerData.Cash:SetText("玩家马内: "..LocalPlayer.Data.Cash.Value)
                PlayerData.Worth:SetText("玩家荣誉: "..LocalPlayer.Data.Worth.Value)
                PlayerData.BP:SetText("玩家BP: "..LocalPlayer.Data.BP.Value)
                PlayerData.Breakthrough:SetText("玩家突破: "..LocalPlayer.Data.Breakthrough.Value)
        end,
    })  
    local UpdateTime = GroupBox.PlayerDat:AddInput("设置更新间隔", {
        Text = "设置更新间隔",
        Tooltip = "是等待时间",
        Default = "1",
        Numeric = true,
        Placeholder = "输入数字",
        Callback = function(v)
            Nu.waittime = v
        end
    })
    local AutoUpdateData = GroupBox.PlayerDat:AddToggle("开启自动更新数据",{
        Text = "开启自动更新数据",
        Default = false,
        Callback = function(v)
            False.AutoUpdate = v
            if False.AutoUpdate then
                if _G.AutoUpdate then
                task.cancel(_G.AutoUpdate)
                AutoUpdate = nil
                end
                _G.AutoUpdate = task.spawn(function()
                    while False.AutoUpdate do
                    task.wait(Nu.waittime)
                    PlayerData.PlayerName:SetText("玩家名字: "..LocalPlayer.Name)   
                    PlayerData.Mastery:SetText("玩家精通: "..LocalPlayer.Data.Mastery.Value)
                    PlayerData.Token:SetText("玩家红币: "..LocalPlayer.Data.Token.Value)
                    PlayerData.Fingers:SetText("玩家手指: "..LocalPlayer.Data.Fingers.Value)
                    PlayerData.Cash:SetText("玩家马内: "..LocalPlayer.Data.Cash.Value)
                    PlayerData.Worth:SetText("玩家荣誉: "..LocalPlayer.Data.Worth.Value)
                    PlayerData.BP:SetText("玩家BP: "..LocalPlayer.Data.BP.Value)
                    PlayerData.Breakthrough:SetText("玩家突破: "..LocalPlayer.Data.Breakthrough.Value)
                    end
                end)
            else
                if not False.AutoUpdate and _G.AutoUpdate then
                    task.cancel(_G.AutoUpdate)
                    _G.AutoUpdate = nil
                end
            end
        end
    })
    GroupBox.PlayerDat:AddToggle("隐藏数据",{
        Text = "隐藏数据",
        Default = false,
        Callback =function(v)
            if v then
            PlayerData.PlayerName:SetVisible(false)
            PlayerData.Mastery:SetVisible(false)
            PlayerData.Token:SetVisible(false)
            PlayerData.Fingers:SetVisible(false)
            PlayerData.Cash:SetVisible(false)
            PlayerData.Worth:SetVisible(false)
            PlayerData.Breakthrough:SetVisible(false)
            PlayerData.BP:SetVisible(false)
            Visiblefalse:SetVisible(false)
            AutoUpdateData:SetVisible(false)
            UpdateTime:SetVisible(false)
            else
            PlayerData.PlayerName:SetVisible(true)
            PlayerData.Mastery:SetVisible(true)
            PlayerData.Token:SetVisible(true)
            PlayerData.Fingers:SetVisible(true)
            PlayerData.Cash:SetVisible(true)
            PlayerData.Worth:SetVisible(true)
            PlayerData.BP:SetVisible(true)
            PlayerData.Breakthrough:SetVisible(true)
            Visiblefalse:SetVisible(true)
            AutoUpdateData:SetVisible(true)
            UpdateTime:SetVisible(true)
            end
        end
    })
    end
    do -- 自动精通和突破
    GroupBox.AutoMas:AddToggle("自动精通和突破",{
        Text = "自动精通和突破",
        Default = false,
        Callback = function(v)
            Function["自动精通突破"](v)
        end
    })
    GroupBox.AutoMas:AddInput("设置等待时间", {
        Text = "设置等待时间",
        Default = "2" or 2 or Nu.MasteryTime,
        Numeric = true,
        Placeholder = "输入数字",
        Callback = function(v)
            Nu.MasteryTime = v
        end
    })
    end
    do --透视
    local ESPPla = GroupBox.ESPMm:AddToggle("透视玩家",{
        Text = "透视玩家", 
        Default = false,
        Callback = function(v)
        False.ESPPlayer = v      
        Function["透视玩家"](v)      
    end
    })
    local MonsterESP = GroupBox.ESPMm:AddToggle("透视怪物",{
        Text = "透视怪物",
        Defalut = false,
        Callback = function(v)
        Function["透视怪物"](v)
        end
    })
    GroupBox["透视设置"]:AddToggle("距离显示",{
        Text = "距离显示",
        Default = false,
        Callback = function(v)
		GlobalDistanceEnabled = v
            BroadcastToAllESP("ToggleDistance",v)
        end
    })
    GroupBox["透视设置"]:AddToggle("血量显示",{
        Text = "血量显示",
        Default =false,
        Callback = function(v)
        GlobalHealthEnabled = v
            BroadcastToAllESP("SetHealth",v)
        end
    })
    MonsterESP:AddColorPicker("设置高亮颜色(怪物)",{
        Default = Color.Monster,
        Title = "设置高亮颜色(怪物)",
        Callback = function(v)
            Color.Monster = v
            for _,v1 in ipairs(ESPRegistry.Monster) do
                v1:SetColor(v)
            end
        end
    })
    ESPPla:AddColorPicker("设置高亮颜色(玩家)", {
        Default = Color.Players,
        Title = "设置高亮颜色(玩家)",
        Callback = function(v)
            Color.Players = v
            for _, v1 in ipairs(ESPRegistry.Player) do
                v1:SetColor(v)
            end              
        end
    })
    end
    do --自动捡东西
    GroupBox.AutoPick:AddToggle("自动捡箱子",{
        Text = "自动捡箱子",
        Default = false,
        Callback = function(v)
            False.AutoPick = v
            if False.AutoPick then
            Function["自动拾取"]()
            end
        end
    })
    GroupBox.AutoPick:AddToggle("自动捡木桶",{
        Text = "自动捡木桶",
        Default = false,
        Callback = function(v)
            False.AutoPickBarrel = v
        if False.AutoPickBarrel then
            Function["自动拾取"]()
            end
        end
    })
    end
    do --自动出售
        GroupBox.AutoSell:AddToggle("自动出售物品",{
            Text = "自动出售物品",
            Default = false,
            Callback = function(v)
                False.AutoSell = v
                Function["自动出售物品"](v)
            end
        })
    end
    do--设置
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
    MenuGroup:AddToggle("水印",{
        Text = "水印",
        Default = true,
        Callback = function(value)
            Watermark:SetVisible(value)
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
    MenuGroup:AddSlider("UI圆角", {
        Text = "UI圆角",
        Default = Library.CornerRadius,
        Min = 0,
        Max = 20,
        Rounding = 0,
        Callback = function(value)
            Window:SetCornerRadius(value)
        end
    })
    MenuGroup:AddInput("背景",{
        Text = "背景",
        Finished = false,
        ClearTextOnFocus = false,
        Placeholder = "输入背景ID",
        Default = TB.ImageID,
        Callback = function(v)
            Window:SetBackgroundImage(v)
        end
    })

    MenuGroup:AddDivider()
    MenuGroup:AddLabel("菜单按钮"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "菜单按钮" })
    MenuGroup:AddButton("关闭ui",{
        Text = "关闭UI",
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
    SaveManager:SetSubFolder("数据") 
    SaveManager:BuildConfigSection(Tab["设置"])
    ThemeManager:ApplyToTab(Tab["设置"])
    SaveManager:LoadAutoloadConfig()
    end
end
