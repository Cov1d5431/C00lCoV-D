-- [[ 93 DESTROYER HUB - BY YOU (YOUR NAME HERE) ]] --
-- ارفع هذا الكود على GitHub (ملف Gist خام/Raw) أو Pastebin لاستخدامه كـ Loadstring

-- 1. تحميل مكتبة الـ GUI (Kavo Library)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("93 ELITE HUB 🚀", "DarkTheme")

-- 2. قسم التدمير الشامل (Main Tab)
local Main = Window:NewTab("التدمير الشامل")
local MainSection = Main:NewSection("أوامر السيطرة")

-- أ. زرار "تدمير الماب" (استغلال الثغرات)
MainSection:NewButton("Server Destroyer (Server-Side)", "سيحاول مسح الخريطة عند جميع اللاعبين عبر الـ 180 ثغرة", function()
    print("🚀 جاري محاولة تدمير السيرفر عبر الثغرات...")
    -- كود البحث عن الريموتات (الصياد)
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("RemoteEvent") then
            pcall(function()
                -- بنبعت أمر للسيرفر يمسح كل حاجة
                for _, obj in pairs(workspace:GetChildren()) do
                    if obj:IsA("BasePart") then
                        v:FireServer(obj, Vector3.new(0, -1000, 0)) -- بيرميها تحت الأرض
                        v:FireServer(obj, "Destroy") -- بيمسحها لو الهاك SS
                    end
                end
            end)
        end
    end
    game.StarterGui:SetCore("SendNotification", {Title="SYSTEM", Text="تم تنفيذ هجوم التدمير الشامل!", Duration=5})
end)

-- ب. زرار "93 MODE" (الجامب سكير، الصوت، الصور)
MainSection:NewButton("93 MODE (JumpScare)", "صور 93، صوت رعب، اسم الله في المنتصف", function()
    -- [[ الإعدادات - أهم جزء ]] --
    local PIC_93_ID = "rbxassetid://134110309" -- حط هنا ID صورة 93
    local PIC_ALLAH_ID = "rbxassetid://134110309" -- حط هنا ID صورة اسم الله (التي تظهر في المنتصف)
    local SOUND_ID = "rbxassetid://1838320141" -- صوت رعب

    -- 1. وضع صور 93 على كل بلوك (Decals)
    for _, part in pairs(game.Workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            -- بنعمل صورة جديدة على كل وجه من وجوه البلوك
            local d1 = Instance.new("Decal", part); d1.Texture = PIC_93_ID; d1.Face = "Top"
            local d2 = Instance.new("Decal", part); d2.Texture = PIC_93_ID; d2.Face = "Bottom"
            local d3 = Instance.new("Decal", part); d3.Texture = PIC_93_ID; d3.Face = "Front"
            local d4 = Instance.new("Decal", part); d4.Texture = PIC_93_ID; d4.Face = "Back"
            local d5 = Instance.new("Decal", part); d5.Texture = PIC_93_ID; d5.Face = "Left"
            local d6 = Instance.new("Decal", part); d6.Texture = PIC_93_ID; d6.Face = "Right"
        end
    end

    -- 2. تشغيل صوت الرعب (أعلى صوت)
    local sound = Instance.new("Sound", game.Workspace)
    sound.SoundId = SOUND_ID
    sound.Volume = 10
    sound.Looped = true
    sound:Play()

    -- 3. الجامب سكير: عرض صورة "اسم الله" في منتصف شاشتك (Client-Side)
    local sg = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
    sg.Name = "EliteOverlay"
    sg.IgnoreGuiInset = true
    local img = Instance.new("ImageLabel", sg)
    img.BackgroundTransparency = 1
    img.Image = PIC_ALLAH_ID
    img.Size = UDim2.new(1, 0, 1, 0) -- تملى الشاشة
    img.Position = UDim2.new(0, 0, 0, 0)
    
    -- جعلها تومض (Flashing effect)
    spawn(function()
        while wait(0.5) do
            img.Visible = not img.Visible
        end
    end)
    
    print("✅ تم تشغيل رعب 93!")
end)

-- ج. زرار "الديسكو" (Disco Mode)
MainSection:NewButton("Disco Mode 🌈 (Rainbow World)", "تغيير إضاءة السيرفر وألوان السما بسرعة", function()
    -- كود الديسكو (بيغير ألوان الإضاءة)
    local l = game.Lighting
    l.Ambient = Color3.new(0,0,0) -- إضاءة محيطة سودة
    l.Brightness = 2 -- سطوع عالي
    
    spawn(function()
        while wait(0.1) do
            local randomColor = Color3.new(math.random(), math.random(), math.random())
            l.OutdoorAmbient = randomColor
            l.FogColor = randomColor
            l.FogEnd = 500 -- تضبيب قريب
            pcall(function() l.ColorCorrection.TintColor = randomColor end) -- لو الماب فيها تصحيح ألوان
        end
    end)
    print("🌈 السيرفر الآن في وضع الديسكو!")
end)

-- قسم الإضافات (Extras)
local Extra = Window:NewTab("إضافات")
local ExtraSection = Extra:NewSection("حركات 93")

-- شريط السرعة (WalkSpeed Slider)
ExtraSection:NewSlider("Walk Speed", "سرعة اللاعب", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

-- زرار الطيران (Invisible Fling)
ExtraSection:NewButton("Invisible Fling All", "طيران مخفي لتطير اللاعبين الآخرين", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() -- رابط سكربت الـ Fling
end)
