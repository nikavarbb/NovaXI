--[[

Secured By Nova XI

]] --

local v0 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local v1 =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local v2 =
    loadstring(
    game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua")
)()
local v3 =
    v0:CreateWindow(
    {
        Title = "Nova XI V4.0 | Tha Bronx 3 🛡️",
        TabWidth = 230 - (64 + 6),
        Size = UDim2.fromOffset(580, 460),
        Theme = "Darker",
        MinimizeKey = Enum.KeyCode.RightShift
    }
)
local v4 = game:GetService("Players")
local function v5(v143)
    if (v143 == v4.LocalPlayer) then
        local v469 = 0
        while true do
            if (v469 == (1900 - (106 + 1794))) then
                warn(v143.Name .. " wurde versucht zu kicken oder zu bannen, aber der Kick/Ban wurde blockiert.")
                return Enum.PlayerRemoveReason.Unknown
            end
        end
    end
end
v4.PlayerRemoving:Connect(v5)
v0:Notify({Title = "Nova XI", Content = "Client is 100% Loaded", SubContent = "", Duration = 2 + 3})
wait(1 + 1)
v0:Notify({Title = "Nova XI Version", Content = "Checking If Status is UpToDate", SubContent = "", Duration = 14 - 9})
wait(2)
v0:Notify({Title = "Nova XI Version", Content = "Status: UpToDate", SubContent = "", Duration = 5})
wait(7 - 4)
v0:Notify({Title = "Anti-Cheat Bypass", Content = "Bypass is Loaded", SubContent = "", Duration = 5})
local v6 = {
    Credits = v3:AddTab({Title = "Credits", Icon = "paperclip"}),
    Visual = v3:AddTab({Title = "Visual", Icon = "aperture"}),
    Combat = v3:AddTab({Title = "Combat", Icon = "skull"}),
    Player = v3:AddTab({Title = "Player", Icon = "user"}),
    Others = v3:AddTab({Title = "Others", Icon = "users"}),
    Troll = v3:AddTab({Title = "Troll", Icon = "laugh"}),
    PickUp = v3:AddTab({Title = "PickUp", Icon = "grab"}),
    Dupe = v3:AddTab({Title = "Dupe", Icon = "briefcase"}),
    AutoFarm = v3:AddTab({Title = "AutoFarm", Icon = "leaf"}),
    Money = v3:AddTab({Title = "Money", Icon = "wallet"}),
    Teleport = v3:AddTab({Title = "Teleport", Icon = "map"}),
    Shop = v3:AddTab({Title = "Shop", Icon = "shopping-cart"}),
    Bypasses = v3:AddTab({Title = "Bypasses", Icon = "shield-check"}),
    Game = v3:AddTab({Title = "Game", Icon = "cog"}),
    Settings = v3:AddTab({Title = "Settings", Icon = "cog"})
}
local function v7()
    if game.Lighting then
        for v518, v519 in pairs(game.Lighting:GetChildren()) do
            if
                (v519:IsA("PostEffect") or v519:IsA("BloomEffect") or v519:IsA("SunRaysEffect") or
                    v519:IsA("DepthOfFieldEffect"))
             then
                pcall(
                    function()
                        v519:Destroy()
                    end
                )
            end
        end
    end
end
local function v8(v144)
    game.Lighting.ClockTime = v144
    if _G.LockTimeConnection then
        _G.LockTimeConnection:Disconnect()
    end
    _G.LockTimeConnection =
        game.Lighting:GetPropertyChangedSignal("ClockTime"):Connect(
        function()
            if (game.Lighting.ClockTime ~= v144) then
                game.Lighting.ClockTime = v144
            end
        end
    )
end
v6.Game:AddButton(
    {
        Title = "Remove All Effects (FPS)",
        Description = "Deletes all specific effects from Lighting permanently",
        Callback = function()
            local v146 = 0
            while true do
                if (v146 == (114 - (4 + 110))) then
                    task.spawn(
                        function()
                            pcall(
                                function()
                                    loadstring(
                                        game:HttpGet(
                                            "https://raw.githubusercontent.com/DracoSwagBaby/ScriptsBanger/refs/heads/main/Remove%20All%20Effects"
                                        )
                                    )()
                                end
                            )
                        end
                    )
                    v7()
                    break
                end
            end
        end
    }
)
v6.Game:AddButton(
    {
        Title = "More Vibrant [RTX]",
        Description = "Deletes all specific effects from Lighting permanently",
        Callback = function()
            local v147 = 584 - (57 + 527)
            while true do
                if (v147 == 0) then
                    task.spawn(
                        function()
                            pcall(
                                function()
                                    loadstring(
                                        game:HttpGet(
                                            "https://raw.githubusercontent.com/DracoSwagBaby/ScriptsBanger/refs/heads/main/RTX"
                                        )
                                    )()
                                end
                            )
                        end
                    )
                    v7()
                    break
                end
            end
        end
    }
)
local v9 = v6.Game:AddSection("Extra")
v6.Game:AddButton(
    {
        Title = "Set to Day [Permanently]",
        Description = "Click to set the game time to permanent day.",
        Callback = function()
            v8(1439 - (41 + 1386))
        end
    }
)
v6.Game:AddButton(
    {
        Title = "Set to Night [Permanently]",
        Description = "Click to set the game time to permanent night.",
        Callback = function()
            v8(0)
        end
    }
)
local v9 = v6.Game:AddSection("About Admin")
local v10 =
    v6.Game:AddToggle(
    "AdminAlert",
    {Title = "Admin Alert", Description = "Notifies when an admin joins", Default = false, Callback = function(v148)
            _G.AdminAlertEnabled = v148
        end}
)
local function v11()
    for v410, v411 in ipairs(game.Players:GetPlayers()) do
        for v470, v471 in ipairs(v411:GetChildren()) do
            if v471.Name:find("_Tracker") then
                local v558 = 0
                while true do
                    if (v558 == 0) then
                        v0:Notify(
                            {
                                Title = "Admin Alert",
                                Content = "User: " .. v411.Name .. " is an Admin! Be Careful!",
                                Duration = 5
                            }
                        )
                        return
                    end
                end
            end
        end
    end
end
spawn(
    function()
        while wait(113 - (17 + 86)) do
            if _G.AdminAlertEnabled then
                v11()
            end
        end
    end
)
v6.Bypasses:AddButton(
    {
        Title = "Instant Prompts",
        Description = "Removes the E Holding Time Anywhere",
        Callback = function()
            local function v149()
                for v472, v473 in ipairs(game:GetService("Workspace"):GetDescendants()) do
                    if v473:IsA("ProximityPrompt") then
                        v473.HoldDuration = 0
                    end
                end
            end
            v149()
            task.spawn(
                function()
                    while true do
                        task.wait(11 + 4)
                        v149()
                    end
                end
            )
        end
    }
)
v6.Bypasses:AddButton(
    {
        Title = "Anti-Fall",
        Description = "Disables Fall Damage",
        Callback = function()
            local function v150()
                local v412 = game.Players.LocalPlayer
                if (v412 and v412.Character) then
                    local v521 = v412.Character:FindFirstChild("FallDamageRagdoll")
                    if v521 then
                        v521.Disabled = true
                    end
                end
            end
            task.spawn(
                function()
                    while true do
                        local v474 = 0 - 0
                        while true do
                            if (v474 == (0 - 0)) then
                                task.wait(1)
                                v150()
                                break
                            end
                        end
                    end
                end
            )
        end
    }
)
v6.Bypasses:AddButton(
    {
        Title = "Anti-Hunger",
        Description = "Disables the hunger system permanently",
        Callback = function()
            local function v151()
                local v413 = game.Players.LocalPlayer
                if (v413 and v413:FindFirstChild("PlayerGui")) then
                    local v522 = v413.PlayerGui:FindFirstChild("Hunger")
                    if v522 then
                        local v590 = 166 - (122 + 44)
                        local v591
                        while true do
                            if (v590 == (0 - 0)) then
                                v591 =
                                    v522:FindFirstChild("Frame") and v522.Frame:FindFirstChild("Frame") and
                                    v522.Frame.Frame:FindFirstChild("Frame") and
                                    v522.Frame.Frame.Frame:FindFirstChild("HungerBarScript")
                                if v591 then
                                    v591.Disabled = true
                                end
                                break
                            end
                        end
                    end
                end
            end
            task.spawn(
                function()
                    while true do
                        local v475 = 0
                        while true do
                            if ((0 - 0) == v475) then
                                task.wait(1)
                                v151()
                                break
                            end
                        end
                    end
                end
            )
        end
    }
)
v6.Bypasses:AddButton(
    {
        Title = "Anti-Sleep",
        Description = "Disables the sleep system permanently",
        Callback = function()
            local function v152()
                local v414 = game.Players.LocalPlayer
                if (v414 and v414:FindFirstChild("PlayerGui")) then
                    local v523 = v414.PlayerGui:FindFirstChild("SleepGui")
                    if v523 then
                        local v592 =
                            v523:FindFirstChild("Frame") and v523.Frame:FindFirstChild("sleep") and
                            v523.Frame.sleep:FindFirstChild("SleepBar") and
                            v523.Frame.sleep.SleepBar:FindFirstChild("sleepScript")
                        if v592 then
                            v592.Disabled = true
                        end
                    end
                end
            end
            task.spawn(
                function()
                    while true do
                        local v476 = 0
                        while true do
                            if ((0 + 0) == v476) then
                                task.wait(1 + 0)
                                v152()
                                break
                            end
                        end
                    end
                end
            )
        end
    }
)
v6.Bypasses:AddButton(
    {
        Title = "Anti-Stamina",
        Description = "Disables the stamina system permanently",
        Callback = function()
            local v153 = 0
            local v154
            while true do
                if (v153 == 0) then
                    v154 = nil
                    function v154()
                        local v560 = 0 - 0
                        local v561
                        while true do
                            if (0 == v560) then
                                v561 = game.Players.LocalPlayer
                                if (v561 and v561:FindFirstChild("PlayerGui")) then
                                    local v704 = 0
                                    local v705
                                    while true do
                                        if (v704 == (65 - (30 + 35))) then
                                            v705 =
                                                v561.PlayerGui:FindFirstChild("Run") and
                                                v561.PlayerGui.Run:FindFirstChild("Frame") and
                                                v561.PlayerGui.Run.Frame:FindFirstChild("Frame") and
                                                v561.PlayerGui.Run.Frame.Frame:FindFirstChild("Frame") and
                                                v561.PlayerGui.Run.Frame.Frame.Frame:FindFirstChild("StaminaBarScript")
                                            if v705 then
                                                v705.Disabled = true
                                            end
                                            break
                                        end
                                    end
                                end
                                break
                            end
                        end
                    end
                    v153 = 1
                end
                if (v153 == (1 + 0)) then
                    task.spawn(
                        function()
                            while true do
                                local v593 = 1257 - (1043 + 214)
                                while true do
                                    if ((0 - 0) == v593) then
                                        task.wait(1213 - (323 + 889))
                                        v154()
                                        break
                                    end
                                end
                            end
                        end
                    )
                    break
                end
            end
        end
    }
)
v6.Bypasses:AddButton(
    {
        Title = "Anti-CameraShake",
        Description = "Disables the camera shake effect permanently",
        Callback = function()
            local v155 = 0 - 0
            local v156
            while true do
                if (v155 == 1) then
                    task.spawn(
                        function()
                            while true do
                                task.wait(1)
                                v156()
                            end
                        end
                    )
                    break
                end
                if (0 == v155) then
                    v156 = nil
                    function v156()
                        local v562 = 580 - (361 + 219)
                        local v563
                        while true do
                            if (v562 == 0) then
                                v563 = game.Players.LocalPlayer
                                if (v563 and v563.Character) then
                                    local v706 = 320 - (53 + 267)
                                    local v707
                                    while true do
                                        if (v706 == 0) then
                                            v707 = v563.Character:FindFirstChild("CameraBobbing")
                                            if v707 then
                                                v707:Destroy()
                                            end
                                            break
                                        end
                                    end
                                end
                                break
                            end
                        end
                    end
                    v155 = 1 + 0
                end
            end
        end
    }
)
v6.Bypasses:AddButton(
    {Title = "Anti-RentPay", Description = "Disables the rent pay permanently", Callback = function()
            local v157 = 413 - (15 + 398)
            local v158
            local v159
            while true do
                if (v157 == (983 - (18 + 964))) then
                    if v159 then
                        local v594 = v159:FindFirstChild("LocalScript")
                        if v594 then
                            local v659 = 0 - 0
                            while true do
                                if (v659 == (1 + 0)) then
                                    print("Anti-RentPay activated! LocalScript disabled and destroyed.")
                                    break
                                end
                                if (v659 == (0 + 0)) then
                                    v594.Disabled = true
                                    v594:Destroy()
                                    v659 = 1
                                end
                            end
                        else
                            warn("LocalScript not found in RentGui!")
                        end
                    else
                        warn("RentGui not found in PlayerGui!")
                    end
                    break
                end
                if (v157 == (850 - (20 + 830))) then
                    v158 = game:GetService("Players").LocalPlayer
                    v159 = v158:FindFirstChild("PlayerGui") and v158.PlayerGui:FindFirstChild("RentGui")
                    v157 = 1
                end
            end
        end}
)
v6.Bypasses:AddButton(
    {
        Title = "Anti-Knockback",
        Description = "Disables the knockback permanently",
        Callback = function()
            for v415, v416 in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if (v416:IsA("BodyVelocity") or v416:IsA("LinearVelocity") or v416:IsA("VectorForce")) then
                    v416:Destroy()
                end
            end
            if game.ReplicatedStorage:FindFirstChild("AE") then
                game.ReplicatedStorage.AE:Destroy()
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").ChildAdded:Connect(
                function(v417)
                    if (v417:IsA("BodyVelocity") or v417:IsA("LinearVelocity") or v417:IsA("VectorForce")) then
                        v417:Destroy()
                    end
                end
            )
        end
    }
)
v6.Bypasses:AddButton(
    {Title = "Anti-JumpCooldown", Description = "Disables the jump cooldown permanently", Callback = function()
            local v160 = game:GetService("Players").LocalPlayer
            local v161 = v160:FindFirstChild("PlayerGui")
            if v161 then
                while true do
                    local v525 = 0 + 0
                    local v526
                    while true do
                        if (v525 == 0) then
                            v526 = v161:FindFirstChild("JumpDebounce")
                            if v526 then
                                v526:Destroy()
                            end
                            v525 = 127 - (116 + 10)
                        end
                        if (v525 == 1) then
                            task.wait(1 + 0)
                            break
                        end
                    end
                end
            end
        end}
)
local v12 = 738 - (542 + 196)
local v13 = 64 - 34
 
local v9 = v6.Dupe:AddSection("How To Use")
v6.Dupe:AddButton({Title = "1. Hold A Gun/Item"})
v6.Dupe:AddButton({Title = "2. Press on Dupe Gun/Item"})
v6.Dupe:AddButton({Title = "3. Wait till it says Duplication Complete!"})
v6.Dupe:AddButton({Title = "4. Go to Teleports and Teleport to 'Store items'"})
v6.Dupe:AddButton({Title = "5. You will Have one Gun/Item in your inventory and Safe"})
v6.Settings:AddButton(
    {
        Title = "Rejoin Server",
        Description = "Press the button if you want to rejoin the server",
        Callback = function()
            loadstring(
                game:HttpGet(
                    "https://raw.githubusercontent.com/DracoSwagBaby/ScriptsBanger/refs/heads/main/Rejoin%20Script"
                )
            )()
        end
    }
)
v6.Settings:AddButton(
    {
        Title = "Server Hop",
        Description = "Click to hop to a new server.",
        Callback = function()
            loadstring(
                game:HttpGet(
                    "https://raw.githubusercontent.com/DracoSwagBaby/ScriptsBanger/refs/heads/main/ServerHop%20Script"
                )
            )()
        end
    }
)
v1:SetLibrary(v0)
v2:SetLibrary(v0)
v1:IgnoreThemeSettings()
v1:SetIgnoreIndexes({})
v2:SetFolder("FluentScriptHub")
v1:SetFolder("FluentScriptHub/specific-game")
v2:BuildInterfaceSection(v6.Settings)
v6.Credits:AddParagraph(
    {Title = "👋 Welcome " .. v4.LocalPlayer.Name .. "! 🎉", Content = "Enjoy your experience with Nova XI!"}
)
local v9 = v6.Credits:AddSection("Script Owned")
v6.Credits:AddParagraph({Title = "👑 | Creators", Content = "swat4fun / Internetlag"})
local v9 = v6.Credits:AddSection("Socials")
local v14 = {Discord = "https://discord.gg/bQk8BEbkqA", YouTube = "https://youtube.com/@24k_DracoOfficial"}
v6.Credits:AddButton(
    {
        Title = "🖇️ | Copy Discord Link",
        Description = "Copies the Discord link to clipboard.",
        Callback = function()
            setclipboard(v14.Discord)
            v0:Notify(
                {
                    Title = "Copied!",
                    Content = "Discord link copied to clipboard.",
                    SubContent = "",
                    Duration = 736 - (476 + 255)
                }
            )
        end
    }
)
v6.Credits:AddButton(
    {
        Title = "🖇️ | Copy YouTube Link ",
        Description = "Copies the YouTube link to clipboard.",
        Callback = function()
            setclipboard(v14.YouTube)
            v0:Notify(
                {
                    Title = "Copied!",
                    Content = "YouTube link copied to clipboard.",
                    SubContent = "",
                    Duration = 1135 - (369 + 761)
                }
            )
        end
    }
)
local v15 = {
    Custom_Color = Color3.fromRGB(148 + 107, 463 - 208, 482 - 227),
    Tracer_Thickness = 1,
    Box_Thickness = 1,
    Tracer_Origin = "Middle",
    Tracer_FollowMouse = false,
    BoxESP = false,
    HealthESP = false,
    TracerESP = false,
    DistanceESP = false,
    TeamCheck = false,
    NameESP = false
}
local v16 = game:GetService("Players").LocalPlayer
local v17 = game:GetService("Workspace").CurrentCamera
local v18 = game:GetService("RunService")
local function v19(v171, v172)
    local v173 = Drawing.new("Quad")
    v173.Visible = false
    v173.PointA = Vector2.new(0, 0)
    v173.PointB = Vector2.new(238 - (64 + 174), 0 + 0)
    v173.PointC = Vector2.new(0, 0 - 0)
    v173.PointD = Vector2.new(336 - (144 + 192), 216 - (42 + 174))
    v173.Color = v172
    v173.Filled = false
    v173.Thickness = v171
    v173.Transparency = 1
    return v173
end
local function v20(v183, v184)
    local v185 = Drawing.new("Line")
    v185.Visible = false
    v185.From = Vector2.new(0 + 0, 0 + 0)
    v185.To = Vector2.new(0 + 0, 1504 - (363 + 1141))
    v185.Color = v184
    v185.Thickness = v183
    v185.Transparency = 1581 - (1183 + 397)
    return v185
end
local function v21(v192, v193)
    local v194 = 0 - 0
    local v195
    while true do
        if (v194 == (0 + 0)) then
            v195 = Drawing.new("Text")
            v195.Visible = false
            v194 = 1 + 0
        end
        if (v194 == 3) then
            v195.OutlineColor = Color3.fromRGB(0, 0, 1975 - (1913 + 62))
            v195.Transparency = 1 + 0
            v194 = 4
        end
        if (v194 == (2 - 1)) then
            v195.Color = v193
            v195.Size = v192
            v194 = 1935 - (565 + 1368)
        end
        if (v194 == (7 - 5)) then
            v195.Center = true
            v195.Outline = true
            v194 = 1664 - (1477 + 184)
        end
        if (v194 == (5 - 1)) then
            return v195
        end
    end
end
local function v22(v196)
    local v197 = 0 + 0
    local v198
    local v199
    local v200
    while true do
        if (2 == v197) then
            function v200()
                local v564
                v564 =
                    v18.RenderStepped:Connect(
                    function()
                        if not (v15.BoxESP or v15.TracerESP or v15.DistanceESP or v15.HealthESP or v15.NameESP) then
                            for v684, v685 in pairs(v198) do
                                v685.Visible = false
                            end
                            return
                        end
                        if
                            (v196.Character and v196.Character:FindFirstChild("Humanoid") and
                                v196.Character:FindFirstChild("HumanoidRootPart") and
                                (v196.Character.Humanoid.Health > 0))
                         then
                            local v660 = 856 - (564 + 292)
                            local v661
                            local v662
                            while true do
                                if ((1 - 0) == v660) then
                                    if v662 then
                                        v199()
                                        local v734 = v17:WorldToViewportPoint(v196.Character.Head.Position)
                                        local v735 =
                                            math.clamp(
                                            (Vector2.new(v734.X, v734.Y) - Vector2.new(v661.X, v661.Y)).magnitude,
                                            5 - 3,
                                            math.huge
                                        )
                                        if v15.BoxESP then
                                            local function v753(v773)
                                                local v774 = 0
                                                while true do
                                                    if (v774 == (305 - (244 + 60))) then
                                                        v773.PointC = Vector2.new(v661.X - v735, v661.Y + (v735 * 2))
                                                        v773.PointD =
                                                            Vector2.new(v661.X + v735, v661.Y + (v735 * (2 + 0)))
                                                        break
                                                    end
                                                    if (v774 == (476 - (41 + 435))) then
                                                        v773.PointA = Vector2.new(v661.X + v735, v661.Y - (v735 * 2))
                                                        v773.PointB = Vector2.new(v661.X - v735, v661.Y - (v735 * 2))
                                                        v774 = 1002 - (938 + 63)
                                                    end
                                                end
                                            end
                                            v753(v198.box)
                                            v198.box.Visible = true
                                        else
                                            v198.box.Visible = false
                                        end
                                        if v15.HealthESP then
                                            local v756 =
                                                (Vector2.new(v661.X - v735, v661.Y - (v735 * 2)) -
                                                Vector2.new(v661.X - v735, v661.Y + (v735 * (2 + 0)))).magnitude
                                            local v757 =
                                                v196.Character.Humanoid.Health / v196.Character.Humanoid.MaxHealth
                                            local v758 = v756 * v757
                                            if (v757 > 0.5) then
                                                v198.greenhealth.From =
                                                    Vector2.new(
                                                    (v661.X - v735) - (1131 - (936 + 189)),
                                                    v661.Y + (v735 * (1 + 1))
                                                )
                                                v198.greenhealth.To =
                                                    Vector2.new(
                                                    (v661.X - v735) - (1619 - (1565 + 48)),
                                                    (v661.Y + (v735 * (2 + 0))) - v758
                                                )
                                                v198.greenhealth.Visible = true
                                                v198.yellowhealth.Visible = false
                                                v198.redhealth.Visible = false
                                            elseif (v757 > 0.2) then
                                                local v799 = 1138 - (782 + 356)
                                                while true do
                                                    if (v799 == (268 - (176 + 91))) then
                                                        v198.greenhealth.Visible = false
                                                        v198.yellowhealth.Visible = true
                                                        v799 = 2
                                                    end
                                                    if (v799 == (4 - 2)) then
                                                        v198.redhealth.Visible = false
                                                        break
                                                    end
                                                    if (v799 == 0) then
                                                        v198.yellowhealth.From =
                                                            Vector2.new(
                                                            (v661.X - v735) - (8 - 2),
                                                            v661.Y + (v735 * (1094 - (975 + 117)))
                                                        )
                                                        v198.yellowhealth.To =
                                                            Vector2.new(
                                                            (v661.X - v735) - (1881 - (157 + 1718)),
                                                            (v661.Y + (v735 * 2)) - v758
                                                        )
                                                        v799 = 1 + 0
                                                    end
                                                end
                                            else
                                                local v800 = 0 - 0
                                                while true do
                                                    if (v800 == (6 - 4)) then
                                                        v198.redhealth.Visible = true
                                                        break
                                                    end
                                                    if (v800 == 0) then
                                                        v198.redhealth.From =
                                                            Vector2.new(
                                                            (v661.X - v735) - (1024 - (697 + 321)),
                                                            v661.Y + (v735 * (5 - 3))
                                                        )
                                                        v198.redhealth.To =
                                                            Vector2.new(
                                                            (v661.X - v735) - (12 - 6),
                                                            (v661.Y + (v735 * (4 - 2))) - v758
                                                        )
                                                        v800 = 1
                                                    end
                                                    if (v800 == 1) then
                                                        v198.greenhealth.Visible = false
                                                        v198.yellowhealth.Visible = false
                                                        v800 = 1 + 1
                                                    end
                                                end
                                            end
                                        else
                                            v198.greenhealth.Visible = false
                                            v198.yellowhealth.Visible = false
                                            v198.redhealth.Visible = false
                                        end
                                        if v15.DistanceESP then
                                            v198.distanceText.Text =
                                                tostring(
                                                math.floor(
                                                    (v16.Character.HumanoidRootPart.Position -
                                                        v196.Character.HumanoidRootPart.Position).magnitude
                                                )
                                            ) .. "m"
                                            v198.distanceText.Position = Vector2.new(v661.X, v661.Y + (v735 * 2) + 10)
                                            v198.distanceText.Visible = true
                                        else
                                            v198.distanceText.Visible = false
                                        end
                                        if v15.NameESP then
                                            local v766 = 0 - 0
                                            while true do
                                                if (v766 == (0 - 0)) then
                                                    v198.nameText.Text = v196.Name
                                                    v198.nameText.Position =
                                                        Vector2.new(
                                                        v661.X,
                                                        (v661.Y - (v735 * (1229 - (322 + 905)))) - 15
                                                    )
                                                    v766 = 1
                                                end
                                                if (v766 == (612 - (602 + 9))) then
                                                    v198.nameText.Visible = true
                                                    break
                                                end
                                            end
                                        else
                                            v198.nameText.Visible = false
                                        end
                                        if v15.TracerESP then
                                            v198.tracer.From =
                                                Vector2.new(
                                                v17.ViewportSize.X / (1191 - (449 + 740)),
                                                v17.ViewportSize.Y / 2
                                            )
                                            v198.tracer.To = Vector2.new(v661.X, v661.Y + (v735 * (874 - (826 + 46))))
                                            v198.tracer.Visible = true
                                        else
                                            v198.tracer.Visible = false
                                        end
                                    else
                                        for v743, v744 in pairs(v198) do
                                            v744.Visible = false
                                        end
                                    end
                                    break
                                end
                                if (v660 == 0) then
                                    if (v15.TeamCheck and (v196.Team == v16.Team)) then
                                        local v736 = 947 - (245 + 702)
                                        while true do
                                            if (0 == v736) then
                                                for v787, v788 in pairs(v198) do
                                                    v788.Visible = false
                                                end
                                                return
                                            end
                                        end
                                    end
                                    v661, v662 = v17:WorldToViewportPoint(v196.Character.HumanoidRootPart.Position)
                                    v660 = 3 - 2
                                end
                            end
                        else
                            local v663 = 0 + 0
                            while true do
                                if (v663 == 0) then
                                    for v719, v720 in pairs(v198) do
                                        v720.Visible = false
                                    end
                                    if not game.Players:FindFirstChild(v196.Name) then
                                        v564:Disconnect()
                                    end
                                    break
                                end
                            end
                        end
                    end
                )
            end
            coroutine.wrap(v200)()
            break
        end
        if (0 == v197) then
            v198 = {
                box = v19(v15.Box_Thickness, v15.Custom_Color),
                tracer = v20(v15.Tracer_Thickness, v15.Custom_Color),
                healthbar = v20(3, Color3.fromRGB(0, 1898 - (260 + 1638), 440 - (382 + 58))),
                greenhealth = v20(1.5, Color3.fromRGB(0 - 0, 212 + 43, 0 - 0)),
                yellowhealth = v20(2.5 - 1, Color3.fromRGB(255, 1460 - (902 + 303), 0 - 0)),
                redhealth = v20(1.5, Color3.fromRGB(255, 0 - 0, 0 + 0)),
                distanceText = v21(1706 - (1121 + 569), v15.Custom_Color),
                nameText = v21(230 - (22 + 192), v15.Custom_Color)
            }
            v199 = nil
            v197 = 684 - (483 + 200)
        end
        if ((1464 - (1404 + 59)) == v197) then
            function v199()
                local v565 = 0 - 0
                local v566
                while true do
                    if (v565 == (1 - 0)) then
                        v198.tracer.Color = v566
                        v198.distanceText.Color = v566
                        v565 = 2
                    end
                    if (v565 == 2) then
                        v198.nameText.Color = v566
                        break
                    end
                    if (v565 == (765 - (468 + 297))) then
                        v566 = v15.Custom_Color
                        v198.box.Color = v566
                        v565 = 563 - (334 + 228)
                    end
                end
            end
            v200 = nil
            v197 = 6 - 4
        end
    end
end
for v201, v202 in pairs(game:GetService("Players"):GetPlayers()) do
    if (v202.Name ~= v16.Name) then
        coroutine.wrap(v22)(v202)
    end
end
game.Players.PlayerAdded:Connect(
    function(v203)
        if (v203.Name ~= v16.Name) then
            coroutine.wrap(v22)(v203)
        end
    end
)
local v23 =
    v6.Visual:AddToggle(
    "NameToggle",
    {
        Title = "Toggle Name ESP",
        Description = "Toggle the visibility of player names",
        Default = false,
        Callback = function(v204)
            v15.NameESP = v204
        end
    }
)
local v24 =
    v6.Visual:AddToggle(
    "BoxToggle",
    {
        Title = "Toggle Box ESP",
        Description = "Toggle the visibility of ESP boxes",
        Default = false,
        Callback = function(v206)
            v15.BoxESP = v206
        end
    }
)
local v25 =
    v6.Visual:AddToggle(
    "HealthToggle",
    {
        Title = "Toggle Health ESP",
        Description = "Toggle the visibility of health bars",
        Default = false,
        Callback = function(v208)
            v15.HealthESP = v208
        end
    }
)
local v26 =
    v6.Visual:AddToggle(
    "TracerToggle",
    {
        Title = "Toggle Tracer ESP",
        Description = "Toggle the visibility of tracers",
        Default = false,
        Callback = function(v210)
            v15.TracerESP = v210
        end
    }
)
local v27 =
    v6.Visual:AddToggle(
    "DistanceToggle",
    {
        Title = "Toggle Distance ESP",
        Description = "Toggle the visibility of player distances",
        Default = false,
        Callback = function(v212)
            v15.DistanceESP = v212
        end
    }
)
local v28 =
    v6.Visual:AddColorpicker(
    "Colorpicker",
    {Title = "ESP Color", Description = "Select the color for ESP elements", Default = v15.Custom_Color}
)
v28:OnChanged(
    function()
        v15.Custom_Color = v28.Value
    end
)
v28:SetValueRGB(Color3.fromRGB(591 - 336, 462 - 207, 73 + 182))
local v18 = game:GetService("RunService")
local v29 = game:GetService("UserInputService")
local v4 = game:GetService("Players")
local v30 = false
local v31 = 236.1 - (141 + 95)
local v32 = "Head"
local v33 = false
local v34 = false
local v35 = false
local v36 = false
local v37 = false
local v38 = 0.1
local v39 = nil
local v40 = false
local v41 = Drawing.new("Circle")
v41.Visible = false
v41.Thickness = 1
v41.Transparency = 0.8 + 0
v41.Color = Color3.fromRGB(656 - 401, 612 - 357, 60 + 195)
v41.Radius = 0 - 0
local function v47(v216)
    if not v216.Character then
        return false
    end
    local v217 = v216.Character:FindFirstChild("Humanoid")
    return v217 and (v217.Health > (0 + 0))
end
local function v48(v218)
    if (v33 and v218 and v218.Character) then
        local v481 = v218.Character:FindFirstChild("AimbotHighlight")
        if not v481 then
            v481 = Instance.new("Highlight", v218.Character)
            v481.Name = "AimbotHighlight"
        end
        v481.FillColor = Color3.fromRGB(255, 0 + 0, 0)
        v481.FillTransparency = 0.7
        v481.OutlineColor = Color3.fromRGB(255, 0, 0)
        v481.OutlineTransparency = 0 - 0
    elseif (v218 and v218.Character) then
        local v568 = v218.Character:FindFirstChild("AimbotHighlight")
        if v568 then
            v568:Destroy()
        end
    end
end
local function v49()
    if (v39 and v39.Character) then
        local v486 = v39.Character:FindFirstChild("AimbotHighlight")
        if v486 then
            v486:Destroy()
        end
    end
end
local function v50(v219)
    if (not v219 or not v219.Character) then
        return false
    end
    local v220 = v219.Character:FindFirstChild(v32)
    if not v220 then
        return false
    end
    local v221 = workspace.CurrentCamera.CFrame.Position
    local v222 = v220.Position - v221
    local v223 = RaycastParams.new()
    v223.FilterDescendantsInstances = {workspace.CurrentCamera, v4.LocalPlayer.Character}
    v223.FilterType = Enum.RaycastFilterType.Blacklist
    local v227 = workspace:Raycast(v221, v222.Unit * v222.Magnitude, v223)
    return v227 and v227.Instance:IsDescendantOf(v219.Character)
end
local function v51()
    local v228 = math.huge
    local v229 = nil
    for v448, v449 in pairs(v4:GetPlayers()) do
        if ((v449 ~= v4.LocalPlayer) and v449.Character and v449.Character:FindFirstChild(v32)) then
            if ((not v35 or v47(v449)) and (not v36 or (v449.Team ~= v4.LocalPlayer.Team))) then
                if (not v34 or v50(v449)) then
                    local v669 = 0
                    local v670
                    local v671
                    while true do
                        if (v669 == 0) then
                            v670, v671 = workspace.CurrentCamera:WorldToViewportPoint(v449.Character[v32].Position)
                            if v671 then
                                local v737 = 0 + 0
                                local v738
                                local v739
                                while true do
                                    if (v737 == 1) then
                                        if ((v739 < v228) and (v739 < v41.Radius)) then
                                            local v794 = 0
                                            while true do
                                                if (v794 == (0 - 0)) then
                                                    v228 = v739
                                                    v229 = v449
                                                    break
                                                end
                                            end
                                        end
                                        break
                                    end
                                    if (v737 == (765 - (574 + 191))) then
                                        v738 = v29:GetMouseLocation()
                                        v739 = (Vector2.new(v670.X, v670.Y) - v738).Magnitude
                                        v737 = 1 + 0
                                    end
                                end
                            end
                            break
                        end
                    end
                end
            end
        end
    end
    return v229
end
local function v52(v230)
    local v231 = 0 - 0
    while true do
        if (v231 == 0) then
            if (v230 and v230.Character and v230.Character:FindFirstChild("HumanoidRootPart")) then
                local v595 = 0
                local v596
                local v597
                local v598
                while true do
                    if (v595 == (0 + 0)) then
                        v596 = v230.Character.HumanoidRootPart.Velocity
                        v597 = v230.Character[v32].Position
                        v595 = 850 - (254 + 595)
                    end
                    if (v595 == (127 - (55 + 71))) then
                        v598 = v597 + (v596 * v38)
                        return v598
                    end
                end
            end
            return nil
        end
    end
end
local function v53()
    if v30 then
        v41.Position = v29:GetMouseLocation()
        v41.Visible = true
    else
        v41.Visible = false
    end
end
local function v54()
    local v232 = 0
    while true do
        if (v232 == (1 - 0)) then
            if (v33 and v39) then
                v48(v39)
            else
                v49()
            end
            if (v40 and v39 and v39.Character and v39.Character:FindFirstChild(v32)) then
                local v599 = v39.Character[v32]
                local v600 = workspace.CurrentCamera
                if v37 then
                    local v672 = v52(v39)
                    v600.CFrame = v600.CFrame:Lerp(CFrame.new(v600.CFrame.Position, v672), v31)
                else
                    v600.CFrame = v600.CFrame:Lerp(CFrame.new(v600.CFrame.Position, v599.Position), v31)
                end
            end
            break
        end
        if (v232 == (1790 - (573 + 1217))) then
            if (not v30 or not v29:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)) then
                local v601 = 0 - 0
                while true do
                    if ((0 + 0) == v601) then
                        v49()
                        v40 = false
                        v601 = 1
                    end
                    if (v601 == 1) then
                        v39 = nil
                        return
                    end
                end
            end
            if not v40 then
                local v602 = 0
                while true do
                    if (v602 == (0 - 0)) then
                        v39 = v51()
                        v40 = v39 ~= nil
                        break
                    end
                end
            end
            v232 = 940 - (714 + 225)
        end
    end
end
v6.Combat:AddDropdown(
    "SmoothingMode",
    {
        Title = "Aimbots",
        Description = "Choose between None, Legit, or Blatant",
        Values = {"None", "Legit", "Blatant"},
        Multi = false,
        Default = 1 + 0,
        Callback = function(v233)
            if (v233 == "None") then
                local v490 = 0 - 0
                while true do
                    if (v490 == 1) then
                        v41.Radius = 806 - (118 + 688)
                        v41.Visible = false
                        break
                    end
                    if (v490 == (48 - (25 + 23))) then
                        v30 = false
                        v31 = 0 + 0
                        v490 = 1
                    end
                end
            elseif (v233 == "Legit") then
                v30 = true
                v31 = 1886.07 - (927 + 959)
                v41.Visible = true
            elseif (v233 == "Blatant") then
                local v629 = 0
                while true do
                    if (v629 == (0 - 0)) then
                        v30 = true
                        v31 = 733 - (16 + 716)
                        v629 = 1
                    end
                    if (v629 == (1 - 0)) then
                        v41.Visible = true
                        break
                    end
                end
            end
        end
    }
)
v6.Combat:AddDropdown(
    "AimbotParts",
    {
        Title = "Aimbot Parts",
        Description = "Choose which part to target",
        Values = {"Head", "Torso"},
        Multi = false,
        Default = 286 - (175 + 110),
        Callback = function(v234)
            v32 = ((v234 == "Head") and "Head") or "HumanoidRootPart"
        end
    }
)
v18.RenderStepped:Connect(
    function()
        local v235 = 0
        while true do
            if ((0 - 0) == v235) then
                v53()
                v54()
                break
            end
        end
    end
)
v6.Combat:AddSlider(
    "FOVRadiusSlider",
    {
        Title = "FOV Radius",
        Description = "Adjust the radius of the FOV ring",
        Default = 0 - 0,
        Min = 1796 - (503 + 1293),
        Max = 120,
        Rounding = 0 - 0,
        Callback = function(v236)
            v41.Radius = v236
        end
    }
)
v6.Combat:AddToggle(
    "PredictionToggle",
    {
        Title = "Enable Prediction",
        Description = "Enable predictive aiming for moving targets",
        Default = false,
        Callback = function(v238)
            v37 = v238
        end
    }
)
v6.Combat:AddToggle(
    "HighlightToggle",
    {
        Title = "Highlight Aimbot",
        Description = "Highlights the Aimboted Target",
        Default = false,
        Callback = function(v239)
            v33 = v239
            if not v33 then
                v49()
            end
        end
    }
)
v6.Combat:AddToggle(
    "IgnoreDeadToggle",
    {Title = "Ignore Dead", Description = "Skip targeting dead players", Default = false, Callback = function(v240)
            v35 = v240
        end}
)
v6.Combat:AddToggle(
    "WallCheckToggle",
    {Title = "Wall Check", Description = "Aimbots only if Player Visible", Default = false, Callback = function(v241)
            v34 = v241
        end}
)
v6.Combat:AddColorpicker(
    "FOVColorPicker",
    {
        Title = "FOV Ring Color",
        Description = "Customize the color of the FOV ring",
        Default = v41.Color,
        Callback = function(v242)
            v41.Color = v242
        end
    }
)
v18.RenderStepped:Connect(
    function()
        local v244 = 0 + 0
        while true do
            if (v244 == (1061 - (810 + 251))) then
                v53()
                v54()
                break
            end
        end
    end
)
local v16 = game.Players.LocalPlayer
_G.HeadSize = 5 + 2
_G.Disabled = true
_G.HitboxColor = Color3.fromRGB(79 + 176, 255, 230 + 25)
_G.HitboxTransparency = 533.7 - (43 + 490)
local function v55(v245)
    if (v245.Character and v245.Character:FindFirstChild("HumanoidRootPart")) then
        pcall(
            function()
                local v536 = 0
                while true do
                    if ((735 - (711 + 22)) == v536) then
                        v245.Character.HumanoidRootPart.CanCollide = false
                        break
                    end
                    if ((0 - 0) == v536) then
                        v245.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                        v245.Character.HumanoidRootPart.Transparency =
                            math.clamp(_G.HitboxTransparency, 0.7, 859.95 - (240 + 619))
                        v536 = 1
                    end
                    if (v536 == (1 + 0)) then
                        v245.Character.HumanoidRootPart.Color = _G.HitboxColor
                        v245.Character.HumanoidRootPart.Material = "Neon"
                        v536 = 2 - 0
                    end
                end
            end
        )
    end
end
local function v56(v246)
    if (v246.Character and v246.Character:FindFirstChild("HumanoidRootPart")) then
        pcall(
            function()
                local v537 = 0 + 0
                while true do
                    if (v537 == (1745 - (1344 + 400))) then
                        v246.Character.HumanoidRootPart.Material = "SmoothPlastic"
                        v246.Character.HumanoidRootPart.CanCollide = true
                        break
                    end
                    if (v537 == (405 - (255 + 150))) then
                        v246.Character.HumanoidRootPart.Size = Vector3.new(2, 2 + 0, 2 + 0)
                        if _G.Disabled then
                            v246.Character.HumanoidRootPart.Transparency = 4 - 3
                        end
                        v537 = 3 - 2
                    end
                end
            end
        )
    end
end
local function v57()
    for v450, v451 in pairs(game:GetService("Players"):GetPlayers()) do
        if (v451.Name ~= v16.Name) then
            if
                (_G.Disabled or
                    (v451.Character and v451.Character:FindFirstChild("Humanoid") and v451.Character.Humanoid.SeatPart))
             then
                v56(v451)
            else
                v55(v451)
            end
        end
    end
end
local v58 =
    v6.Combat:AddToggle(
    "MyToggle",
    {Title = "HitBox", Description = "Toggle HitBox", Default = false, Callback = function(v247)
            local v248 = 1739 - (404 + 1335)
            while true do
                if (0 == v248) then
                    _G.Disabled = not v247
                    v57()
                    break
                end
            end
        end}
)
local v59 =
    v6.Combat:AddSlider(
    "HeadSizeSlider",
    {
        Title = "Hitbox Size",
        Description = "Adjust the size of the hitbox",
        Default = _G.HeadSize,
        Min = 1,
        Max = 20,
        Rounding = 407 - (183 + 223),
        Callback = function(v249)
            local v250 = 0
            while true do
                if (v250 == (0 - 0)) then
                    _G.HeadSize = v249
                    v57()
                    break
                end
            end
        end
    }
)
local v60 =
    v6.Combat:AddSlider(
    "TransparencySlider",
    {
        Title = "Transparency",
        Description = "Adjust the transparency of the hitbox",
        Default = _G.HitboxTransparency,
        Min = 0.7 + 0,
        Max = 0.95 + 0,
        Rounding = 2,
        Callback = function(v251)
            _G.HitboxTransparency = math.clamp(v251, 337.7 - (10 + 327), 0.95)
            v57()
        end
    }
)
local v28 =
    v6.Combat:AddColorpicker(
    "HitboxColorpicker",
    {Title = "Hitbox Color", Description = "Select the hitbox color", Default = _G.HitboxColor}
)
v28:OnChanged(
    function(v252)
        local v253 = 0 + 0
        while true do
            if (v253 == (338 - (118 + 220))) then
                _G.HitboxColor = v252
                v57()
                break
            end
        end
    end
)
v57()
local function v61()
    while true do
        wait(1 + 0)
        v57()
    end
end
task.spawn(v61)
v6.Combat:AddButton(
    {Title = "Infinite Yield", Description = "Opens an Admin Pannel", Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end}
)
v6.Combat:AddButton(
    {Title = "Btools", Description = "Gives you a tool that allows you to delete objects", Callback = function()
            local v254 = 449 - (108 + 341)
            local v255
            while true do
                if (v254 == 1) then
                    for v570 = 1 + 0, 16 - 12 do
                        local v571 = Instance.new("HopperBin")
                        v571.BinType = v570
                        v571.Name = v255()
                        v571.Parent = game.Players.LocalPlayer.Backpack
                    end
                    break
                end
                if (v254 == (1493 - (711 + 782))) then
                    v255 = nil
                    function v255()
                        local v576 = 0 - 0
                        local v577
                        local v578
                        local v579
                        while true do
                            if (v576 == 1) then
                                v579 = ""
                                for v690 = 470 - (270 + 199), v577 do
                                    v579 =
                                        v579 ..
                                        v578:sub(math.random(1 + 0, #v578), math.random(1820 - (580 + 1239), #v578))
                                end
                                v576 = 5 - 3
                            end
                            if (v576 == (2 + 0)) then
                                return v579
                            end
                            if (v576 == 0) then
                                v577 = 1 + 9
                                v578 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
                                v576 = 1
                            end
                        end
                    end
                    v254 = 1 + 0
                end
            end
        end}
)
local v62 = game.Players.LocalPlayer
local v63 = game:GetService("UserInputService")
local v64 = game:GetService("RunService")
local v65 = {W = false, A = false, S = false, D = false}
local v66 = 13 - 8
local v67 = false
local v68 = false
local function v69()
    if (v67 and v62.Character and v62.Character:FindFirstChild("HumanoidRootPart")) then
        local v491 = v62.Character.HumanoidRootPart
        local v492 = workspace.CurrentCamera
        local v493 = Vector3.new(0, 0 + 0, 1167 - (645 + 522))
        if v65.W then
            v493 = v493 + v492.CFrame.LookVector
        end
        if v65.A then
            v493 = v493 - v492.CFrame.RightVector
        end
        if v65.S then
            v493 = v493 - v492.CFrame.LookVector
        end
        if v65.D then
            v493 = v493 + v492.CFrame.RightVector
        end
        if v63:IsKeyDown(Enum.KeyCode.Space) then
            v493 = v493 + Vector3.new(1790 - (1010 + 780), 1 + 0, 0 - 0)
        end
        if v63:IsKeyDown(Enum.KeyCode.LeftControl) then
            v493 = v493 - Vector3.new(0 - 0, 1837 - (1045 + 791), 0 - 0)
        end
        if (v493.Magnitude > 0) then
            local v580 = 0 - 0
            while true do
                if (v580 == (505 - (351 + 154))) then
                    v493 = v493.Unit * v66
                    v491.Anchored = true
                    v580 = 1575 - (1281 + 293)
                end
                if (v580 == (268 - (28 + 238))) then
                    v68 = false
                    break
                end
                if (v580 == (2 - 1)) then
                    for v691 = 1560 - (1381 + 178), 5 + 0 do
                        v491.CFrame = v491.CFrame:Lerp(v491.CFrame + v493, 0.7 + 0)
                        task.wait(0.02 + 0)
                    end
                    v491.Anchored = false
                    v580 = 2
                end
            end
        elseif not v68 then
            local v638 = 0
            while true do
                if (v638 == 0) then
                    v68 = true
                    v491.Anchored = true
                    break
                end
            end
        end
    end
end
v63.InputBegan:Connect(
    function(v256, v257)
        if v257 then
            return
        end
        if (v256.KeyCode == Enum.KeyCode.W) then
            v65.W = true
        end
        if (v256.KeyCode == Enum.KeyCode.A) then
            v65.A = true
        end
        if (v256.KeyCode == Enum.KeyCode.S) then
            v65.S = true
        end
        if (v256.KeyCode == Enum.KeyCode.D) then
            v65.D = true
        end
    end
)
v63.InputEnded:Connect(
    function(v258, v259)
        if v259 then
            return
        end
        if (v258.KeyCode == Enum.KeyCode.W) then
            v65.W = false
        end
        if (v258.KeyCode == Enum.KeyCode.A) then
            v65.A = false
        end
        if (v258.KeyCode == Enum.KeyCode.S) then
            v65.S = false
        end
        if (v258.KeyCode == Enum.KeyCode.D) then
            v65.D = false
        end
    end
)
v64.RenderStepped:Connect(v69)
v6.Player:AddToggle(
    "FlyToggle",
    {
        Title = "Enable Fly [Bypassed]",
        Description = "Toggle to enable or disable flying",
        Default = false,
        Callback = function(v260)
            local v261 = 0 - 0
            while true do
                if (v261 == (0 + 0)) then
                    v67 = v260
                    if not v260 then
                        local v605 = 0
                        local v606
                        while true do
                            if (v605 == (470 - (381 + 89))) then
                                v606 = v62.Character and v62.Character:FindFirstChild("HumanoidRootPart")
                                if v606 then
                                    v606.Anchored = false
                                end
                                break
                            end
                        end
                    end
                    break
                end
            end
        end
    }
)
v6.Player:AddSlider(
    "FlySpeedSlider",
    {
        Title = "Adjust the speed of flying",
        Description = "Adjust how fast you 'teleport' while flying.",
        Default = v66,
        Min = 1 + 0,
        Max = 7 + 3,
        Rounding = 1,
        Callback = function(v262)
            v66 = v262
        end
    }
)
local v16 = game.Players.LocalPlayer
local v70 = v16.Character or v16.CharacterAdded:Wait()
local v71 = v70:WaitForChild("Humanoid")
local v72 = Vector3.new(-387.9579, 582.3467 - 242, -(1714.864 - (1074 + 82)))
local v73 = false
local v74
local function v75(v263)
    if (v73 and (v263 < v71.MaxHealth)) then
        local v502 = v70:FindFirstChild("HumanoidRootPart")
        if v502 then
            v502.CFrame = CFrame.new(v72)
        end
    end
end
local v58 =
    v6.Player:AddToggle(
    "MyToggle",
    {
        Title = "Teleport on Damage",
        Description = "Automatically teleports when taking damage",
        Default = false,
        Callback = function(v264)
            local v265 = 0
            while true do
                if (v265 == (0 - 0)) then
                    v73 = v264
                    if v73 then
                        if not v74 then
                            v74 = v71.HealthChanged:Connect(v75)
                        end
                    elseif v74 then
                        v74:Disconnect()
                        v74 = nil
                    end
                    break
                end
            end
        end
    }
)
local v4 = game:GetService("Players")
local v76 = game:GetService("ReplicatedStorage")
local v16 = v4.LocalPlayer
local v71 = v16.Character and v16.Character:FindFirstChildOfClass("Humanoid")
getgenv().gm = false
getgenv().FreeFallMethod = false
local v79 = (v71 and v71.Health) or (1884 - (214 + 1570))
local function v75()
    if v71 then
        v71.HealthChanged:Connect(
            function(v538)
                local v539 = 1455 - (990 + 465)
                while true do
                    if ((0 + 0) == v539) then
                        if (v538 < v79) then
                            local v693 = 0 + 0
                            local v694
                            while true do
                                if ((1 + 0) == v693) then
                                    getgenv().FreeFallMethod = false
                                    break
                                end
                                if ((0 - 0) == v693) then
                                    v694 = tick() + (1728 - (1668 + 58))
                                    while tick() < v694 do
                                        local v740 = 626 - (512 + 114)
                                        while true do
                                            if (v740 == 0) then
                                                getgenv().FreeFallMethod = true
                                                task.wait(0.05 - 0)
                                                break
                                            end
                                        end
                                    end
                                    v693 = 1
                                end
                            end
                        end
                        v79 = v538
                        break
                    end
                end
            end
        )
    end
end
task.spawn(
    function()
        while task.wait() do
            if (getgenv().FreeFallMethod and v71) then
                v71:ChangeState(Enum.HumanoidStateType.Freefall)
            end
        end
    end
)
 
local v4 = game:GetService("Players")
local v80 = v4.LocalPlayer
local v18 = game:GetService("RunService")
local v81 = v80.Character or v80.CharacterAdded:Wait()
local v82 = nil
local v83 = false
local function v84(v269)
    v83 = not v269
    if v269 then
        v82 =
            v18.Stepped:Connect(
            function()
                if ((v83 == false) and (v80.Character ~= nil)) then
                    for v639, v640 in pairs(v80.Character:GetDescendants()) do
                        if (v640:IsA("BasePart") and (v640.CanCollide == true)) then
                            v640.CanCollide = false
                        end
                    end
                end
            end
        )
    else
        local v503 = 0 - 0
        while true do
            if ((0 + 0) == v503) then
                if v82 then
                    local v677 = 0
                    while true do
                        if (v677 == (0 + 0)) then
                            v82:Disconnect()
                            v82 = nil
                            break
                        end
                    end
                end
                if v80.Character then
                    for v696, v697 in pairs(v80.Character:GetDescendants()) do
                        if v697:IsA("BasePart") then
                            v697.CanCollide = true
                        end
                    end
                end
                break
            end
        end
    end
end
local v58 =
    v6.Player:AddToggle(
    "NoclipToggle",
    {Title = "Noclip", Description = "Toggle Noclip", Default = false, Callback = function(v270)
            v84(v270)
        end}
)
local v4 = game:GetService("Players")
local v80 = v4.LocalPlayer
local v29 = game:GetService("UserInputService")
local v85
local v86 = false
local v87 = false
local function v88(v271)
    if v271 then
        if v85 then
            v85:Disconnect()
        end
        v86 = false
        v85 =
            v29.JumpRequest:Connect(
            function()
                if not v86 then
                    local v611 = 0
                    while true do
                        if (v611 == (826 - (802 + 24))) then
                            v86 = true
                            v80.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
                            v611 = 1 - 0
                        end
                        if (v611 == (1 - 0)) then
                            wait()
                            v86 = false
                            break
                        end
                    end
                end
            end
        )
    else
        local v504 = 0 + 0
        while true do
            if (v504 == 0) then
                if v85 then
                    v85:Disconnect()
                end
                v86 = false
                break
            end
        end
    end
end
local function v89(v272, v273)
    if (not v273 and (v272.UserInputType == Enum.UserInputType.Keyboard)) then
        if (v272.KeyCode == Enum.KeyCode.Backspace) then
            local v582 = 0 + 0
            while true do
                if (0 == v582) then
                    v87 = true
                    while v87 do
                        if v80.Character then
                            v80.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
                        end
                        wait(0.1)
                    end
                    break
                end
            end
        end
    end
end
local function v90(v274, v275)
    if ((v274.UserInputType == Enum.UserInputType.Keyboard) and (v274.KeyCode == Enum.KeyCode.Backspace)) then
        v87 = false
    end
end
v29.InputBegan:Connect(v89)
v29.InputEnded:Connect(v90)
local v58 =
    v6.Player:AddToggle(
    "InfJumpToggle",
    {Title = "Infinite Jump", Description = "Toggle infinite jump", Default = false, Callback = function(v276)
            v88(v276)
        end}
)
local v9 = v6.Player:AddSection("GUI")
v6.Player:AddButton(
    {Title = "Bronx Market", Description = "Opens The Bronx Market", Callback = function()
            local v277 = game.Players.LocalPlayer
            local v278 = v277:WaitForChild("PlayerGui")
            local v279 = v278:WaitForChild("Bronx Market 2", 5)
            if v279 then
                v279.Enabled = true
            else
                warn("Bronx Market 2 GUI element not found!")
            end
        end}
)
local v16 = game.Players.LocalPlayer
local v91 = v16:WaitForChild("PlayerGui")
local v92 = v91:WaitForChild("Bronx Market 2", 1 + 4)
if v92 then
    v92.Enabled = false
else
    warn("Bronx Market 2 GUI element not found!")
end
v6.Player:AddButton(
    {
        Title = "Bronx Clothing",
        Description = "Opens The Bronx Clothing",
        Callback = function()
            local v280, v281 =
                pcall(
                function()
                    loadstring(
                        game:HttpGet(
                            "https://raw.githubusercontent.com/DracoSwagBaby/ScriptsBanger/refs/heads/main/Bronx%20DripShop%20Script"
                        )
                    )()
                end
            )
            if not v280 then
                warn("Failed to load Bronx Clothing script:", v281)
            else
            end
        end
    }
)
local v93 = {}
local v94 = nil
local v95 = false
local v96 = false
 
local function v97()
    local v282 = 0 + 0
    while true do
        if (v282 == (0 - 0)) then
            if Dropdown then
                Dropdown:Destroy()
            end
            Dropdown =
                v6.Others:AddDropdown(
                "PlayerDropdown",
                {Title = "Select Player", Values = v93, Multi = false, Default = 3 - 2, Callback = function(v583)
                        v94 = v583
                    end}
            )
            break
        end
    end
end
local function v98()
    local v283 = 0
    while true do
        if (v283 == 1) then
            v97()
            break
        end
        if (v283 == (0 + 0)) then
            v93 = {}
            for v584, v585 in pairs(game.Players:GetPlayers()) do
                if (v585 ~= game.Players.LocalPlayer) then
                    table.insert(v93, v585.Name)
                end
            end
            v283 = 1 + 0
        end
    end
end
local function v99()
    local v284 = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
    if not v284 then
        return
    end
    local v285 = Instance.new("ScreenGui")
    v285.Name = "TeleportBlackout"
    v285.Parent = v284
    local v288 = Instance.new("Frame")
    v288.Size = UDim2.new(1 + 0, 0 + 0, 1 + 0, 1433 - (797 + 636))
    v288.Position = UDim2.new(0, 0, 0, 0)
    v288.BackgroundColor3 = Color3.new(0 - 0, 1619 - (1427 + 192), 0 + 0)
    v288.BackgroundTransparency = 0
    v288.Parent = v285
    local v294 = Instance.new("TextLabel")
    v294.Size = UDim2.new(0.6 - 0, 0, 0.2 + 0, 0)
    v294.Position = UDim2.new(0.2 + 0, 326 - (192 + 134), 1276.55 - (316 + 960), 0 + 0)
    v294.Text = "discord.gg/synthx"
    v294.TextColor3 = Color3.new(1 + 0, 1 + 0, 3 - 2)
    v294.TextScaled = true
    v294.BackgroundTransparency = 552 - (83 + 468)
    v294.Font = Enum.Font.SourceSansBold
    v294.Parent = v288
    local v304 = Instance.new("ImageLabel")
    v304.Size = UDim2.new(0.3, 1806 - (1202 + 604), 0.5 - 0, 0 - 0)
    v304.Position = UDim2.new(0.35 - 0, 325 - (45 + 280), 0.15, 0)
    v304.Image = "rbxassetid://122954732244882"
    v304.BackgroundTransparency = 1
    v304.Parent = v288
    task.spawn(
        function()
            for v506 = 0 + 0, 315 + 45, 5 do
                if not v285.Parent then
                    break
                end
                v304.Rotation = v506
                task.wait(0.02 + 0)
            end
        end
    )
    task.delay(
        1.5 + 0,
        function()
            if v285 then
                v285:Destroy()
            end
        end
    )
end
local function v100(v310)
    local v311 = 0 + 0
    local v312
    while true do
        if (v311 == (1 - 0)) then
            return nil
        end
        if (v311 == (1911 - (340 + 1571))) then
            v312 = game.Players:FindFirstChild(v310)
            if (v312 and v312:FindFirstChild("Backpack")) then
                local v612 = 0 + 0
                local v613
                while true do
                    if (v612 == (1772 - (1733 + 39))) then
                        v613 = {}
                        for v710, v711 in pairs(v312.Backpack:GetChildren()) do
                            if v711:IsA("Tool") then
                                table.insert(v613, v711.Name)
                            end
                        end
                        v612 = 1
                    end
                    if (v612 == 1) then
                        return v613
                    end
                end
            end
            v311 = 2 - 1
        end
    end
end 
v6.Others:AddButton(
    {Title = "Refresh Player List", Description = "Refreshes the list of active players", Callback = function()
            v98()
        end}
)
v6.Others:AddToggle(
    "SpectateToggle",
    {Title = "Spectate", Description = "Spectates the selected player", Default = false, Callback = function(v313)
            local v314 = 1034 - (125 + 909)
            while true do
                if ((1948 - (1096 + 852)) == v314) then
                    v95 = v313
                    if (v95 and v94) then
                        local v615 = 0 + 0
                        local v616
                        while true do
                            if (v615 == (0 - 0)) then
                                v616 = game.Players:FindFirstChild(v94)
                                if (v616 and v616.Character) then
                                    local v718 = v616.Character:FindFirstChild("Humanoid")
                                    if v718 then
                                        game.Workspace.CurrentCamera.CameraSubject = v718
                                    else
                                        warn("Unable to spectate. Player has no humanoid.")
                                    end
                                else
                                    warn("Invalid player selection for spectate.")
                                end
                                break
                            end
                        end
                    else
                        game.Workspace.CurrentCamera.CameraSubject =
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                    end
                    break
                end
            end
        end}
)
v6.Others:AddToggle(
    "LoopBringToggle",
    {
        Title = "LoopBring Player",
        Description = "Continuously brings the selected player to you",
        Default = false,
        Callback = function(v315)
            v96 = v315
            if (v96 and v94) then
                local v508 = game.Players:FindFirstChild(v94)
                if (v508 and v508.Character) then
                    coroutine.wrap(
                        function()
                            while v96 do
                                local v641 = v508.Character:FindFirstChild("HumanoidRootPart")
                                local v642 =
                                    game.Players.LocalPlayer.Character and
                                    game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                if (v641 and v642) then
                                    v641.CFrame = v642.CFrame + Vector3.new(0 + 0, 0, 516 - (409 + 103))
                                end
                                wait(0)
                            end
                        end
                    )()
                else
                    warn("Invalid player selection for LoopBring.")
                end
            end
        end
    }
)
v6.Others:AddButton(
    {
        Title = "View Inventory",
        Description = "Displays the selected player's inventory",
        Callback = function()
            if v94 then
                local v509 = v100(v94)
                if (v509 and (#v509 > (236 - (46 + 190)))) then
                    v0:Notify(
                        {Title = "View Inventory", Content = table.concat(v509, ", "), Duration = 100 - (51 + 44)}
                    )
                else
                    v0:Notify(
                        {
                            Title = "View Inventory",
                            Content = "No items found.",
                            SubContent = v94 .. " has no tools in their backpack.",
                            Duration = 2 + 3
                        }
                    )
                end
            else
                v0:Notify({Title = "Error", Content = "No player selected!", Duration = 3})
            end
        end
    }
)
v6.Others:AddButton(
    {
        Title = "Teleport to Player",
        Description = "Teleports to the selected player with Freefall effect and blackout screen",
        Callback = function()
            if v94 then
                local v510 = 1317 - (1114 + 203)
                local v511
                while true do
                    if (v510 == (726 - (228 + 498))) then
                        v511 = game.Players:FindFirstChild(v94)
                        if (v511 and v511.Character) then
                            local v678 = 0
                            local v679
                            local v680
                            while true do
                                if (v678 == 1) then
                                    if (v679 and v680) then
                                        local v742 = 0
                                        while true do
                                            if (v742 == (1 + 1)) then
                                                v680.CFrame = v679.CFrame
                                                getgenv().FreeFallMethod = false
                                                break
                                            end
                                            if (0 == v742) then
                                                getgenv().FreeFallMethod = true
                                                v99()
                                                v742 = 1 + 0
                                            end
                                            if (1 == v742) then
                                                v680.CFrame =
                                                    v679.CFrame +
                                                    Vector3.new(663 - (174 + 489), 130 - 80, 1905 - (830 + 1075))
                                                task.wait(0.8)
                                                v742 = 2
                                            end
                                        end
                                    else
                                        warn("Player found, but no HumanoidRootPart detected.")
                                    end
                                    break
                                end
                                if (v678 == 0) then
                                    v679 = v511.Character:FindFirstChild("HumanoidRootPart")
                                    v680 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                    v678 = 525 - (303 + 221)
                                end
                            end
                        else
                            warn("Invalid player selection for teleport.")
                        end
                        break
                    end
                end
            else
                warn("No player selected for teleport.")
            end
        end
    }
)
local v101 = false
local v102 =
    Vector3.new(-(1383.3749160766602 - (231 + 1038)), 383.09527587890625 + 76, -(1683.2562866210938 - (171 + 991)))
v6.Others:AddToggle(
    "LoopTeleportToggle",
    {
        Title = "LoopTeleport [SINGLE KILL]",
        Description = "Repeatedly teleports the selected player to specific coordinates",
        Default = false,
        Callback = function(v316)
            v101 = v316
            if (v101 and v94) then
                local v512 = game.Players:FindFirstChild(v94)
                if (v512 and v512.Character) then
                    coroutine.wrap(
                        function()
                            while v101 do
                                local v643 = 0
                                local v644
                                while true do
                                    if (0 == v643) then
                                        v644 = v512.Character:FindFirstChild("HumanoidRootPart")
                                        if v644 then
                                            v644.CFrame = CFrame.new(v102)
                                        end
                                        v643 = 4 - 3
                                    end
                                    if (1 == v643) then
                                        wait(0.1 - 0)
                                        break
                                    end
                                end
                            end
                        end
                    )()
                else
                    warn("Player not valid for loop teleport.")
                end
            end
        end
    }
)
local v4 = game:GetService("Players")
local v80 = v4.LocalPlayer
local v103 = game:GetService("Workspace")
local v104 = game:GetService("UserInputService")
local v105 = false
local function v106(v317)
    for v453, v454 in pairs(v103:GetDescendants()) do
        if (v454:IsA("BasePart") and not v454.Anchored and not v454:IsDescendantOf(v80.Character)) then
            local v543 = 0 - 0
            local v544
            while true do
                if (v543 == (0 + 0)) then
                    v544 = v454:FindFirstChildOfClass("BodyPosition") or Instance.new("BodyPosition", v454)
                    v544.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    v543 = 3 - 2
                end
                if (v543 == (2 - 1)) then
                    v544.Position = v317
                    break
                end
            end
        end
    end
end
local v107 = false
v104.InputBegan:Connect(
    function(v318, v319)
        local v320 = 0 - 0
        while true do
            if (v320 == (0 - 0)) then
                if v319 then
                    return
                end
                if (v318.UserInputType == Enum.UserInputType.MouseButton1) then
                    if v105 then
                        local v681 = 0
                        while true do
                            if (v681 == (1248 - (111 + 1137))) then
                                v107 = true
                                while v107 do
                                    local v725 = 158 - (91 + 67)
                                    local v726
                                    local v727
                                    while true do
                                        if (v725 == (0 - 0)) then
                                            v726 = v80:GetMouse()
                                            v727 = v726.Hit.p
                                            v725 = 1 + 0
                                        end
                                        if (1 == v725) then
                                            v106(v727)
                                            wait(523.1 - (423 + 100))
                                            break
                                        end
                                    end
                                end
                                break
                            end
                        end
                    end
                end
                break
            end
        end
    end
)
v104.InputEnded:Connect(
    function(v321)
        if (v321.UserInputType == Enum.UserInputType.MouseButton1) then
            v107 = false
        end
    end
)
local v58 =
    v6.Troll:AddToggle(
    "MyToggle",
    {
        Title = "Drag Objects",
        Description = "By holding the click and moving the mouse, you can drag the items",
        Default = false,
        Callback = function(v322)
            local v323 = 0 + 0
            while true do
                if (v323 == (0 - 0)) then
                    v105 = v322
                    if v322 then
                    else
                    end
                    break
                end
            end
        end
    }
)
local v108 =
    v6.Troll:AddToggle(
    "Annoy Server",
    {
        Title = "Annoy Server",
        Default = false,
        Description = "Sends repeated tweet messages to annoy people in the server"
    }
)
v108:OnChanged(
    function()
        while v108.Value do
            game:GetService("ReplicatedStorage"):WaitForChild("Resources"):WaitForChild("#Phone"):WaitForChild("Main"):FireServer(
                "Tweet",
                {"CreateTweet", "....................................................................."}
            )
            wait(772.4 - (326 + 445))
        end
    end
)
local v9 = v6.Troll:AddSection("Anonymous")
local v4 = game:GetService("Players")
local v80 = v4.LocalPlayer
local v103 = game:GetService("Workspace")
local v104 = game:GetService("UserInputService")
local v72 = Vector3.new(-(497.37491607666016 - 383), 1022.0952758789062 - 563, -(1215.2562866210938 - 694))
local v105 = false
local function v106()
    for v455, v456 in pairs(v103:GetDescendants()) do
        if (v456:IsA("BasePart") and not v456.Anchored and not v456:IsDescendantOf(v80.Character)) then
            local v545 = v456:FindFirstChildOfClass("BodyPosition") or Instance.new("BodyPosition", v456)
            v545.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            v545.Position = v72
        end
    end
end
v104.InputBegan:Connect(
    function(v324, v325)
        local v326 = 0
        while true do
            if (v326 == 0) then
                if v325 then
                    return
                end
                if (v324.UserInputType == Enum.UserInputType.MouseButton1) then
                    if v105 then
                        v106()
                    end
                end
                break
            end
        end
    end
)
local v58 =
    v6.Troll:AddToggle(
    "MyToggle",
    {
        Title = "Teleport Car",
        Description = "Teleports the Car to a Special location.",
        Default = false,
        Callback = function(v327)
            v105 = v327
        end
    }
)
local v4 = game:GetService("Players")
local v16 = v4.LocalPlayer
local v109 = workspace:FindFirstChild("Storage")
local v73 = false
getgenv().FreeFallMethod = false
local v110 = nil
local function v111(v328)
    local v329 = v16.Character or v16.CharacterAdded:Wait()
    local v330 = v329 and v329:FindFirstChild("HumanoidRootPart")
    if v330 then
        v330.CFrame = CFrame.new(v328, v328 + Vector3.new(711 - (530 + 181), 0, -1))
    end
end
local function v112()
    local v331 = 0
    local v332
    local v333
    local v334
    while true do
        if (v331 == (882 - (614 + 267))) then
            v333 = v332 and v332:FindFirstChild("HumanoidRootPart")
            if not v333 then
                return
            end
            v331 = 2
        end
        if (v331 == (34 - (19 + 13))) then
            if not v110 then
                v110 = v333.Position
            end
            v334 = 0
            v331 = 4 - 1
        end
        if ((6 - 3) == v331) then
            for v586, v587 in ipairs(v109:GetChildren()) do
                if (v587:IsA("MeshPart") and (v587.Name == "Baggy")) then
                    local v647 = 0 - 0
                    local v648
                    while true do
                        if (1 == v647) then
                            task.wait(0.2)
                            v648 = v587:FindFirstChild("stealprompt")
                            v647 = 1 + 1
                        end
                        if (v647 == 2) then
                            if (v648 and v648:IsA("ProximityPrompt")) then
                                local v728 = 0 - 0
                                while true do
                                    if (v728 == (1 - 0)) then
                                        v648:InputHoldEnd()
                                        break
                                    end
                                    if (v728 == (1812 - (1293 + 519))) then
                                        v648:InputHoldBegin()
                                        task.wait(0.1 - 0)
                                        v728 = 2 - 1
                                    end
                                end
                            end
                            v334 = v334 + (1 - 0)
                            v647 = 12 - 9
                        end
                        if (v647 == (6 - 3)) then
                            task.wait(0.3 + 0)
                            break
                        end
                        if (v647 == (0 + 0)) then
                            getgenv().FreeFallMethod = true
                            v111(v587.Position + Vector3.new(0 - 0, 3, 0 + 0))
                            v647 = 1 + 0
                        end
                    end
                end
            end
            if ((v334 == 0) and v110) then
                local v619 = 0
                while true do
                    if ((0 + 0) == v619) then
                        v111(v110)
                        v110 = nil
                        break
                    end
                end
            end
            v331 = 1100 - (709 + 387)
        end
        if (v331 == (1858 - (673 + 1185))) then
            if not v109 then
                return
            end
            v332 = v16.Character or v16.CharacterAdded:Wait()
            v331 = 2 - 1
        end
        if (v331 == 4) then
            getgenv().FreeFallMethod = false
            break
        end
    end
end
local function v113()
    local v335 = 0 - 0
    local v336
    while true do
        if (v335 == (0 - 0)) then
            if not v73 then
                return
            end
            v336 = false
            v335 = 1
        end
        if (v335 == (1 + 0)) then
            if v109 then
                for v649, v650 in ipairs(v109:GetChildren()) do
                    if (v650:IsA("MeshPart") and (v650.Name == "Baggy")) then
                        v336 = true
                        break
                    end
                end
            end
            getgenv().FreeFallMethod = v336
            v335 = 2 + 0
        end
        if (v335 == (2 - 0)) then
            if v336 then
                v112()
            elseif v110 then
                local v682 = 0
                while true do
                    if (v682 == (0 + 0)) then
                        v111(v110)
                        v110 = nil
                        break
                    end
                end
            end
            break
        end
    end
end
local function v114()
    while v73 do
        local v457 = 0 - 0
        while true do
            if (v457 == (0 - 0)) then
                v113()
                task.wait(1881 - (446 + 1434))
                break
            end
        end
    end
end
local v58 =
    v6.PickUp:AddToggle(
    "MyToggle",
    {
        Title = "Pick Up LootBags [GAMEPASS]",
        Description = "Enables automatic teleportation when loot bags are found.",
        Default = false,
        Callback = function(v337)
            local v338 = 0
            while true do
                if (v338 == 0) then
                    v73 = v337
                    if v73 then
                        spawn(v114)
                    end
                    break
                end
            end
        end
    }
)
task.spawn(
    function()
        while task.wait() do
            local v458 = 1283 - (1040 + 243)
            local v459
            while true do
                if (v458 == (0 - 0)) then
                    v459 = game:GetService("Players").LocalPlayer
                    if
                        (getgenv().FreeFallMethod and v459 and v459.Character and
                            v459.Character:FindFirstChild("Humanoid"))
                     then
                        v459.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
                    end
                    break
                end
            end
        end
    end
)
local function v115()
    for v460, v461 in ipairs(game:GetService("Workspace"):GetDescendants()) do
        if v461:IsA("ProximityPrompt") then
            v461.HoldDuration = 1847 - (559 + 1288)
        end
    end
end
v115()
task.spawn(
    function()
        while true do
            local v462 = 0
            while true do
                if (v462 == (1931 - (609 + 1322))) then
                    task.wait(456 - (13 + 441))
                    v115()
                    break
                end
            end
        end
    end
)
local v4 = game:GetService("Players")
local v116 = v4.LocalPlayer
local v109 = workspace:FindFirstChild("Dollas")
local v73 = false
getgenv().FreeFallMethod = false
local function v111(v339)
    local v340 = v116.Character or v116.CharacterAdded:Wait()
    local v341 = v340 and v340:FindFirstChild("HumanoidRootPart")
    if v341 then
        v341.CFrame = CFrame.new(v339, v339 + Vector3.new(0 - 0, 0, -1))
    end
end
local function v117()
    if not v109 then
        return
    end
    local v342 = v116.Character or v116.CharacterAdded:Wait()
    local v343 = v342 and v342:FindFirstChild("HumanoidRootPart")
    if not v343 then
        return
    end
    for v463, v464 in ipairs(v109:GetChildren()) do
        if (v464:IsA("Part") and ((v464.Name == "Money") or (v464.Name == "DeadMoney"))) then
            local v551 = 0 - 0
            local v552
            while true do
                if (v551 == (9 - 7)) then
                    if (v552 and v552:IsA("ProximityPrompt")) then
                        v552:InputHoldBegin()
                        task.wait(0.1 + 0)
                        v552:InputHoldEnd()
                    end
                    task.wait(0.3)
                    break
                end
                if (v551 == (3 - 2)) then
                    task.wait(0.2 + 0)
                    v552 = v464:FindFirstChild("ProximityPrompt")
                    v551 = 2
                end
                if (v551 == (0 + 0)) then
                    getgenv().FreeFallMethod = true
                    v111(v464.Position + Vector3.new(0 - 0, 3, 0 + 0))
                    v551 = 1
                end
            end
        end
    end
    getgenv().FreeFallMethod = false
end
local function v113()
    local v345 = 0
    local v346
    while true do
        if (v345 == (3 - 1)) then
            if v346 then
                v117()
            end
            break
        end
        if (v345 == (0 + 0)) then
            if not v73 then
                return
            end
            v346 = false
            v345 = 1
        end
        if (v345 == (1 + 0)) then
            if v109 then
                for v652, v653 in ipairs(v109:GetChildren()) do
                    if (v653:IsA("Part") and ((v653.Name == "Money") or (v653.Name == "DeadMoney"))) then
                        v346 = true
                        break
                    end
                end
            end
            getgenv().FreeFallMethod = v346
            v345 = 2 + 0
        end
    end
end
local function v118()
    while v73 do
        local v465 = 0
        while true do
            if (v465 == 0) then
                v113()
                task.wait(1 + 0)
                break
            end
        end
    end
end
local v58 =
    v6.PickUp:AddToggle(
    "MyToggle",
    {
        Title = "Pick Up Dropped Money",
        Description = "Enables automatic teleportation when money is found.",
        Default = false,
        Callback = function(v347)
            v73 = v347
            if v73 then
                spawn(v118)
            end
        end
    }
)
task.spawn(
    function()
        while task.wait() do
            local v466 = game:GetService("Players").LocalPlayer
            if (FreeFallMethod and v466 and v466.Character and v466.Character:FindFirstChild("Humanoid")) then
                v466.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
            end
        end
    end
)
local v18 = game:GetService("RunService")
local v4 = game:GetService("Players")
local v116 = v4.LocalPlayer
local v119 = workspace.CurrentCamera
local v103 = game:GetService("Workspace")
local v120 = v119.CameraType
local v121 = v119.CameraSubject
local v122 = v116.CameraMode
local v123 = v119.CFrame
local v124 = nil
local v125 = false
local v126 = false
local v127 = nil
local v128 = false
local function v129(v348)
    local v349 = 0
    local v350
    while true do
        if (v349 == (0 + 0)) then
            v350 = v103:FindFirstChild("StudioPay")
            if v350 then
                local v620 = v350:FindFirstChild("Money")
                if v620 then
                    for v699, v700 in ipairs(v620:GetChildren()) do
                        local v701 = 433 - (153 + 280)
                        local v702
                        while true do
                            if (v701 == (0 - 0)) then
                                v702 = v700:FindFirstChild("StudioMoney1")
                                if v702 then
                                    local v746 = 0
                                    local v747
                                    while true do
                                        if (v746 == (0 + 0)) then
                                            v747 = v702:FindFirstChild("Prompt")
                                            if (v747 and v747:IsA("ProximityPrompt")) then
                                                local v801 = 0 + 0
                                                while true do
                                                    if (v801 == 0) then
                                                        v747.Enabled = v348
                                                        if v348 then
                                                            v747.HoldDuration = 0 + 0
                                                        end
                                                        break
                                                    end
                                                end
                                            end
                                            break
                                        end
                                    end
                                end
                                break
                            end
                        end
                    end
                end
            end
            break
        end
    end
end
local function v130()
    if v124 then
        v124:Disconnect()
        v124 = nil
    end
    v119.CameraType = Enum.CameraType.Custom
    v116.CameraMode = v122
    v119.CameraSubject = (v116.Character and v116.Character:FindFirstChild("Humanoid")) or v121
    v129(false)
    task.wait(0.1 + 0)
    v119.CFrame = v123
end
local function v131()
    local v356 = 0
    local v357
    local v358
    while true do
        if (v356 == 0) then
            v357 = v116.Character or v116.CharacterAdded:Wait()
            v358 = v357:WaitForChild("HumanoidRootPart")
            v356 = 1 + 0
        end
        if (1 == v356) then
            v119.CameraType = Enum.CameraType.Scriptable
            v124 =
                v18.RenderStepped:Connect(
                function()
                    if v358 then
                        local v654 = v358.Position + Vector3.new(0 - 0, 3, 0)
                        v119.CFrame = CFrame.new(v654, v358.Position)
                    end
                end
            )
            break
        end
    end
end
local function v132()
    local v359 = 0 + 0
    local v360
    while true do
        if (v359 == (667 - (89 + 578))) then
            if not v125 then
                return
            end
            v360 = v103:FindFirstChild("StudioPay")
            v359 = 1 + 0
        end
        if (v359 == (1 - 0)) then
            if v360 then
                local v621 = 1049 - (572 + 477)
                local v622
                while true do
                    if (v621 == (0 + 0)) then
                        v622 = v360:FindFirstChild("Money")
                        if v622 then
                            for v729, v730 in ipairs(v622:GetChildren()) do
                                local v731 = v730:FindFirstChild("StudioMoney1")
                                if v731 then
                                    local v748 = 0 + 0
                                    local v749
                                    while true do
                                        if (v748 == 0) then
                                            v749 = v731:FindFirstChild("Prompt")
                                            if (v749 and v749:IsA("ProximityPrompt") and v749.Enabled) then
                                                for v802 = 0 + 0, 106 - (84 + 2) do
                                                    v749:InputHoldBegin()
                                                    task.wait(0 - 0)
                                                    v749:InputHoldEnd()
                                                end
                                            end
                                            break
                                        end
                                    end
                                end
                            end
                        end
                        break
                    end
                end
            end
            break
        end
    end
end
local v133 = {
    {
        position = Vector3.new(94260.1875 - (497 + 345), 14486.578125, 563.1906127929688),
        facingDirection = Vector3.new(-(3 + 97), 1, 1)
    },
    {
        position = Vector3.new(94768.65625 - (605 + 728), 10336.904296875 + 4150, 564.0458374023438),
        facingDirection = Vector3.new(-(222 - 122), 1 + 0, 1)
    },
    {
        position = Vector3.new(84224.375 + 9203, 40138.2158203125 - 25651, 577.8006591796875),
        facingDirection = Vector3.new(-(76 + 24), 490 - (457 + 32), 1)
    }
}
local function v134()
    local v361 = v116.Character or v116.CharacterAdded:Wait()
    local v362 = v361:WaitForChild("HumanoidRootPart")
    local v363 = 1
    while not v126 do
        if v126 then
            break
        end
        local v467 = v133[v363]
        v362.CFrame = CFrame.new(v467.position, v467.position + v467.facingDirection)
        v132()
        if ((v363 == #v133) and v128) then
            v126 = true
            break
        end
        v363 = (v363 % #v133) + 1
        task.wait(0.1 + 0)
    end
end
local function v135()
    v125 = true
    v126 = false
    v129(true)
    v131()
    local v364 = coroutine.create(v134)
    coroutine.resume(v364)
    while not v126 do
        if v126 then
            break
        end
        task.wait(0.1)
    end
    v125 = false
    if v128 then
        local v515 = 1402 - (832 + 570)
        while true do
            if (v515 == 0) then
                task.wait(0.1)
                loadstring(
                    game:HttpGet(
                        "https://raw.githubusercontent.com/DracoSwagBaby/ScriptsBanger/refs/heads/main/ServerHop%20Script"
                    )
                )()
                break
            end
        end
    else
        v130()
    end
end
local function v136()
    local v365 = 0 + 0
    while true do
        if (v365 == (1 + 0)) then
            v130()
            break
        end
        if (v365 == 0) then
            v126 = true
            v125 = false
            v365 = 3 - 2
        end
    end
end
v116.CharacterAdded:Connect(
    function()
        local v366 = 0 + 0
        while true do
            if (v366 == (796 - (588 + 208))) then
                v126 = true
                v130()
                break
            end
        end
    end
)
local v9 = v6.AutoFarm:AddSection("Cash Farm Option")
local v137 =
    v6.AutoFarm:AddToggle(
    "MyToggle",
    {
        Title = "Cash Farm",
        Description = "Farm Cash in Third-Person (Top-Down), & Rapid Teleport",
        Default = false,
        Callback = function(v367)
            if v367 then
                if not v125 then
                    v127 = coroutine.create(v135)
                    coroutine.resume(v127)
                end
            else
                v136()
            end
        end
    }
)
local v138 =
    v6.AutoFarm:AddToggle(
    "ServerHop",
    {
        Title = "Enable Server Hop",
        Description = "Server Hop at Third Coordinate",
        Default = false,
        Callback = function(v368)
            v128 = v368
        end
    }
)
local v9 = v6.AutoFarm:AddSection("Garbage Farm Option Soon...")
v6.Money:AddButton(
    {
        Title = "Show Bank Balance",
        Description = "",
        Callback = function()
            local v369 = 0 - 0
            local v370
            while true do
                if ((1800 - (884 + 916)) == v369) then
                    v370 = game:GetService("Players").LocalPlayer.stored.Bank.Value
                    v0:Notify(
                        {
                            Title = "Money Check",
                            Content = "Your current bank balance is: " .. tostring(v370),
                            SubContent = "",
                            Duration = 6 - 3
                        }
                    )
                    break
                end
            end
        end
    }
)
local v139 = v6.Money
local v140 = false
v139:AddToggle(
    "AutoMoney",
    {
        Title = "10K Money Drop",
        Default = false,
        Callback = function(v371)
            local v372 = 0
            while true do
                if (v372 == 0) then
                    v140 = v371
                    if v140 then
                        task.spawn(
                            function()
                                while v140 do
                                    game:GetService("ReplicatedStorage"):WaitForChild("BankProcessRemote"):InvokeServer(
                                        "Drop",
                                        "10000"
                                    )
                                    v0:Notify({Title = "Money Drop", Content = "Dropped $10K", Duration = 2 + 0})
                                    task.wait(654 - (232 + 421))
                                end
                            end
                        )
                    end
                    break
                end
            end
        end
    }
)
v139:AddInput(
    "WithdrawCash",
    {
        Default = "",
        Numeric = false,
        Finished = true,
        Title = "Withdraw Cash",
        Description = "Maximum 90K",
        Placeholder = "Enter amount",
        Callback = function(v373)
            local v374 = tonumber(v373)
            if (v374 and (v374 <= 90000) and (v374 > 0)) then
                game:GetService("ReplicatedStorage").BankAction:FireServer("with", v374)
                v0:Notify({Title = "Withdraw", Content = "Withdrew $" .. v374, Duration = 1892 - (1569 + 320)})
            else
                v0:Notify({Title = "Withdraw", Content = "Invalid amount! Max 90K.", Duration = 3})
            end
        end
    }
)
v139:AddInput(
    "DepositCash",
    {
        Default = "",
        Numeric = false,
        Finished = true,
        Title = "Deposit Cash",
        Description = "Maximum 30K",
        Placeholder = "Enter amount",
        Callback = function(v375)
            local v376 = tonumber(v375)
            if (v376 and (v376 <= (7361 + 22639)) and (v376 > (0 + 0))) then
                game:GetService("ReplicatedStorage").BankAction:FireServer("depo", v376)
                v0:Notify({Title = "Deposit", Content = "Deposited $" .. v376, Duration = 9 - 6})
            else
                v0:Notify({Title = "Deposit", Content = "Invalid amount! Max 30K.", Duration = 608 - (316 + 289)})
            end
        end
    }
)
local v73 = false
local v58 =
    v6.Money:AddToggle(
    "MyToggle",
    {
        Title = "Deposit 30K Automatically",
        Default = false,
        Callback = function(v377)
            local v378 = 0 - 0
            while true do
                if (v378 == (0 + 0)) then
                    v73 = v377
                    if v73 then
                        task.spawn(
                            function()
                                while v73 do
                                    local v683 = 1453 - (666 + 787)
                                    while true do
                                        if (v683 == 3) then
                                            game:GetService("ReplicatedStorage"):WaitForChild("BankAction"):FireServer(
                                                "depo",
                                                "30000"
                                            )
                                            task.wait(426 - (360 + 65))
                                            break
                                        end
                                        if (v683 == (2 + 0)) then
                                            game:GetService("ReplicatedStorage"):WaitForChild("BankAction"):FireServer(
                                                "depo",
                                                "30000"
                                            )
                                            task.wait(256 - (79 + 175))
                                            v683 = 3
                                        end
                                        if (v683 == 1) then
                                            for v732, v733 in ipairs(game:GetService("Workspace"):GetDescendants()) do
                                                if v733:IsA("ProximityPrompt") then
                                                    v733.HoldDuration = 0 - 0
                                                    v733.MaxActivationDistance = 6
                                                end
                                            end
                                            task.wait(0.1 + 0)
                                            v683 = 2
                                        end
                                        if (v683 == (0 - 0)) then
                                            game:GetService("ReplicatedStorage"):WaitForChild("BankProcessRemote"):InvokeServer(
                                                "Drop",
                                                "nan"
                                            )
                                            task.wait(0.1)
                                            v683 = 1 - 0
                                        end
                                    end
                                end
                            end
                        )
                    end
                    break
                end
            end
        end
    }
)
local v116 = game:GetService("Players").LocalPlayer
local function v99()
    local v379 = v116:FindFirstChild("PlayerGui")
    if not v379 then
        return
    end
    local v380 = Instance.new("ScreenGui")
    v380.Name = "TeleportBlackout"
    v380.Parent = v379
    local v383 = Instance.new("Frame")
    v383.Size = UDim2.new(900 - (503 + 396), 181 - (92 + 89), 1 - 0, 0)
    v383.Position = UDim2.new(0 + 0, 0 + 0, 0 - 0, 0 + 0)
    v383.BackgroundColor3 = Color3.new(0 - 0, 0 + 0, 0 + 0)
    v383.BackgroundTransparency = 0 - 0
    v383.Parent = v380
    local v389 = Instance.new("TextLabel")
    v389.Size = UDim2.new(0.6 + 0, 0 - 0, 0.2, 1244 - (485 + 759))
    v389.Position = UDim2.new(0.2 - 0, 1189 - (442 + 747), 1135.55 - (832 + 303), 0)
    v389.Text = "discord.gg/synthx"
    v389.TextColor3 = Color3.new(1, 947 - (88 + 858), 1 + 0)
    v389.TextScaled = true
    v389.BackgroundTransparency = 1
    v389.Font = Enum.Font.SourceSansBold
    v389.Parent = v383
    local v399 = Instance.new("ImageLabel")
    v399.Size = UDim2.new(0.3, 0 + 0, 0.5 + 0, 0)
    v399.Position = UDim2.new(0.35, 0, 789.15 - (766 + 23), 0)
    v399.Image = "rbxassetid://122954732244882"
    v399.BackgroundTransparency = 4 - 3
    v399.Parent = v383
    task.spawn(
        function()
            for v516 = 0 - 0, 948 - 588, 16 - 11 do
                if not v380.Parent then
                    break
                end
                v399.Rotation = v516
                task.wait(1073.02 - (1036 + 37))
            end
        end
    )
    task.delay(
        1,
        function()
            if v380 then
                v380:Destroy()
            end
        end
    )
end
getgenv().FreeFallMethod = false
task.spawn(
    function()
        while task.wait() do
            if FreeFallMethod then
                local v557 = game:GetService("Players").LocalPlayer
                if (v557 and v557.Character and v557.Character:FindFirstChild("Humanoid")) then
                    local v623 = 0 + 0
                    local v624
                    while true do
                        if (v623 == (0 - 0)) then
                            v624 = v557.Character.Humanoid
                            v624:ChangeState(Enum.HumanoidStateType.Freefall)
                            break
                        end
                    end
                end
            end
        end
    end
)
local function v141(v405)
    local v406 = 0 + 0
    local v407
    while true do
        if (v406 == 0) then
            v407 = v116.Character or v116.CharacterAdded:Wait()
            if (v407 and v407:FindFirstChild("HumanoidRootPart")) then
                v99()
                getgenv().FreeFallMethod = true
                task.wait(1480.5 - (641 + 839))
                local v626 = v407.HumanoidRootPart
                v626.CFrame = CFrame.new(v405)
                v626.Anchored = false
                task.wait(913.5 - (910 + 3))
                getgenv().FreeFallMethod = false
            else
                warn("[ERROR] Character or HumanoidRootPart not found!")
            end
            break
        end
    end
end
local v142 = {
    {"Safe Spot", Vector3.new(247.1957, 283.4985, -(298.4806 + 350))},
    {"Crafting Roof", Vector3.new(-(1241.9578999999999 - (174 + 680)), 340.3467, -558.864)},
    {"Store items", Vector3.new(48917.898400000005 + 19597, 53680.5 - (396 + 343), -796.09)},
    {"Construction Site", Vector3.new(-(3120.8307 - (135 + 1254)), 1393.8123 - 1023, -(5490.8387 - 4314))},
    {"Backpack Shop", Vector3.new(-(1248.0961303710938 - (102 + 472)), 253.59814453125, -684.4346313476562)},
    {"Ice Box", Vector3.new(-(120.14073181152344 + 95), 283.5154113769531, -(1173.6910400390625 + 85))},
    {"Frozen Shop", Vector3.new(-(338.706 - 148), 174.8549 + 109, -(2634.5918 - (157 + 1307)))},
    {"Drip Shop", Vector3.new(7378.695300000007 + 60084, 18630.0352 - 8141, 205.58950000000004 + 344)},
    {"Bank", Vector3.new(-207.377, 283.6329, -(2240.6583 - (834 + 192)))},
    {"Pawn Shop", Vector3.new(-(23.643100000000004 + 1026), 391.5367 - 138, -(1118.2696999999998 - (300 + 4)))},
    {"Pent House", Vector3.new(-(492.4557 - (112 + 250)), 168.4685 + 251, -(1422.7767 - 854))},
    {"Sewer", Vector3.new(40197.00780000001 + 40872, 133133.0313, 125.0926 + 43)},
    {"GunShop Lobby", Vector3.new(-1002.4224, 563.6382 - 310, -(1685.9125 - (244 + 638)))},
    {"Chicken Wings", Vector3.new(-(1559.9142000000002 - (512 + 90)), 253.5367, -815.9442)},
    {"Deli Grocery", Vector3.new(-(419.7261 + 508), 253.1368, -691.3687)},
    {"Dominos", Vector3.new(-(196.76620000000003 + 543), 253.229, -(2519.422 - 1564))},
    {"GunShop 1", Vector3.new(198909.8984 - 105940, 488.9688000000024 + 121609, 17023.8867)},
    {"GunShop 2", Vector3.new(66197.125, 63201.7188 + 60414, 5749.2305)},
    {"GunShop 3", Vector3.new(61041.3086 - (55 + 166), 16979.148400000005 + 70630, -(36.47460000000001 + 315))},
    {"CarDealer", Vector3.new(-379.0562, 441.2626 - 188, -(2614.4066000000003 - (34 + 1334)))},
    {"Money Wash", Vector3.new(-(376.1771 + 601), 197.6838 + 56, -(1975.5855000000001 - (1035 + 248)))}
}
for v408, v409 in ipairs(v142) do
    v6.Teleport:AddButton(
        {Title = v409[22 - (20 + 1)], Description = "Teleports You Safely", Callback = function()
                v141(v409[2 + 0])
            end}
    )
end
v6.Shop:AddButton(
    {Title = "Shiesty (150$)", Description = "Instantly buys the item", Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("ShopRemote"):InvokeServer("Shiesty")
        end}
)
v6.Shop:AddButton(
    {Title = "Water (10$)", Description = "Instantly buys the item", Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("ShopRemote"):InvokeServer("Water")
        end}
)
v6.Shop:AddButton(
    {Title = "BlueGloves (10$)", Description = "Instantly buys the item", Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("ShopRemote"):InvokeServer("BluGloves")
        end}
)
v6.Shop:AddButton(
    {Title = "WhiteGloves (10$)", Description = "Instantly buys the item", Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("ShopRemote"):InvokeServer("WhiteGloves")
        end}
)
v6.Shop:AddButton(
    {Title = "BlackGloves (10$)", Description = "Instantly buys the item", Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("ShopRemote"):InvokeServer("BlackGloves")
        end}
)
v6.Shop:AddButton(
    {Title = "RawSteak (10$)", Description = "Instantly buys the item", Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("ShopRemote"):InvokeServer("RawSteak")
        end}
)
v6.Shop:AddButton(
    {Title = "RawChicken (10$)", Description = "Instantly buys the item", Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("ShopRemote"):InvokeServer("RawChicken")
        end}
)
v6.Shop:AddButton(
    {Title = "PinkCamoGloves (67$)", Description = "Instantly buys the item", Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("ShopRemote"):InvokeServer("PinkCamoGloves")
        end}
)
v6.Shop:AddButton(
    {Title = "RedCamoGloves (67$)", Description = "Instantly buys the item", Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("ShopRemote"):InvokeServer("RedCamoGloves")
        end}
)
v6.Shop:AddButton(
    {Title = "BluCamoGloves (67$)", Description = "Instantly buys the item", Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("ShopRemote"):InvokeServer("BluCamoGloves")
        end}
)
v6.ExoticShop:AddButton(
    {Title = "FakeCard (700$)", Description = "Instantly buys the item", Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("ExoticShopRemote"):InvokeServer("FakeCard")
        end}
)
