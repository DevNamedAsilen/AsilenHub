-- ASILEN HUB | V26 FULL AUTO | OWNER: LuuHoangThinh
local LP = game:GetService("Players").LocalPlayer
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local VIM = game:GetService("VirtualInputManager")
local GS = game:GetService("GuiService")

-- Biến cấu hình
_G.Team = "Pirates" -- Tự động chọn phe Hải tặc
_G.KenTriggered = false 

-- 1. HÀM TỰ CHỌN TEAM (NEW)
local function AutoSelectTeam()
    pcall(function()
        repeat task.wait(0.5) until LP:FindFirstChild("PlayerGui")
        local mainGui = LP.PlayerGui:WaitForChild("Main", 10)
        if mainGui then
            local chooseTeam = mainGui:FindFirstChild("ChooseTeam")
            if chooseTeam and chooseTeam.Visible then
                -- Tìm nút bấm phe Hải tặc
                local piratesBtn = chooseTeam:FindFirstChild("Container")
                    :FindFirstChild("Pirates")
                    :FindFirstChild("Frame")
                    :FindFirstChild("ViewportFrame")
                    :FindFirstChild("TextButton")
                
                if piratesBtn then
                    -- Thực hiện cú chạm "vật lý" để chọn phe
                    local x = piratesBtn.AbsolutePosition.X + (piratesBtn.AbsoluteSize.X / 2)
                    local y = piratesBtn.AbsolutePosition.Y + (piratesBtn.AbsoluteSize.Y / 2) + 36
                    VIM:SendMouseButtonEvent(x, y, 0, true, game, 1)
                    task.wait(0.1)
                    VIM:SendMouseButtonEvent(x, y, 0, false, game, 1)
                    print("♥ Kurumi: Đã gia nhập phe Hải tặc cho ngài Thịnh! ♥")
                end
            end
        end
    end)
end

-- 2. GIAO DIỆN PREMIUM CÂN ĐỐI
local sg = Instance.new("ScreenGui", LP.PlayerGui)
sg.Name = "AsilenHub_V26_FullAuto"
sg.ResetOnSpawn = false

local main = Instance.new("Frame", sg)
main.Size = UDim2.new(0, 300, 0, 260)
main.Position = UDim2.new(0.5, -150, 0.2, 0)
main.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
main.BorderSizePixel = 0
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 15)
local stroke = Instance.new("UIStroke", main)
stroke.Thickness = 3
stroke.Color = Color3.fromRGB(255, 0, 0)

-- LOGO CHUẨN (Căn giữa)
local avatar = Instance.new("ImageLabel", main)
avatar.Size = UDim2.new(0, 75, 0, 75)
avatar.Position = UDim2.new(0.5, -37.5, 0.06, 0)
avatar.Image = "rbxthumb://type=Asset&id=121572868797521&w=420&h=420"
avatar.BackgroundTransparency = 1
Instance.new("UICorner", avatar).CornerRadius = UDim.new(0, 10)

-- TEXT INFO
local function AddLabel(text, yPos, size, color, isBold)
    local lbl = Instance.new("TextLabel", main)
    lbl.Size = UDim2.new(1, 0, 0, 25)
    lbl.Position = UDim2.new(0, 0, yPos, 0)
    lbl.Text = text
    lbl.TextColor3 = color
    lbl.Font = isBold and Enum.Font.GothamBold or Enum.Font.GothamMedium
    lbl.TextSize = size
    lbl.BackgroundTransparency = 1
    lbl.TextXAlignment = Enum.TextXAlignment.Center
    return lbl
end

AddLabel("AUTO FARM OBSERVATION", 0.38, 16, Color3.new(1,1,1), true)
AddLabel("ASILEN HUB | PREMIUM", 0.48, 14, Color3.fromRGB(255, 0, 0), true)
AddLabel("Name: LuuHoangThinh", 0.60, 14, Color3.new(1,1,1), false)
AddLabel("Age: 19", 0.68, 14, Color3.fromRGB(200, 200, 200), false)

local timerTxt = AddLabel("AUTO HOP: 30s", 0.82, 22, Color3.fromRGB(255, 255, 0), true)

-- === [ CÁC HÀM CỐT LÕI ] ===

local function ForceKen()
    if _G.KenTriggered then return end
    pcall(function()
        local kenFrame = LP.PlayerGui:FindFirstChild("BoundActionKen", true)
        if kenFrame then
            local btn = kenFrame:FindFirstChild("Button")
            if btn and btn.Visible then
                local x = btn.AbsolutePosition.X + (btn.AbsoluteSize.X / 2)
                local y = btn.AbsolutePosition.Y + (btn.AbsoluteSize.Y / 2) + 36 
                VIM:SendMouseButtonEvent(x, y, 0, true, game, 1)
                task.wait(0.1)
                VIM:SendMouseButtonEvent(x, y, 0, false, game, 1)
                _G.KenTriggered = true 
            end
        end
    end)
end

local function FlyToMonster()
    local char = LP.Character or LP.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart", 5)
    if not hrp then return end
    local target, dist = nil, math.huge
    for _, f in pairs({workspace:FindFirstChild("Enemies"), workspace:FindFirstChild("NPCs"), workspace}) do
        if f then
            for _, m in pairs(f:GetChildren()) do
                if m:IsA("Model") and m:FindFirstChild("Humanoid") and m:FindFirstChild("HumanoidRootPart") and m.Humanoid.Health > 0 and m.Name ~= LP.Name then
                    local d = (hrp.Position - m.HumanoidRootPart.Position).Magnitude
                    if d < dist and d < 5000 then target = m; dist = d end
                end
            end
            if target and f ~= workspace then break end
        end
    end
    if target then
        ForceKen()
        for _, p in pairs(char:GetDescendants()) do if p:IsA("BasePart") then p.CanCollide = false end end
        TweenService:Create(hrp, TweenInfo.new(dist/250, Enum.EasingStyle.Linear), {CFrame = target.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)}):Play()
    end
end

-- === [ HỆ THỐNG NHÀY SERVER ] ===
local function OpenServerTab()
    pcall(function()
        for _, v in pairs(LP.PlayerGui:GetDescendants()) do
            if v.Name == "ServerBrowserButton" and v.Parent.Name:lower() == "frame" then
                local x = v.AbsolutePosition.X + (v.AbsoluteSize.X / 2)
                local y = v.AbsolutePosition.Y + (v.AbsoluteSize.Y / 2) + 36
                VIM:SendMouseButtonEvent(x, y, 0, true, game, 1)
                task.wait(0.05)
                VIM:SendMouseButtonEvent(x, y, 0, false, game, 1)
            end
        end
    end)
end

local function SpamJoinServer()
    task.spawn(function()
        local start = tick()
        while tick() - start < 10 do
            for _, v in pairs(LP.PlayerGui:GetDescendants()) do
                if v.Name:lower() == "join" and v.Parent.Name:lower() == "template" then
                    pcall(function()
                        GS.SelectedObject = v
                        VIM:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                        VIM:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                        v:Activate()
                    end)
                end
            end
            task.wait(0.5)
        end
    end)
end

-- === [ KHỞI CHẠY HỆ THỐNG ] ===

-- 1. Chọn Team trước
AutoSelectTeam()

-- 2. Chạy farm quái liên tục (Heartbeat)
task.spawn(function()
    while true do
        RunService.Heartbeat:Wait()
        pcall(FlyToMonster)
    end
end)

-- 3. Đếm ngược nhảy Server
task.spawn(function()
    local timeLeft = 30
    while timeLeft >= 0 do
        timerTxt.Text = "AUTO HOP: " .. timeLeft .. "s"
        if timeLeft == 0 then
            OpenServerTab()
            task.wait(2.5)
            SpamJoinServer()
            break
        end
        task.wait(1)
        timeLeft = timeLeft - 1
    end
end)
