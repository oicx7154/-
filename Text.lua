getgenv().Key = ""
if not getgenv().Key or getgenv().Key == "" then
    game.Players.LocalPlayer:kick("请在脚本中填写Key")
elseif getgenv().Key ~= "Key" then
    local ex = identifyexecutor()
    print(ex)
end
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local Url =  "https://raw.githubusercontent.com/oicx7154/-/refs/heads/main/"
local Aut = Url.."Aut.lua"
local Hunter = Url.."Hunter.lua"
local Forsaken = Url.."Forsaken.lua"
local SS = Url.."%E6%A8%B1%E8%8A%B1%E6%91%8A%E4%BD%8D.lua"
local GaG = Url.."种植花园.lua"
local identifyexecutor = identifyexecutor() or function() return print("未知注入器") end

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
    Title = "灵构大厅",
    Footer = "Game : "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.." 灵构大厅 | 版本 : V0.1.0.0",
    Center = true,
    MobileButtonsSide = "Right",
    NotifySide = "Right",
    Icon = 73663200681073,
    AutoShow = true
})
local Tab = {
    MaxinTab = Window:AddTab("主页","user"),
    MainTab = Window:AddTab("脚本", "airplay"),
    ["设置"] = Window:AddTab("设置", "settings"),
}
local GroupBox = {
    MaxinTab = Tab.MaxinTab:AddLeftGroupbox("主要"),
    Update = Tab.MainTab:AddRightGroupbox("更新"),
	Scripts = Tab.MainTab:AddLeftGroupbox("脚本"),
}
GroupBox.Update:AddLabel("脚本更新: ")
GroupBox.Update:AddDivider()
GroupBox.Update:AddLabel("樱花摊位已更新")
GroupBox.Update:AddLabel("樱花摊位更新日期: 2025/5/24")
GroupBox.MaxinTab:AddLabel("作者: AC")
GroupBox.MaxinTab:AddLabel("倒卖扫码了.")
GroupBox.MaxinTab:AddDivider()
GroupBox.MaxinTab:AddLabel("你的注入器: "..identifyexecutor)
GroupBox.MaxinTab:AddButton("复制Q群",{
    Text = "复制Q群",
    Func = function()
        setclipboard("996155023")
    end
})
GroupBox.Scripts:AddButton("Hunters脚本",{
    Text = "Hunters(猎人)脚本",
    Func = function()        
        if game.PlaceId == 72992062125248 then
        Library:Unload()        
        loadstring(game:HttpGet(Hunter))()
        else
            Library:Notify({
                Title = "错误",
                Description = "请在正确的游戏中使用此脚本.",
                Time = 5,
                SoundId = 3779045779
            })
        end
    end
})
GroupBox.Scripts:AddDivider()
GroupBox.Scripts:AddButton("樱花摊位脚本",{
    Text = "樱花摊位脚本",
    Func = function()
        if game.PlaceId == 8534845015 then
        Library:Unload()        
        loadstring(game:HttpGet(SS))()
        else
            Library:Notify({
                Title = "错误",
                Description = "请在正确的游戏中使用此脚本.",
                Time = 5,
                SoundId = 3779045779
            })
        end
    end
})
GroupBox.Scripts:AddDivider()
GroupBox.Scripts:AddButton("被遗弃脚本",{
    Text = "被遗弃脚本",
    Func = function()
        if game.PlaceId == 18687417158 then
        Library:Unload()        
        loadstring(game:HttpGet(Forsaken))()
        else
            Library:Notify({
                Title = "错误",
                Description = "请在正确的游戏中使用此脚本.",
                Time = 5,
                SoundId = 3779045779
            })
        end
    end
})
GroupBox.Scripts:AddDivider()
GroupBox.Scripts:AddButton("Aut脚本",{
    Text = "Aut脚本",
    Func = function()
        Library:Unload()     
        loadstring(HttpService:GetAsync(Aut))()   
    end
})
GroupBox.Scripts:AddDivider()
GroupBox.Scripts:AddButton("种植花园脚本",{
    Text = "种植花园脚本",
    Func = function()
        if game.PlaceId == 126884695634066 then 
        loadstring(game:HttpGet(GaG))()
        else
            Library:Notify({
                Title = "错误",
                Description = "请在正确的游戏中使用此脚本.",
                Time = 5,
                SoundId = 3779045779
            })
        end
    end
})
GroupBox.Scripts:AddDivider()

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
ThemeManager:SetFolder("大厅")
SaveManager:SetFolder("大厅")
SaveManager:SetSubFolder("大厅") 
SaveManager:BuildConfigSection(Tab["设置"])
ThemeManager:ApplyToTab(Tab["设置"])
SaveManager:LoadAutoloadConfig()
