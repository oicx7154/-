local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/Library.lua"))()
local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
local trueData = "c9624a5e7b854902ac3c2061e55665e4"
local falseData = "30347a9eccc94841b818f119a1d260c9"

KeyGuardLibrary.Set({
  publicToken = "945a9877c94849f38781830629342006",
  privateToken = "d93fa6dccb1745c1bc86f50d1b96c3db",
  trueData = trueData,
  falseData = falseData,
})
local Key = ""
local response = KeyGuardLibrary.validateDefaultKey(Key) or KeyGuardLibrary.validatePremiumKey(Key)
if response == trueData and getgenv().Key == Key then
    local UserInputService = game:GetService("UserInputService")
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local RunService = game:GetService("RunService")
    local LocalPlayer = Players.LocalPlayer
    local Workspace = game:GetService("Workspace")
    local VirtualUser = game:GetService("VirtualUser")
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
        Title = "灵构大厅",
        Footer = "Game : "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.." 灵构大厅 | 版本 : V0.1.0.0",
        Center = true,
        MobileButtonsSide = "Right",
        NotifySide = "Right",
        Icon = 73663200681073,
        AutoShow = true
    })
    local Tab = {
        ["卡密"] = Window:AddKeyTab("密钥系统"),
        ["设置"] = Window:AddTab("设置", "settings"),
    }
    Tab["卡密"]:AddLabel({
	Text = "卡密系统",
	DoesWrap = true,
	Size = 16,
    }) 
    Tabs.Key:AddKeyBox(Key, function(Success, ReceivedKey)
	print("Expected Key: Banana - Received Key:", ReceivedKey, "| Success:", Success)
	Library:Notify({
		Title = "Expected Key: Banana",
		Description = "Received Key: " .. ReceivedKey .. "\nSuccess: " .. tostring(Success),
		Time = 4,
	})
    end)
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
    SaveManager:SetFolder("大厅/-game")
    SaveManager:SetSubFolder("大厅/数据") 
    SaveManager:BuildConfigSection(Tab["设置"])
    ThemeManager:ApplyToTab(Tab["设置"])
    SaveManager:LoadAutoloadConfig()
    else
        Library:Notify({
    Title = "卡密错误",
    Description = "已复制卡密链接",
    Time = 10
    })
    end
