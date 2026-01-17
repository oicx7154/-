s = setmetatable({},{__index=function(t,k)local v=cloneref(game:GetService(k))rawset(t,k,v)return v end,__call=function(_,k)return k and s[k]or game end})

local Players = s.Players
local RunService = s.RunService
local UserInputService = s.UserInputService
local Camera = workspace.CurrentCamera

workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
    Camera = workspace.CurrentCamera
end)

local Aiming = {
    FOV = 60,
    NPCs = false,
    Players = false,
    Enabled = false,
    ShowFOV = false,
    AimTracer = true,
    DynamicFOV = false,
    FOVColor = Color3.fromRGB(255, 255, 255),
    AimTracerColor = Color3.fromRGB(255, 0, 0),
    CurrentTarget = nil
}

local InternalFOV = Aiming.FOV
local FOVCircle = Drawing.new("Circle")

FOVCircle.NumSides = 20
FOVCircle.Transparency = 1
FOVCircle.Thickness = 2
FOVCircle.Color = Aiming.FOVColor
FOVCircle.Filled = false

local FOVTracer = Drawing.new("Line")

FOVTracer.Thickness = 2

local function UpdateFOV()

    if Aiming.ShowFOV then
        if Aiming.DynamicFOV then
            InternalFOV = Aiming.FOV * (70 / Camera.FieldOfView)
        else
            InternalFOV = Aiming.FOV
        end
    
        FOVCircle.Visible = true
        FOVCircle.Radius = InternalFOV
        FOVCircle.Color = Aiming.FOVColor
        FOVCircle.Position = UserInputService:GetMouseLocation()
    else
        FOVCircle.Visible = false
    end

end

local function GetCharactersInViewport() : {{Character: Model, Position: Vector2}}
    local ToProcess = {}
    local CharactersOnScreen = {}

    if Aiming.Players then
        for _, Player in next, Players:GetPlayers() do
            if Player == Players.LocalPlayer then
                continue
            end

            if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
                table.insert(ToProcess, Player.Character)
            end
        end
    end

    if Aiming.NPCs then
        for _, NPC in next, game:GetService("CollectionService"):GetTagged("NPC") do
            if NPC:IsDescendantOf(workspace) and NPC:IsA("Model") and NPC:FindFirstChild("HumanoidRootPart") and game:GetService("CollectionService"):HasTag(NPC, "ActiveCharacter") then
                table.insert(ToProcess, NPC)
            end
        end
    end

    for _, v in next, ToProcess do
        local Position, OnScreen = Camera:WorldToViewportPoint(v.HumanoidRootPart.Position)
        if OnScreen then
            table.insert(CharactersOnScreen, {
                Character = v,
                Position = Vector2.new(Position.X, Position.Y)
            })
        end
    end

    return CharactersOnScreen
end

local function DistanceFromMouse(Position : Vector2) : number
    return (UserInputService:GetMouseLocation() - Position).Magnitude
end

local function GetPlayersInFOV() : {{Character: Model, Distance: number, Position: Vector2}}
    local Characters = GetCharactersInViewport()
    local PlayersInFOV = {}

    for _, Character in next, Characters do
        local Distance = DistanceFromMouse(Character.Position)
        if Distance <= InternalFOV then
            table.insert(PlayersInFOV, {
                Character = Character.Character,
                Distance = Distance,
                Position = Character.Position
            })
        end
    end

    return PlayersInFOV
end

local function GetClosestPlayer() : (Model, number, Vector2)
    local PlayersInFOV = GetPlayersInFOV()
    local plr = nil
    local dis = math.huge
    local pos = nil

    for _, v in next, PlayersInFOV do
        if v.Distance < dis then
            plr = v.Character
            pos = v.Position
            dis = v.Distance
        end
    end

    return plr, dis, pos
end

local Connection = RunService.RenderStepped:Connect(function()

    if Aiming.Enabled then
        UpdateFOV()
        local plr, dis, pos = GetClosestPlayer()
        Aiming.CurrentTarget = plr
        if plr then
            FOVTracer.Visible = Aiming.AimTracer
            FOVTracer.From = UserInputService:GetMouseLocation()
            FOVTracer.To = pos
            FOVTracer.Color = Aiming.AimTracerColor
        else
            FOVTracer.Visible = false
        end
    else
        FOVCircle.Visible = false
        FOVTracer.Visible = false
        Aiming.CurrentTarget = nil
    end

end)

return Aiming
