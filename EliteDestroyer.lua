local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("93 ELITE HUB 🚀", "DarkTheme")

local Main = Window:NewTab("التدمير الشامل")
local Section = Main:NewSection("أوامر 93")

Section:NewButton("Server Override (الكل يشوف)", "تدمير عبر 180 ثغرة", function()
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("RemoteEvent") then
            pcall(function()
                for _, obj in pairs(workspace:GetChildren()) do
                    if obj:IsA("BasePart") then v:FireServer(obj, Vector3.new(0,-1000,0)) end
                end
            end)
        end
    end
end)

Section:NewButton("93 Mode + JumpScare", "صور وصوت واسم الله", function()
    local img = "rbxassetid://134110309"
    local sound = Instance.new("Sound", workspace)
    sound.SoundId = "rbxassetid://1838320141"
    sound.Volume = 10
    sound:Play()

    -- وضع الصور
    for _, p in pairs(workspace:GetDescendants()) do
        if p:IsA("BasePart") then
            local d = Instance.new("Decal", p)
            d.Texture = img
            d.Face = "All"
        end
    end

    -- اسم الله في الشاشة
    local sg = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
    local i = Instance.new("ImageLabel", sg)
    i.Size = UDim2.new(1,0,1,0)
    i.Image = img
    i.BackgroundTransparency = 1
    spawn(function() while wait(0.5) do i.Visible = not i.Visible end end)
end)

Section:NewButton("Disco Mode 🌈", "ديسكو ألوان", function()
    spawn(function()
        while wait(0.1) do
            game.Lighting.OutdoorAmbient = Color3.new(math.random(), math.random(), math.random())
        end
    end)
end)

local Extra = Window:NewTab("إضافات")
Extra:NewSection("حركات"):NewSlider("Speed", "السرعة", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
