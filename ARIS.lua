-- =================================================================
-- ARIS - SPEED & TỔNG HỢP V1 (XÁC NHẬN KEY: NICExKHAHACKKEY)
-- =================================================================

local LocalCoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

-- Hàm lấy UI Parent tương thích tối đa với các Executor
local function GetUIParent()
    local parent = nil
    pcall(function()
        if gethui and type(gethui) == "function" then 
            parent = gethui() 
        end
    end)
    if not parent then
        pcall(function() parent = LocalPlayer:FindFirstChildOfClass("PlayerGui") end)
    end
    if not parent then
        pcall(function() parent = LocalCoreGui end)
    end
    return parent
end

local ParentGui = GetUIParent()

-- Dọn dẹp UI cũ nếu tồn tại
local function CleanOldUI(guiName)
    pcall(function()
        if ParentGui and ParentGui:FindFirstChild(guiName) then
            ParentGui[guiName]:Destroy()
        end
    end)
end

CleanOldUI("ArisKeySystemUI")
CleanOldUI("ArisSpeedHub")
CleanOldUI("NiceXTongHopV1Gui")

-- -----------------------------------------------------------------
-- HỆ THỐNG GIAO DIỆN NHẬP KEY (KEY: NICExKHAHACKKEY)
-- -----------------------------------------------------------------
local KeyScreenGui = Instance.new("ScreenGui")
KeyScreenGui.Name = "ArisKeySystemUI"
KeyScreenGui.ResetOnSpawn = false
KeyScreenGui.Parent = ParentGui

local KeyFrame = Instance.new("Frame")
KeyFrame.Size = UDim2.new(0, 320, 0, 160)
KeyFrame.Position = UDim2.new(0.5, -160, 0.5, -80)
KeyFrame.BackgroundColor3 = Color3.fromRGB(20, 22, 30)
KeyFrame.BorderSizePixel = 0
KeyFrame.Active = true
KeyFrame.Draggable = true
KeyFrame.Parent = KeyScreenGui

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 10)
KeyCorner.Parent = KeyFrame

local KeyStroke = Instance.new("UIStroke")
KeyStroke.Color = Color3.fromRGB(0, 255, 170)
KeyStroke.Thickness = 1.5
KeyStroke.Parent = KeyFrame

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Size = UDim2.new(1, 0, 0, 40)
KeyTitle.BackgroundTransparency = 1
KeyTitle.TextColor3 = Color3.fromRGB(0, 255, 170)
KeyTitle.Text = "⚡ XÁC NHẬN KEY HỆ THỐNG ⚡"
KeyTitle.TextSize = 14
KeyTitle.Font = Enum.Font.SourceSansBold
KeyTitle.Parent = KeyFrame

local KeyBox = Instance.new("TextBox")
KeyBox.Size = UDim2.new(1, -40, 0, 35)
KeyBox.Position = UDim2.new(0, 20, 0, 50)
KeyBox.BackgroundColor3 = Color3.fromRGB(12, 14, 20)
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.PlaceholderText = "Nhập key tại đây..."
KeyBox.Text = ""
KeyBox.TextSize = 13
KeyBox.Font = Enum.Font.SourceSans
KeyBox.Parent = KeyFrame

local KeyBoxCorner = Instance.new("UICorner")
KeyBoxCorner.CornerRadius = UDim.new(0, 6)
KeyBoxCorner.Parent = KeyBox

local SubmitBtn = Instance.new("TextButton")
SubmitBtn.Size = UDim2.new(1, -40, 0, 35)
SubmitBtn.Position = UDim2.new(0, 20, 0, 95)
SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 120)
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.Text = "XÁC NHẬN"
SubmitBtn.TextSize = 14
SubmitBtn.Font = Enum.Font.SourceSansBold
SubmitBtn.Parent = KeyFrame

local SubmitCorner = Instance.new("UICorner")
SubmitCorner.CornerRadius = UDim.new(0, 6)
SubmitCorner.Parent = SubmitBtn

-- -----------------------------------------------------------------
-- HÀM KHỞI CHẠY MENU CHÍNH SAU KHIN HẬP DÚNG KEY
-- -----------------------------------------------------------------
local function LoadMainHub()
    -- Tự động chạy script ngoài
    pcall(function()
        loadstring(game:HttpGet("https://vxezestudio.online/api/scripts/script_kfXJrZUcmVdSv/stream/init"))()
    end)

    -- BẢNG MÀU TỔNG HỢP
    local Theme = {
        Background = Color3.fromRGB(18, 19, 23),
        Header = Color3.fromRGB(25, 27, 32),
        Sidebar = Color3.fromRGB(14, 15, 18),
        Card = Color3.fromRGB(28, 30, 36),
        CardHover = Color3.fromRGB(42, 45, 54),
        Accent = Color3.fromRGB(0, 255, 170),
        TextPrimary = Color3.fromRGB(245, 245, 250),
        TextSecondary = Color3.fromRGB(150, 153, 168),
        Border = Color3.fromRGB(40, 43, 52)
    }

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "NiceXTongHopV1Gui"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Parent = ParentGui

    local ToggleButton = Instance.new("ImageButton")
    ToggleButton.Name = "ToggleButton"
    ToggleButton.Size = UDim2.new(0, 50, 0, 50)
    ToggleButton.Position = UDim2.new(0, 15, 0.4, 0)
    ToggleButton.BackgroundColor3 = Theme.Background
    ToggleButton.Image = "rbxassetid://137468238820595"
    ToggleButton.BorderSizePixel = 0
    ToggleButton.Active = true
    ToggleButton.Draggable = true
    ToggleButton.Parent = ScreenGui

    local UICornerToggle = Instance.new("UICorner")
    UICornerToggle.CornerRadius = UDim.new(1, 0)
    UICornerToggle.Parent = ToggleButton

    local ToggleStroke = Instance.new("UIStroke")
    ToggleStroke.Color = Theme.Accent
    ToggleStroke.Thickness = 2
    ToggleStroke.Parent = ToggleButton

    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(0, 520, 0, 320)
    MainFrame.Position = UDim2.new(0.5, -260, 0.5, -160)
    MainFrame.BackgroundColor3 = Theme.Background
    MainFrame.BorderSizePixel = 0
    MainFrame.Active = true
    MainFrame.Draggable = true
    MainFrame.ClipsDescendants = true
    MainFrame.Parent = ScreenGui

    local UICornerMain = Instance.new("UICorner")
    UICornerMain.CornerRadius = UDim.new(0, 14)
    UICornerMain.Parent = MainFrame

    local MainStroke = Instance.new("UIStroke")
    MainStroke.Color = Theme.Border
    MainStroke.Thickness = 1.5
    MainStroke.Parent = MainFrame

    ToggleButton.MouseButton1Click:Connect(function()
        MainFrame.Visible = not MainFrame.Visible
        if MainFrame.Visible then
            MainFrame.Size = UDim2.new(0, 0, 0, 0)
            MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            TweenService:Create(MainFrame, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = UDim2.new(0, 520, 0, 320),
                Position = UDim2.new(0.5, -260, 0.5, -160)
            }):Play()
        end
    end)

    local TopBar = Instance.new("Frame")
    TopBar.Size = UDim2.new(1, 0, 0, 42)
    TopBar.BackgroundColor3 = Theme.Header
    TopBar.BorderSizePixel = 0
    TopBar.Parent = MainFrame

    local UICornerTopBar = Instance.new("UICorner")
    UICornerTopBar.CornerRadius = UDim.new(0, 14)
    UICornerTopBar.Parent = TopBar

    local TitleText = Instance.new("TextLabel")
    TitleText.Size = UDim2.new(0, 220, 0, 20)
    TitleText.Position = UDim2.new(0, 14, 0, 5)
    TitleText.BackgroundTransparency = 1
    TitleText.TextColor3 = Theme.TextPrimary
    TitleText.TextSize = 12
    TitleText.Font = Enum.Font.GothamBold
    TitleText.TextXAlignment = Enum.TextXAlignment.Left
    TitleText.Text = "ARIS - SPEED & TỔNG HỢP V1"
    TitleText.Parent = TopBar

    local SubTitleText = Instance.new("TextLabel")
    SubTitleText.Size = UDim2.new(0, 180, 0, 14)
    SubTitleText.Position = UDim2.new(0, 14, 0, 22)
    SubTitleText.BackgroundTransparency = 1
    SubTitleText.TextColor3 = Theme.Accent
    SubTitleText.TextSize = 9
    SubTitleText.Font = Enum.Font.GothamBold
    SubTitleText.TextXAlignment = Enum.TextXAlignment.Left
    SubTitleText.Text = "by : HAZUI TEAM 🇻🇳"
    SubTitleText.Parent = TopBar

    local CloseBtn = Instance.new("TextButton")
    CloseBtn.Size = UDim2.new(0, 22, 0, 22)
    CloseBtn.Position = UDim2.new(1, -30, 0.5, -11)
    CloseBtn.BackgroundTransparency = 1
    CloseBtn.Text = "✕"
    CloseBtn.TextColor3 = Theme.TextSecondary
    CloseBtn.TextSize = 13
    CloseBtn.Font = Enum.Font.GothamBold
    CloseBtn.Parent = TopBar

    CloseBtn.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)

    local MinBtn = Instance.new("TextButton")
    MinBtn.Size = UDim2.new(0, 22, 0, 22)
    MinBtn.Position = UDim2.new(1, -54, 0.5, -11)
    MinBtn.BackgroundTransparency = 1
    MinBtn.Text = "—"
    MinBtn.TextColor3 = Theme.TextSecondary
    MinBtn.TextSize = 13
    MinBtn.Font = Enum.Font.GothamBold
    MinBtn.Parent = TopBar

    MinBtn.MouseButton1Click:Connect(function() MainFrame.Visible = false end)

    local SideBar = Instance.new("ScrollingFrame")
    SideBar.Size = UDim2.new(0, 125, 1, -48)
    SideBar.Position = UDim2.new(0, 6, 0, 44)
    SideBar.BackgroundColor3 = Theme.Sidebar
    SideBar.BorderSizePixel = 0
    SideBar.ScrollBarThickness = 0
    SideBar.CanvasSize = UDim2.new(0, 0, 0, 0)
    SideBar.Parent = MainFrame

    local UICornerSidebar = Instance.new("UICorner")
    UICornerSidebar.CornerRadius = UDim.new(0, 10)
    UICornerSidebar.Parent = SideBar

    local SideList = Instance.new("UIListLayout")
    SideList.SortOrder = Enum.SortOrder.LayoutOrder
    SideList.Padding = UDim.new(0, 4)
    SideList.Parent = SideBar

    local SidePadding = Instance.new("UIPadding")
    SidePadding.PaddingTop = UDim.new(0, 6)
    SidePadding.PaddingLeft = UDim.new(0, 6)
    SidePadding.PaddingRight = UDim.new(0, 6)
    SidePadding.Parent = SideBar

    SideList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        SideBar.CanvasSize = UDim2.new(0, 0, 0, SideList.AbsoluteContentSize.Y + 12)
    end)

    local ContentArea = Instance.new("Frame")
    ContentArea.Size = UDim2.new(1, -143, 1, -48)
    ContentArea.Position = UDim2.new(0, 137, 0, 44)
    ContentArea.BackgroundTransparency = 1
    ContentArea.Parent = MainFrame

    local tabs = {}
    local tabButtons = {}

    local function CreateTab(tabName, iconText)
        local tabBtn = Instance.new("TextButton")
        tabBtn.Size = UDim2.new(1, 0, 0, 34)
        tabBtn.BackgroundColor3 = Theme.Sidebar
        tabBtn.TextColor3 = Theme.TextSecondary
        tabBtn.Font = Enum.Font.GothamMedium
        tabBtn.TextSize = 10
        tabBtn.Text = " " .. iconText .. " " .. tabName
        tabBtn.TextXAlignment = Enum.TextXAlignment.Left
        tabBtn.BorderSizePixel = 0
        tabBtn.Parent = SideBar

        local UICornerTabBtn = Instance.new("UICorner")
        UICornerTabBtn.CornerRadius = UDim.new(0, 8)
        UICornerTabBtn.Parent = tabBtn

        local tabMain = Instance.new("Frame")
        tabMain.Size = UDim2.new(1, 0, 1, 0)
        tabMain.BackgroundTransparency = 1
        tabMain.Visible = false
        tabMain.Parent = ContentArea

        local tabContainer = Instance.new("ScrollingFrame")
        tabContainer.Name = "Container"
        tabContainer.Size = UDim2.new(1, 0, 1, 0)
        tabContainer.BackgroundTransparency = 1
        tabContainer.ScrollBarThickness = 2
        tabContainer.ScrollBarImageColor3 = Theme.Border
        tabContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
        tabContainer.Parent = tabMain

        local TabList = Instance.new("UIListLayout")
        TabList.SortOrder = Enum.SortOrder.LayoutOrder
        TabList.Padding = UDim.new(0, 6)
        TabList.Parent = tabContainer

        TabList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            tabContainer.CanvasSize = UDim2.new(0, 0, 0, TabList.AbsoluteContentSize.Y + 10)
        end)

        tabBtn.MouseButton1Click:Connect(function()
            for _, t in pairs(tabs) do t.Visible = false end
            for _, b in pairs(tabButtons) do
                TweenService:Create(b, TweenInfo.new(0.2), {BackgroundColor3 = Theme.Sidebar, TextColor3 = Theme.TextSecondary}):Play()
            end
            tabMain.Visible = true
            TweenService:Create(tabBtn, TweenInfo.new(0.2), {BackgroundColor3 = Theme.Card, TextColor3 = Theme.TextPrimary}):Play()
        end)

        table.insert(tabs, tabMain)
        table.insert(tabButtons, tabBtn)

        return tabMain, tabContainer
    end

    local function CreateButton(parentTab, text, callback)
        local btn = Instance.new("TextButton")
        btn.Name = text
        btn.Size = UDim2.new(1, -6, 0, 38)
        btn.BackgroundColor3 = Theme.Card
        btn.TextColor3 = Theme.TextPrimary
        btn.Font = Enum.Font.GothamMedium
        btn.TextSize = 11
        btn.Text = "   " .. text
        btn.TextXAlignment = Enum.TextXAlignment.Left
        btn.BorderSizePixel = 0
        btn.Parent = parentTab

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 8)
        corner.Parent = btn

        local btnStroke = Instance.new("UIStroke")
        btnStroke.Color = Theme.Border
        btnStroke.Thickness = 1
        btnStroke.Parent = btn

        btn.MouseEnter:Connect(function()
            TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = Theme.CardHover}):Play()
        end)

        btn.MouseLeave:Connect(function()
            TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = Theme.Card}):Play()
        end)

        btn.MouseButton1Click:Connect(function() callback(btn) end)
        return btn
    end

    -- ================= CREATING TABS =================
    local MainTab, MainTabScroll = CreateTab("Trang Chủ", "🏠")
    local SpeedTab, SpeedTabScroll = CreateTab("ARIS - SPEED", "⚡")
    local HopTab, HopTabScroll = CreateTab("Hop Server", "🌐")
    local HubsTab, HubsTabScroll = CreateTab("Script Hubs", "📜")
    local ReportTab, ReportTabScroll = CreateTab("Báo Lỗi", "⚠️")
    local SettingTab, SettingTabScroll = CreateTab("Setting", "⚙️")

    tabs[1].Visible = true
    tabButtons[1].BackgroundColor3 = Theme.Card
    tabButtons[1].TextColor3 = Theme.TextPrimary

    -- TAB 1: TRANG CHỦ
    local WelcomeCard = Instance.new("Frame")
    WelcomeCard.Size = UDim2.new(1, -6, 0, 95)
    WelcomeCard.BackgroundColor3 = Theme.Card
    WelcomeCard.BorderSizePixel = 0
    WelcomeCard.Parent = MainTabScroll

    local UICornerWel = Instance.new("UICorner")
    UICornerWel.CornerRadius = UDim.new(0, 10)
    UICornerWel.Parent = WelcomeCard

    local AvatarImage = Instance.new("ImageLabel")
    AvatarImage.Size = UDim2.new(0, 75, 0, 75)
    AvatarImage.Position = UDim2.new(0, 10, 0.5, -37.5)
    AvatarImage.BackgroundColor3 = Theme.Background
    AvatarImage.BorderSizePixel = 0
    AvatarImage.Parent = WelcomeCard

    local UICornerAvatar = Instance.new("UICorner")
    UICornerAvatar.CornerRadius = UDim.new(0, 10)
    UICornerAvatar.Parent = AvatarImage

    pcall(function()
        local content, isLoaded = Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
        if isLoaded then AvatarImage.Image = content end
    end)

    local DisplayNameLabel = Instance.new("TextLabel")
    DisplayNameLabel.Size = UDim2.new(1, -100, 0, 18)
    DisplayNameLabel.Position = UDim2.new(0, 95, 0, 14)
    DisplayNameLabel.BackgroundTransparency = 1
    DisplayNameLabel.TextColor3 = Theme.TextPrimary
    DisplayNameLabel.TextSize = 12
    DisplayNameLabel.Font = Enum.Font.GothamBold
    DisplayNameLabel.TextXAlignment = Enum.TextXAlignment.Left
    DisplayNameLabel.Text = LocalPlayer.DisplayName
    DisplayNameLabel.Parent = WelcomeCard

    local UsernameLabel = Instance.new("TextLabel")
    UsernameLabel.Size = UDim2.new(1, -100, 0, 14)
    UsernameLabel.Position = UDim2.new(0, 95, 0, 36)
    UsernameLabel.BackgroundTransparency = 1
    UsernameLabel.TextColor3 = Theme.TextSecondary
    UsernameLabel.TextSize = 10
    UsernameLabel.Font = Enum.Font.Gotham
    UsernameLabel.TextXAlignment = Enum.TextXAlignment.Left
    UsernameLabel.Text = "@" .. LocalPlayer.Name .. " • ARIS - SPEED V1"
    UsernameLabel.Parent = WelcomeCard

    local AdminLabel = Instance.new("TextLabel")
    AdminLabel.Size = UDim2.new(1, -100, 0, 16)
    AdminLabel.Position = UDim2.new(0, 95, 0, 58)
    AdminLabel.BackgroundTransparency = 1
    AdminLabel.TextColor3 = Color3.fromRGB(255, 200, 0)
    AdminLabel.TextSize = 10
    AdminLabel.Font = Enum.Font.GothamBold
    AdminLabel.TextXAlignment = Enum.TextXAlignment.Left
    AdminLabel.Text = "ADMIN👑 : NICE"
    AdminLabel.Parent = WelcomeCard

    -- TAB 2: ARIS - SPEED (CHỈNH TỐC ĐỘ, DI CHUYỂN, TP)
    local speedEnabled = false
    local customSpeed = 50
    local moveEnabled = false

    local SpeedToggleBtn = CreateButton(SpeedTabScroll, "Bypass Speed: OFF", function(btn)
        speedEnabled = not speedEnabled
        if speedEnabled then
            btn.Text = "   ✓ Bypass Speed: ON"
            btn.TextColor3 = Color3.fromRGB(0, 255, 170)
        else
            btn.Text = "   Bypass Speed: OFF"
            btn.TextColor3 = Theme.TextPrimary
        end
    end)

    local SpeedBoxFrame = Instance.new("Frame")
    SpeedBoxFrame.Size = UDim2.new(1, -6, 0, 38)
    SpeedBoxFrame.BackgroundColor3 = Theme.Card
    SpeedBoxFrame.BorderSizePixel = 0
    SpeedBoxFrame.Parent = SpeedTabScroll

    local UICornerSBF = Instance.new("UICorner")
    UICornerSBF.CornerRadius = UDim.new(0, 8)
    UICornerSBF.Parent = SpeedBoxFrame

    local SpeedLabel = Instance.new("TextLabel")
    SpeedLabel.Size = UDim2.new(0.6, 0, 1, 0)
    SpeedLabel.Position = UDim2.new(0, 10, 0, 0)
    SpeedLabel.BackgroundTransparency = 1
    SpeedLabel.TextColor3 = Theme.TextPrimary
    SpeedLabel.TextSize = 10
    SpeedLabel.Font = Enum.Font.GothamMedium
    SpeedLabel.TextXAlignment = Enum.TextXAlignment.Left
    SpeedLabel.Text = "Tốc độ di chuyển:"
    SpeedLabel.Parent = SpeedBoxFrame

    local SpeedInputBox = Instance.new("TextBox")
    SpeedInputBox.Size = UDim2.new(0, 50, 0, 24)
    SpeedInputBox.Position = UDim2.new(1, -58, 0.5, -12)
    SpeedInputBox.BackgroundColor3 = Theme.Background
    SpeedInputBox.TextColor3 = Theme.Accent
    SpeedInputBox.Font = Enum.Font.GothamBold
    SpeedInputBox.TextSize = 10
    SpeedInputBox.Text = "50"
    SpeedInputBox.BorderSizePixel = 0
    SpeedInputBox.Parent = SpeedBoxFrame

    local UICornerSIB = Instance.new("UICorner")
    UICornerSIB.CornerRadius = UDim.new(0, 4)
    UICornerSIB.Parent = SpeedInputBox

    SpeedInputBox.FocusLost:Connect(function()
        local num = tonumber(SpeedInputBox.Text)
        if num then customSpeed = num else SpeedInputBox.Text = tostring(customSpeed) end
    end)

    local MoveToggleBtn = CreateButton(SpeedTabScroll, "Di Chuyển Nhanh: OFF", function(btn)
        moveEnabled = not moveEnabled
        if moveEnabled then
            btn.Text = "   ✓ Di Chuyển Nhanh: ON"
            btn.TextColor3 = Color3.fromRGB(0, 255, 170)
        else
            btn.Text = "   Di Chuyển Nhanh: OFF"
            btn.TextColor3 = Theme.TextPrimary
        end
    end)

    local TPStatusLabel = Instance.new("TextLabel")
    TPStatusLabel.Size = UDim2.new(1, -6, 0, 38)
    TPStatusLabel.BackgroundColor3 = Theme.Card
    TPStatusLabel.TextColor3 = Color3.fromRGB(255, 200, 0)
    TPStatusLabel.Font = Enum.Font.GothamMedium
    TPStatusLabel.TextSize = 10
    TPStatusLabel.Text = "   ⚡ TP: Đang trong tiến trình..."
    TPStatusLabel.TextXAlignment = Enum.TextXAlignment.Left
    TPStatusLabel.Parent = SpeedTabScroll

    local UICornerTPS = Instance.new("UICorner")
    UICornerTPS.CornerRadius = UDim.new(0, 8)
    UICornerTPS.Parent = TPStatusLabel

    -- TAB 3: HOP SERVER
    local HopConfigFrame = Instance.new("Frame")
    HopConfigFrame.Size = UDim2.new(1, -6, 0, 38)
    HopConfigFrame.BackgroundColor3 = Theme.Card
    HopConfigFrame.BorderSizePixel = 0
    HopConfigFrame.Parent = HopTabScroll

    local UICornerHopConfig = Instance.new("UICorner")
    UICornerHopConfig.CornerRadius = UDim.new(0, 8)
    UICornerHopConfig.Parent = HopConfigFrame

    local MaxPlayersLabel = Instance.new("TextLabel")
    MaxPlayersLabel.Size = UDim2.new(0.65, 0, 1, 0)
    MaxPlayersLabel.Position = UDim2.new(0, 10, 0, 0)
    MaxPlayersLabel.BackgroundTransparency = 1
    MaxPlayersLabel.TextColor3 = Theme.TextPrimary
    MaxPlayersLabel.TextSize = 10
    MaxPlayersLabel.Font = Enum.Font.GothamMedium
    MaxPlayersLabel.TextXAlignment = Enum.TextXAlignment.Left
    MaxPlayersLabel.Text = "Max Players Allowed:"
    MaxPlayersLabel.Parent = HopConfigFrame

    local MaxPlayersBox = Instance.new("TextBox")
    MaxPlayersBox.Size = UDim2.new(0, 40, 0, 22)
    MaxPlayersBox.Position = UDim2.new(1, -48, 0.5, -11)
    MaxPlayersBox.BackgroundColor3 = Theme.Background
    MaxPlayersBox.TextColor3 = Theme.TextPrimary
    MaxPlayersBox.Font = Enum.Font.GothamBold
    MaxPlayersBox.TextSize = 10
    MaxPlayersBox.Text = "1"
    MaxPlayersBox.BorderSizePixel = 0
    MaxPlayersBox.Parent = HopConfigFrame

    local UICornerBox = Instance.new("UICorner")
    UICornerBox.CornerRadius = UDim.new(0, 4)
    UICornerBox.Parent = MaxPlayersBox

    CreateButton(HopTabScroll, "Hop Low Server", function(btn)
        btn.Text = "   ⏳ Quét Server..."
        pcall(function()
            local maxAllowed = tonumber(MaxPlayersBox.Text) or 1
            local validServers = {}
            local cursor = ""
            for page = 1, 5 do
                local url = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
                if cursor ~= "" then url = url .. "&cursor=" .. cursor end
                local success, result = pcall(function() return game:HttpGet(url) end)
                if success then
                    local data = HttpService:JSONDecode(result)
                    if data and data.data then
                        for _, s in ipairs(data.data) do
                            if s.playing and s.playing <= maxAllowed and s.playing >= 1 and s.id ~= game.JobId then
                                table.insert(validServers, s.id)
                            end
                        end
                        if data.nextPageCursor then cursor = data.nextPageCursor else break end
                    else break end
                else break end
                task.wait(0.1)
            end

            if #validServers > 0 then
                TeleportService:TeleportToPlaceInstance(game.PlaceId, validServers[math.random(1, #validServers)], LocalPlayer)
            else
                TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end
        end)
    end)

    CreateButton(HopTabScroll, "Rejoin Game", function()
        pcall(function() TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer) end)
    end)

    -- TAB 4: SCRIPT HUBS
    local GameSelectionFrame = Instance.new("Frame")
    GameSelectionFrame.Size = UDim2.new(1, 0, 1, 0)
    GameSelectionFrame.BackgroundTransparency = 1
    GameSelectionFrame.Parent = HubsTabScroll

    local SelectionList = Instance.new("UIListLayout")
    SelectionList.SortOrder = Enum.SortOrder.LayoutOrder
    SelectionList.Padding = UDim.new(0, 6)
    SelectionList.Parent = GameSelectionFrame

    local ScriptsContainer = Instance.new("Frame")
    ScriptsContainer.Size = UDim2.new(1, 0, 1, 0)
    ScriptsContainer.BackgroundTransparency = 1
    ScriptsContainer.Visible = false
    ScriptsContainer.Parent = HubsTab

    local BackBtn = Instance.new("TextButton")
    BackBtn.Size = UDim2.new(1, -6, 0, 30)
    BackBtn.BackgroundColor3 = Theme.Header
    BackBtn.TextColor3 = Theme.TextPrimary
    BackBtn.Font = Enum.Font.GothamBold
    BackBtn.TextSize = 10
    BackBtn.Text = "⬅ Quay Lại Danh Mục Script"
    BackBtn.BorderSizePixel = 0
    BackBtn.Parent = ScriptsContainer

    local UICornerBack = Instance.new("UICorner")
    UICornerBack.CornerRadius = UDim.new(0, 8)
    UICornerBack.Parent = BackBtn

    local NoKeyFrame = Instance.new("Frame")
    NoKeyFrame.Size = UDim2.new(1, 0, 1, -36)
    NoKeyFrame.Position = UDim2.new(0, 0, 0, 36)
    NoKeyFrame.BackgroundTransparency = 1
    NoKeyFrame.Visible = false
    NoKeyFrame.Parent = ScriptsContainer

    local SearchNoKeyFrame = Instance.new("Frame")
    SearchNoKeyFrame.Size = UDim2.new(1, -6, 0, 30)
    SearchNoKeyFrame.BackgroundColor3 = Theme.Card
    SearchNoKeyFrame.BorderSizePixel = 0
    SearchNoKeyFrame.Parent = NoKeyFrame

    local SearchNoKeyBox = Instance.new("TextBox")
    SearchNoKeyBox.Size = UDim2.new(1, -12, 1, 0)
    SearchNoKeyBox.Position = UDim2.new(0, 6, 0, 0)
    SearchNoKeyBox.BackgroundTransparency = 1
    SearchNoKeyBox.TextColor3 = Theme.TextPrimary
    SearchNoKeyBox.PlaceholderText = "🔍 Tìm kiếm Script (NO KEY)..."
    SearchNoKeyBox.PlaceholderColor3 = Theme.TextSecondary
    SearchNoKeyBox.Font = Enum.Font.GothamMedium
    SearchNoKeyBox.TextSize = 10
    SearchNoKeyBox.Text = ""
    SearchNoKeyBox.TextXAlignment = Enum.TextXAlignment.Left
    SearchNoKeyBox.Parent = SearchNoKeyFrame

    local NoKeyScroll = Instance.new("ScrollingFrame")
    NoKeyScroll.Size = UDim2.new(1, 0, 1, -36)
    NoKeyScroll.Position = UDim2.new(0, 0, 0, 36)
    NoKeyScroll.BackgroundTransparency = 1
    NoKeyScroll.ScrollBarThickness = 2
    NoKeyScroll.Parent = NoKeyFrame

    local NoKeyList = Instance.new("UIListLayout")
    NoKeyList.SortOrder = Enum.SortOrder.LayoutOrder
    NoKeyList.Padding = UDim.new(0, 6)
    NoKeyList.Parent = NoKeyScroll

    NoKeyList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        NoKeyScroll.CanvasSize = UDim2.new(0, 0, 0, NoKeyList.AbsoluteContentSize.Y + 10)
    end)

    local KeyScriptFrame = Instance.new("Frame")
    KeyScriptFrame.Size = UDim2.new(1, 0, 1, -36)
    KeyScriptFrame.Position = UDim2.new(0, 0, 0, 36)
    KeyScriptFrame.BackgroundTransparency = 1
    KeyScriptFrame.Visible = false
    KeyScriptFrame.Parent = ScriptsContainer

    local SearchKeyFrame = Instance.new("Frame")
    SearchKeyFrame.Size = UDim2.new(1, -6, 0, 30)
    SearchKeyFrame.BackgroundColor3 = Theme.Card
    SearchKeyFrame.BorderSizePixel = 0
    SearchKeyFrame.Parent = KeyScriptFrame

    local SearchKeyBox = Instance.new("TextBox")
    SearchKeyBox.Size = UDim2.new(1, -12, 1, 0)
    SearchKeyBox.Position = UDim2.new(0, 6, 0, 0)
    SearchKeyBox.BackgroundTransparency = 1
    SearchKeyBox.TextColor3 = Theme.TextPrimary
    SearchKeyBox.PlaceholderText = "🔍 Tìm kiếm Script (KEY)..."
    SearchKeyBox.PlaceholderColor3 = Theme.TextSecondary
    SearchKeyBox.Font = Enum.Font.GothamMedium
    SearchKeyBox.TextSize = 10
    SearchKeyBox.Text = ""
    SearchKeyBox.TextXAlignment = Enum.TextXAlignment.Left
    SearchKeyBox.Parent = SearchKeyFrame

    local KeyScriptScroll = Instance.new("ScrollingFrame")
    KeyScriptScroll.Size = UDim2.new(1, 0, 1, -36)
    KeyScriptScroll.Position = UDim2.new(0, 0, 0, 36)
    KeyScriptScroll.BackgroundTransparency = 1
    KeyScriptScroll.ScrollBarThickness = 2
    KeyScriptScroll.Parent = KeyScriptFrame

    local KeyScriptList = Instance.new("UIListLayout")
    KeyScriptList.SortOrder = Enum.SortOrder.LayoutOrder
    KeyScriptList.Padding = UDim.new(0, 6)
    KeyScriptList.Parent = KeyScriptScroll

    KeyScriptList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        KeyScriptScroll.CanvasSize = UDim2.new(0, 0, 0, KeyScriptList.AbsoluteContentSize.Y + 10)
    end)

    BackBtn.MouseButton1Click:Connect(function()
        ScriptsContainer.Visible = false
        NoKeyFrame.Visible = false
        KeyScriptFrame.Visible = false
        GameSelectionFrame.Visible = true
    end)

    CreateButton(GameSelectionFrame, "STEAL AN EGG (NO KEY)", function()
        GameSelectionFrame.Visible = false
        ScriptsContainer.Visible = true
        NoKeyFrame.Visible = true
        KeyScriptFrame.Visible = false
    end)

    CreateButton(GameSelectionFrame, "STEAL AN EGG (KEY)", function()
        GameSelectionFrame.Visible = false
        ScriptsContainer.Visible = true
        NoKeyFrame.Visible = false
        KeyScriptFrame.Visible = true
    end)

    local noKeyScriptButtons = {}

    local btnAjjan = CreateButton(NoKeyScroll, "AJJAN", function(btn)
        btn.Text = "   ⏳ Đang Chạy..."
        pcall(function() loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/271f96ca25f29ae395be1c0f9e6f4ead.lua"))() end)
        task.wait(0.5)
        btn.Text = "   ✓ ĐÃ KÍCH HOẠT"
    end)
    table.insert(noKeyScriptButtons, btnAjjan)

    local btnChilly = CreateButton(NoKeyScroll, "CHILLY HUB", function(btn)
        btn.Text = "   ⏳ Đang Chạy..."
        pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/chilly.lua"))() end)
        task.wait(0.5)
        btn.Text = "   ✓ ĐÃ KÍCH HOẠT"
    end)
    table.insert(noKeyScriptButtons, btnChilly)

    local btnAris = CreateButton(NoKeyScroll, "ARIS HUB", function(btn)
        btn.Text = "   ⏳ Đang Chạy..."
        pcall(function() loadstring(game:HttpGet("https://vxezestudio.online/api/scripts/script_kfXJrZUcmVdSv/stream/init"))() end)
        task.wait(0.5)
        btn.Text = "   ✓ ĐÃ KÍCH HOẠT"
    end)
    table.insert(noKeyScriptButtons, btnAris)

    local keyScriptButtons = {}

    SearchNoKeyBox:GetPropertyChangedSignal("Text"):Connect(function()
        local query = string.lower(SearchNoKeyBox.Text)
        for _, btn in pairs(noKeyScriptButtons) do
            if query == "" then
                btn.Visible = true
            else
                btn.Visible = string.find(string.lower(btn.Name), query) ~= nil
            end
        end
    end)

    SearchKeyBox:GetPropertyChangedSignal("Text"):Connect(function()
        local query = string.lower(SearchKeyBox.Text)
        for _, btn in pairs(keyScriptButtons) do
            if query == "" then
                btn.Visible = true
            else
                btn.Visible = string.find(string.lower(btn.Name), query) ~= nil
            end
        end
    end)

    -- TAB 5: BÁO LỖI
    CreateButton(ReportTabScroll, "Copy Link TikTok Support", function(btn)
        pcall(function() if setclipboard then setclipboard("https://www.tiktok.com/@nice001hi") end end)
        btn.Text = "   ✓ Đã sao chép TikTok!"
        task.wait(2)
        btn.Text = "   Copy Link TikTok Support"
    end)

    -- TAB 6: SETTING
    local InfoCard = Instance.new("Frame")
    InfoCard.Size = UDim2.new(1, -6, 0, 44)
    InfoCard.BackgroundColor3 = Theme.Card
    InfoCard.BorderSizePixel = 0
    InfoCard.Parent = SettingTabScroll

    local UICornerInfoCard = Instance.new("UICorner")
    UICornerInfoCard.CornerRadius = UDim.new(0, 8)
    UICornerInfoCard.Parent = InfoCard

    local UpdateInfoTitle = Instance.new("TextLabel")
    UpdateInfoTitle.Size = UDim2.new(1, -20, 0, 18)
    UpdateInfoTitle.Position = UDim2.new(0, 10, 0, 4)
    UpdateInfoTitle.BackgroundTransparency = 1
    UpdateInfoTitle.TextColor3 = Theme.TextPrimary
    UpdateInfoTitle.TextSize = 10
    UpdateInfoTitle.Font = Enum.Font.GothamBold
    UpdateInfoTitle.TextXAlignment = Enum.TextXAlignment.Left
    UpdateInfoTitle.Text = "📢 Thông Tin Cập Nhật Menu:"
    UpdateInfoTitle.Parent = InfoCard

    local UpdateStatusLabel = Instance.new("TextLabel")
    UpdateStatusLabel.Size = UDim2.new(1, -20, 0, 16)
    UpdateStatusLabel.Position = UDim2.new(0, 10, 0, 22)
    UpdateStatusLabel.BackgroundTransparency = 1
    UpdateStatusLabel.TextColor3 = Color3.fromRGB(255, 170, 0)
    UpdateStatusLabel.TextSize = 10
    UpdateStatusLabel.Font = Enum.Font.GothamMedium
    UpdateStatusLabel.TextXAlignment = Enum.TextXAlignment.Left
    UpdateStatusLabel.Text = "V2 chưa hoàn thành"
    UpdateStatusLabel.Parent = InfoCard

    CreateButton(SettingTabScroll, "Ultra Smooth Graphics (Fix Lag)", function(btn)
        pcall(function() settings().Rendering.QualityLevel = Enum.QualityLevel.Level01 end)
        pcall(function()
            Lighting.GlobalShadows = false
            Lighting.FogEnd = 9e9
            Lighting.Brightness = 0
            for _, v in ipairs(Lighting:GetChildren()) do
                if v:IsA("PostEffect") or v:IsA("Atmosphere") or v:IsA("Clouds") or v:IsA("Sky") then 
                    v.Enabled = false 
                end
            end
        end)

        for _, v in ipairs(workspace:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.Material = Enum.Material.SmoothPlastic
                    v.Reflectance = 0
                    v.CastShadow = false
                elseif v:IsA("Decal") or v:IsA("Texture") or v:IsA("SurfaceAppearance") then
                    v:Destroy()
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then
                    v.Enabled = false
                end
            end)
        end
        btn.Text = "   ✓ Đã Tối Ưu Mượt Mà"
    end)

    -- VÒNG LẶP ÉP VẬT LÝ & TỐC ĐỘ DI CHUYỂN
    RunService.Heartbeat:Connect(function(dt)
        local char = LocalPlayer.Character
        if char then
            local humanoid = char:FindFirstChildOfClass("Humanoid")
            local rootPart = char:FindFirstChild("HumanoidRootPart")
            if humanoid and rootPart then
                if speedEnabled then
                    humanoid.WalkSpeed = customSpeed
                    if humanoid.MoveDirection.Magnitude > 0 then
                        rootPart.CFrame = rootPart.CFrame + (humanoid.MoveDirection * customSpeed * dt * 0.5)
                    end
                end
                if moveEnabled then
                    humanoid.JumpPower = 75
                else
                    humanoid.JumpPower = 50
                end
            end
        end
    end)
end

-- -----------------------------------------------------------------
-- SỰ KIỆN XÁC NHẬN KEY (NICExKHAHACKKEY)
-- -----------------------------------------------------------------
SubmitBtn.MouseButton1Click:Connect(function()
    if KeyBox.Text == "NICExKHAHACKKEY" then
        KeyScreenGui:Destroy()
        LoadMainHub()
    else
        SubmitBtn.Text = "SAI KEY! THỬ LẠI"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
        task.wait(1.5)
        SubmitBtn.Text = "XÁC NHẬN"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 120)
    end
end)
