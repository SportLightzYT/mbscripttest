function LoadSettings()
	if readfile and writefile and isfile and isfolder then
		if not isfolder("Day Hub Next Genaration ") then
			makefolder("Day Hub Next Genaration ")
		end
		if not isfolder("Day Hub Next Genaration /Blox Fruits/") then
			makefolder("Day Hub Next Genaration /Blox Fruits/")
		end
		if not isfile("Day Hub Next Genaration /Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
			writefile("Day Hub Next Genaration /Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(getgenv().Setting))
		else
			local Decode = game:GetService("HttpService"):JSONDecode(readfile("Day Hub Next Genaration /Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
			for i,v in pairs(Decode) do
			 getgenv().Setting[i] = v
			end
		end
	else
		return warn("Status : Undetected Executor")
	end
end
function savesettings()
	if readfile and writefile and isfile and isfolder then
		if not isfile("Day Hub Next Genaration /Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
			LoadSettings()
		else
			local Decode = game:GetService("HttpService"):JSONDecode(readfile("Day Hub Next Genaration /Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
			local Array = {}
			for i,v in pairs(getgenv().Setting) do
				Array[i] = v
			end
			writefile("Day Hub Next Genaration /Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
		end
	else
		return warn("Status : Undetected Executor")
	end
end
LoadSettings()
if not game:IsLoaded() then 
    repeat game.Loaded:Wait()
    until game:IsLoaded() 
end
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
	repeat wait()
		if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
			if _G.Team == "Pirate" then
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			elseif _G.Team == "Marine" then
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			else
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			end
		end
	until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end
local VirtualUser = game:GetService('VirtualUser')
task.spawn(function()
      game:GetService("Players").LocalPlayer.Idled:connect(function()
          pcall(function()
              VirtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
              task.wait()
              VirtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
          end)
      end)
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if HideDmg then
				game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
			else
				game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
			end
		end)
	end
end)
task.spawn(function()
while task.wait() do
		for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
			if v.Name == "eff" or v.Name == "CurvedRing" or v.Name == "SwordSlash" or v.Name == "SlashHit" then
				v:Destroy() 
			end
		end
end
end)
task.spawn(function()
while wait() do
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
				if v.ClassName == "MeshPart" then
					v.Transparency = 0.5
				end
			end
			for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
				if v.Name == "Head" then
					v.Transparency = 0.5
				end
			end
			for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
				if v.ClassName == "Accessory" then
					v.Handle.Transparency = 0.5
				end
			end
			for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
				if v.ClassName == "Decal" then
					v.Transparency = 0.5
				end
			end
		end)
	end
end)
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end
function click()
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
require(game.ReplicatedStorage.Util.CameraShaker):Stop()
function TP(P1)
			if not _G.Stop_Tween then
				local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
				Speed = 350
				if Distance < 250 then
					Speed = 5000
				elseif Distance < 500 then
					Speed = 650
				elseif Distance < 1000 then
					Speed = 350
				elseif Distance >= 1000 then
					Speed = 350
				end
				Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = P1})
				if _G.Stop_Tween or Auto_Raid then
					Tween:Cancel()
				elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
					Tween:Play()
				end
			end
		end
		
function TP3(P1)
	local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance < 500 then
		Speed = 500
	elseif Distance < 500 then
		Speed = 500
	elseif Distance < 1000 then
		Speed = 500
	elseif Distance >= 1000 then
		Speed = 500
	end
	game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
		{CFrame = P1}
	):Play()
	if _G.Stop_Tween then
		game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
			{CFrame = P1}
		):Cancel()
	end
end
function TP2(P1)
	local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance < 1000 then
		Speed = 350
	elseif Distance < 500 then
		Speed = 350
	elseif Distance < 500 then
		Speed = 350
	elseif Distance < 500 then
		Speed = 350
	elseif Distance < 1000 then
		Speed = 350
	elseif Distance >= 1000 then
		Speed = 350
	end
	game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
		{CFrame = P1}
	):Play()
	if _G.Stop_Tween then
		game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
			{CFrame = P1}
		):Cancel()
	end
	_G.Clip = true
	wait(Distance/Speed)
	_G.Clip = false
end
function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        TP2(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
end
function Equip(ToolX)
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ToolX) then
		getgenv().Tol = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ToolX)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tol)
	end
end
task.spawn(function()
    while true do wait()
        getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
                if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                    wait(50)
                end
        end)
    end
end)
function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
			return true
		end
		return false
	end
end
function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end
task.spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		pcall(function()
			if _G.Clip or _G.Auto_Cake_Prince or _G.Auto_Elite_Hunter or _G.Auto_Farm_Angel_Wing  or _G.AutoEctoplasm or _G.Auto_Farm_Radioactive or _G.Auto_Farm_Vampire_Fang or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_Scrap_and_Leather or _G.Auto_Farm_GunPowder or _G.Auto_Farm_Dragon_Scales or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Conjured_Cocoa or _G.Auto_Farm_Mini_Tusk or _G.Auto_Farm_All_Boss or _G.Auto_Farm_Boss or _G.NextIsland or _G.Auto_Farm_Bone or _G.Auto_Farm_Level then
            if syn then
                setfflag("HumanoidParallelRemoveNoPhysics", "False")
                setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                end
            else
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
                        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                        end
                        local BodyVelocity = Instance.new("BodyVelocity")
                        BodyVelocity.Name = "BodyVelocity1"
                        BodyVelocity.Parent =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                        BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
                        BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                    end
                end
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        else
            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
                game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1"):Destroy();
            end
        end
    end)
end)
end)
Old_World = false
New_World = false
Three_World = false
local placeId = game.PlaceId
if placeId == 2753915549 then
    Old_World = true
elseif placeId == 4442272183 then
    New_World = true
elseif placeId == 7449423635 then
    Three_World = true
end
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
getgenv().Calendar={
    DateTime.now():FormatLocalTime("dddd", "eu-us");
    DateTime.now():FormatLocalTime("D", "eu-us");
    DateTime.now():FormatLocalTime("MMMM", "eu-us");
    DateTime.now():FormatLocalTime("YYYY", "eu-us")
}
getgenv().Window=Library:CreateWindow({Title = 'Day Hub Next Generation | '..Calendar[1]..', '..Calendar[2]..', '..Calendar[3]..', '..Calendar[4]..'.',Center = true, AutoShow = true});
local Tabs = {
    Gerenal = Window:AddTab('Gerenal'), 
    Automatics = Window:AddTab('Automatics'),
	Shop = Window:AddTab('Shop'),
	Visuals = Window:AddTab('Visuals'),
    Misc = Window:AddTab('Miscellaneous'),
    ['UI Settings'] = Window:AddTab('Settings'),
}
Library:Notify("🔥 Day Hub Next Generation Script | Loadded 🔥")
Library:Notify("🔥 Blox Fruit Script | Loadded 🔥")
Library:Notify("❄️ Last Update | "..Calendar[1]..', '..Calendar[2]..', '..Calendar[3]..', '..Calendar[4].." ❄️")
Library:Notify("☄️ Enjoy With Day Hub Next Generation Script ☄️ ")
Library:Notify("⭐️ Welcome | "..game.Players.LocalPlayer.Name.." ⭐️")
local GerenalTab = Tabs.Gerenal:AddLeftGroupbox('[ Auto Farm Level & Quest World ]')
GerenalTab:AddToggle('Auto_Farm_Level', {
    Text = 'Auto Farm Level',
    Default = false, 
})
Toggles.Auto_Farm_Level:OnChanged(function(vu)
	_G.Auto_Farm_Level = vu
	StopTween(_G.Auto_Farm_Level)
end)
require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.Particle.SlashHit).playAt = function() return nil end;
getgenv().A = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync 
getgenv().B = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle).play
task.spawn(function()
    while task.wait() do
        if _G.Auto_Farm_Level then
            pcall(function()
                require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync =function(a1,a2,a3,a4,a5)
                    local GetBladeHits = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).getBladeHits(a2,a3,a4)
                    if GetBladeHits then
                        require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).play = function() end;
                        a1:Play(0.1, 0.1, 0.1);
                        a5(GetBladeHits);
                        require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).play = getgenv().B 
                        wait(.5);
                        a1:Stop();
                    end;
                end;
            end);
        end
    end;
end);
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_Level then
		    pcall(function()
			if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				StartMagnet = false;
				    CheckQuest();
        			TP2(CFrameQuestuestuest);
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuestuestuest.Position).Magnitude <= 20 then
					    CheckQuest();
					    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuestuestuest
					    task.wait(.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint");
		        end;
			elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				pcall(function()
					CheckQuest();
					if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == Ms and v:FindFirstChild("Humanoid") then
								if v.Humanoid.Health > 0 then
									repeat wait(_G.Fast_Delay)
										if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
											if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                local args = {
                                                    [1] = "Buso"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
												end;
												StartMagnet = true
												FastAttackSpeed = true
                                                Equip(WeaponName)
												TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
												if isnetworkowner(v.HumanoidRootPart) then
												v.HumanoidRootPart.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
												_G.PosMon = v.HumanoidRootPart.CFrame
                        						v.Humanoid.JumpPower = 0;
                        						v.Humanoid.WalkSpeed = 0;
                                                v.HumanoidRootPart.CanCollide = false
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy();
                                                end;
                                                v.Humanoid:ChangeState(14);
                                                else
                                                v.HumanoidRootPart.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
												_G.PosMon = v.HumanoidRootPart.CFrame
                        						v.Humanoid.JumpPower = 0;
                        						v.Humanoid.WalkSpeed = 0;
                                                v.HumanoidRootPart.CanCollide = false;
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy();
                                                end;
                                                v.Humanoid:ChangeState(14);
												end;
												StartMagnet = true;
											else
												StartMagnet = false; 
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
											end;
										else
											StartMagnet = false;
											FastAttackSpeed = false;
											CheckQuest();
											TP2(CFrameMon)
										end
									until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Farm_Level == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
									FastAttackSpeed = false
								end;
							end;
						end;
					else
						StartMagnet = false;
						FastAttackSpeed = false;
						CheckQuest();
						TP2(CFrameMon)
					end;
				end);
			end;
		    end);
	    end;
	end;
end);
task.spawn(function() 
	_G.Type=math.random(1,5);
	while task.wait(.2) do
	_G.Type=math.random(1,5);
	end;
end);
local GerenalTab = Tabs.Gerenal:AddLeftGroupbox('[ Mob Aura ]')
GerenalTab:AddSlider('SelectDistance', {
    Text = 'Select Distance',
	Default = 1000,
    Min = 1000,
    Max = 5000,
	Rounding = 0,
    Compact = false,
})
Options.SelectDistance:OnChanged(function(x)
	_G.SelectDistance = x
end)
GerenalTab:AddToggle('MobAura', {
    Text = 'Mob Aura',
    Default = false, 
})
Toggles.MobAura:OnChanged(function(vu)
	_G.MobAura = vu
	StopTween(_G.MobAura)
end)
	task.spawn(function()
			while task.wait() do
				pcall(function()
					if _G.MobAura then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if _G.MobAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= _G.SelectDistance then
								repeat wait(_G.Fast_Delay)
								StartMagnet = true
								FastAttackSpeed = true
								Equip(WeaponName)
									PosMon = v.HumanoidRootPart.CFrame
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									MagnetMobAura = true
									if delay then
										delay(1,function()
											MagnetMobAura = true
										end)
									end 
								until not _G.MobAura or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
								StartMagnet = false
							end
						end
					end
				end)
			end
		end)
local GerenalTab = Tabs.Gerenal:AddLeftGroupbox('[ Auto Farm Boss ]')
Boss = {}
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
	if string.find(v.Name,"Boss") then
		table.insert(Boss,v.Name)
	end
end
for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
	if string.find(v.Name,"Boss") then
		table.insert(Boss,v.Name)
	end
end
local Select_Boss = GerenalTab:AddDropdown('Select_Boss', {
	Values = Boss,
    Multi = false,
    Text = 'Select Boss',
})
Options.Select_Boss:OnChanged(function()
	_G.Select_Boss = Options.Select_Boss.Value
	print(Options.Select_Boss.Value)
end)
GerenalTab:AddButton("Refresh Boss",function()
	table.clear(Boss)
	for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
		if string.find(v.Name, "Boss") then
			if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
			
			else
				table.insert(Boss, v.Name)
			end
		end
	end
	Select_Boss:SetValues(Boss)
end)
GerenalTab:AddToggle('Auto_Farm_Boss', {
    Text = 'Auto Farm Boss',
    Default = false, 
})
Toggles.Auto_Farm_Boss:OnChanged(function(vu)
	_G.Auto_Farm_Boss = vu
	StopTween(_G.Auto_Farm_Boss)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_Boss then
			pcall(function()
				CheckBossQuest()
				if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
					if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == MsBoss then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					else
						TP2(CFrameBoss)
					end
				else
					if _G.Auto_Quest_Boss then
						CheckBossQuest()
						if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						end
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							repeat task.wait() TP2(CFrameQuestuestuestBoss) until (CFrameQuestuestuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Boss
							if (CFrameQuestuestuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat task.wait(_G.Fast_Delay)
											if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
												FastAttackSpeed = true
												Equip(WeaponName)
												TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))									
											else
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
										FastAttackSpeed = false
									end
								end
							else
								TP2(CFrameBoss)
							end
						end
					else
						if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == MsBoss then
									repeat task.wait()
										FastAttackSpeed = true
										Equip(WeaponName)
										TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))										
									until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
									FastAttackSpeed = false
								end
							end
						else
							TP2(CFrameBoss)
						end
					end
				end
			end)
		end
	end
end)
GerenalTab:AddToggle('Auto_Quest_Boss', {
    Text = 'Auto Quest Boss',
    Default = true, 
})
Toggles.Auto_Quest_Boss:OnChanged(function(t)
	_G.Auto_Quest_Boss = t
end)
GerenalTab:AddToggle('Auto_Farm_All_Boss', {
    Text = 'Auto Farm All Boss',
    Default = false,
})
Toggles.Auto_Farm_All_Boss:OnChanged(function(vu)
    _G.Auto_Farm_All_Boss = vu
	StopTween(_G.Auto_Farm_All_Boss)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_All_Boss then
			pcall(function()
				for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
					if string.find(v.Name,"Boss") then
						repeat task.wait(_G.Fast_Delay)
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
								TP2(v.HumanoidRootPart.CFrame)
							elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
								FastAttackSpeed = true
								Equip(WeaponName)
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(80,80,80)
								TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						until v.Humanoid.Health <= 0 or _G.Auto_Farm_All_Boss == false or not v.Parent
						FastAttackSpeed = false
					end
				end
			end)
		end
	end
end)
local Gerenal = Tabs.Gerenal:AddRightTabbox()
local GerenalTab = Gerenal:AddTab('[ Settings Farm ]')
Weapon = {
	"Melee",
	"Sword",
	"Devil Fruit"
}
FastAttack = {
    "Slow",
    "Fast",
    "Extreme",
}
task.spawn(function()
	while wait() do
		pcall(function()
			if SelectWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							WeaponName = v.Name
						end
					end
				end
			elseif SelectWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							WeaponName = v.Name
						end
					end
				end
			elseif SelectWeapon == "Devil Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							WeaponName = v.Name
						end
					end
				end
			else
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							WeaponName = v.Name
						end
					end
				end
			end
	end)
end
end)
GerenalTab:AddDropdown('SelectWeaponDropdown', {
	Values = Weapon,
	Default = "Melee",
	Multi = false,
	Text = 'Select Weapon Type',
})
Options.SelectWeaponDropdown:OnChanged(function(vu)
	SelectWeapon = vu
end)
GerenalTab:AddDropdown('FastAttackMode', {
    Values = FastAttack,
    Default = "Fast",
    Multi = false,
    Text = 'Select Fast Attacks Mode',
})
Options.FastAttackMode:OnChanged(function(vu)
	SelectSpeedFast = vu
	if SelectSpeedFast == "Slow" then
		_G.Fast_Delay = 0.12
	elseif SelectSpeedFast == "Fast" then
		_G.Fast_Delay = 0.07
	elseif SelectSpeedFast == "Extreme" then
		_G.Fast_Delay = 0.01
	end
end)
local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
function CurrentWeapon()
	local ac = CombatFrameworkR.activeController
	local ret = ac.blades[1]
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	pcall(function()
		while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	end)
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	return ret
end
function getAllBladeHitsPlayers(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i=1,#Characters do local v = Characters[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end
function getAllBladeHits(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end
function DamageAura()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHits(150) local a = getAllBladeHitsPlayers(150)
			if #bladehit or #a > 0 then
				local AcAttack8 = debug.getupvalue(ac.attack, 5)
				local AcAttack9 = debug.getupvalue(ac.attack, 6)
				local AcAttack7 = debug.getupvalue(ac.attack, 4)
				local AcAttack10 = debug.getupvalue(ac.attack, 7)
				local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				local NumberAc13 = AcAttack7 * 798405
				(function()
					NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				end)()
				AcAttack10 = AcAttack10 + 1
				debug.setupvalue(ac.attack, 5, AcAttack8)
				debug.setupvalue(ac.attack, 6, AcAttack9)
				debug.setupvalue(ac.attack, 4, AcAttack7)
				debug.setupvalue(ac.attack, 7, AcAttack10)
				for k, v in pairs(ac.animator.anims.basic) do
					v:Play(0.01,0.01,0.01)
				end                 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "") 
				end
			end
		end
	end
end
function AttackFunction()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHits(60)
			if #bladehit > 0 then
				local AcAttack8 = debug.getupvalue(ac.attack, 5)
				local AcAttack9 = debug.getupvalue(ac.attack, 6)
				local AcAttack7 = debug.getupvalue(ac.attack, 4)
				local AcAttack10 = debug.getupvalue(ac.attack, 7)
				local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				local NumberAc13 = AcAttack7 * 798405
				(function()
					NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				end)()
				AcAttack10 = AcAttack10 + 1 
				debug.setupvalue(ac.attack, 5, AcAttack8)
				debug.setupvalue(ac.attack, 6, AcAttack9)
				debug.setupvalue(ac.attack, 4, AcAttack7)
				debug.setupvalue(ac.attack, 7, AcAttack10)
				for k, v in pairs(ac.animator.anims.basic) do
					v:Play(0.01,0.01,0.01)
				end                 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "")
				end
			end
		end
	end
end
task.spawn(function()
    pcall(function()
    while task.wait(_G.Fast_Delay) do
        if FastAttackSpeed then
            AttackFunction()
           end
        end
    end)
end)
GerenalTab:AddToggle('BringMob', {
    Text = 'Bring Mob',
    Default = true,
	Tooltip = "For Auto Farm Level And Farm Mastery Only",
})
Toggles.BringMob:OnChanged(function(vu)
    StatrMagnet = vu
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if StatrMagnet then
				if _G.Auto_Farm_Level then
					if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == Ms and (v.HumanoidRootPart.Position-_G.PosMon.Position).Magnitude <= 350 then
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(5,5,5)
								v.HumanoidRootPart.CFrame = _G.PosMon
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
							end
						end
					end
				else
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.HumanoidRootPart.Position-_G.PosMon.Position).Magnitude <= 350 then
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.Humanoid:ChangeState(11)
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(5,5,5)
							v.HumanoidRootPart.CFrame = _G.PosMon
							sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius",  math.huge)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  9e20)
						end
					end
				end
			end
		end)
	end
end)
GerenalTab:AddToggle('AutoHaKi', {
    Text = 'Auto Buso',
    Default = true, 
})
Toggles.AutoHaKi:OnChanged(function(vu)
    _G.Auto_Haki = vu
end)
task.spawn(function()
    while task.wait() do
		pcall(function()
			if _G.Auto_Haki then
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
				else
					task.wait()
				end
			end
		end)
    end
end)
GerenalTab:AddToggle('Auto_Ken_Haki', {
    Text = 'Auto Ken Haki',
    Default = false, 
})
Toggles.Auto_Ken_Haki:OnChanged(function(vu)
    _G.Auto_Ken = vu
end)
task.spawn(function()
	while task.wait(2) do
		pcall(function()
			if _G.Auto_Ken then
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
				task.wait(7)
			end
		end)
	end
end)
GerenalTab:AddToggle('AutoRejoin', {
    Text = 'Auto Rejoin',
    Default = true,
	Tooltip = "If You Get Kick This Function Will Rejoin",
})
Toggles.AutoRejoin:OnChanged(function(vu)
    getgenv().rejoin = vu
end)
GerenalTab:AddToggle('WhiteScreen', {
    Text = 'White Screen',
    Default = false, 
})
_G.WhiteScreen = value
Toggles.WhiteScreen:OnChanged(function()
_G.WhiteScreen = Toggles.WhiteScreen.Value
if _G.WhiteScreen == true then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
elseif _G.WhiteScreen == false then
    game:GetService("RunService"):Set3dRenderingEnabled(true)
end
end)
Toggles.WhiteScreen:AddKeyPicker('WhiteScreenBind', {
    Default = 'None', 
    SyncToggleState = true, 
    Mode = 'Toggle',
    Text = 'WhiteScreen', 
    NoUI = false,
})
GerenalTab:AddToggle('BlackScreen', {
    Text = 'Black Screen',
    Default = false, 
})
StartBlackScreen = value
Toggles.BlackScreen:OnChanged(function()
StartBlackScreen = Toggles.BlackScreen.Value
	local BlackScreen = game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen
	getgenv().DefaultSize = BlackScreen.Size
	getgenv().NewSize = UDim2.new(500, 0, 500, 500)
	getgenv().StartBlackScreen = false
	if StartBlackScreen then
		BlackScreen.Size = NewSize
	else
		BlackScreen.Size = UDim2.new(DefaultSize)
	end
end)
Toggles.BlackScreen:AddKeyPicker('BlackScreenBind', {
    Default = 'None', 
    SyncToggleState = true, 
    Mode = 'Toggle',
    Text = 'BlackScreen', 
    NoUI = false,
})
GerenalTab:AddButton("Redeem All Code",function()
	function UseCode(Text)
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
    end
	UseCode("NOOB_REFUND")
	UseCode("Sub2UncleKizaru")
	UseCode("SUB2GAMERROBOT_RESET1")
	UseCode("SUBGAMERROBOT_RESET")
	UseCode("ADMINGIVEAWAY")
    UseCode("GAMERROBOT_YT")
	UseCode("kittgaming")
	UseCode("Sub2Fer999")
    UseCode("Enyu_is_Pro")
    UseCode("Magicbus")
    UseCode("JCWK")
    UseCode("Starcodeheo")
    UseCode("Bluxxy")
    UseCode("THEGREATACE")
    UseCode("SUB2GAMERROBOT_EXP1")
    UseCode("StrawHatMaine")
    UseCode("Sub2OfficialNoobie")
    UseCode("SUB2NOOBMASTER123")
    UseCode("Sub2Daigrock")
    UseCode("Axiore")
    UseCode("TantaiGaming")
	UseCode("Bignews")
    UseCode("Fudd10")
	UseCode("GAMER_ROBOT_1M")
end)
local GerenalTab = Gerenal:AddTab('[ Stats ]')
GerenalTab:AddToggle('Melee', {
    Text = 'Melee',
    Default = false, 
})
Toggles.Melee:OnChanged(function(vu)
    _G.Auto_Stats_Melee = vu
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Stats_Melee then
			local args = {
				[1] = "AddPoint",
				[2] = "Melee",
				[3] = _G.Point
			}	
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)
GerenalTab:AddToggle('Defense', {
    Text = 'Defense',
    Default = false, 
})
Toggles.Defense:OnChanged(function(vu)
    _G.Auto_Stats_Defense = vu
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Stats_Defense then
			local args = {
				[1] = "AddPoint",
				[2] = "Defense",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)
GerenalTab:AddToggle('Sword', {
    Text = 'Sword',
    Default = false, 
})
Toggles.Sword:OnChanged(function(vu)
    _G.Auto_Stats_Sword = vu
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Stats_Sword then
			local args = {
				[1] = "AddPoint",
				[2] = "Sword",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)
GerenalTab:AddToggle('Gun', {
    Text = 'Gun',
    Default = false, 
})
Toggles.Gun:OnChanged(function(vu)
    _G.Auto_Stats_Gun = vu
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Stats_Gun then
			local args = {
				[1] = "AddPoint",
				[2] = "Gun",
				[3] = _G.Point
			}		
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)
GerenalTab:AddToggle('Fruit', {
    Text = 'Devil Fruits',
    Default = false, 
})
Toggles.Fruit:OnChanged(function(vu)
    _G.Auto_Stats_Devil_Fruit = vu
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Stats_Devil_Fruit then
			local args = {
				[1] = "AddPoint",
				[2] = "Demon Fruit",
				[3] = _G.Point
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)
GerenalTab:AddToggle('KaitunStats', {
    Text = 'Fully Stats',
    Default = false, 
})
Toggles.KaitunStats:OnChanged(function(vu)
    _G.Auto_Stats_Kaitun = vu
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.Auto_Stats_Kaitun then
				if Old_World then
					local args = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
						}
						
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif New_World then
					local args = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
						}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					local args = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = _G.Point
						}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					local args = {
						[1] = "AddPoint",
						[2] = "Demon Fruit",
						[3] = _G.Point
						}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end)
	end
end)
GerenalTab:AddSlider('SelecTPoints', {
    Text = 'Select Points',
	Default = 3,
    Min = 1,
    Max = 2450,
	Rounding = 0,
    Compact = false,
})
Options.SelecTPoints:OnChanged(function(vu)
	_G.Point = vu
end)
local Automatics = Tabs.Automatics:AddLeftTabbox()
local AutomaticsTab = Automatics:AddTab('[ Automatic #1 ]')
AutomaticsTab:AddLabel("[ Auto Farm Material ]")
if Old_World then
local MagmaOre = AutomaticsTab:AddLabel("Magma Ore : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Magma Ore" then
		VampireFang:SetText("Magma Ore : "..v.Count)
    end
    end
end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Farm_Magma_Ore', {
	Text = 'Auto Farm Magma Ore',
	Default = false, 
})
Toggles.Auto_Farm_Magma_Ore:OnChanged(function(vu)
	_G.Auto_Farm_Magma_Ore = vu
	StopTween(_G.Auto_Farm_Magma_Ore)
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Magma_Ore and StartMagnetMagmaOreMon and (v.Name == "Military Soldier [Lv. 300]" or v.Name == "Military Spy [Lv. 325]") and (v.HumanoidRootPart.Position - PosMonMagmaOre.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonMagmaOre
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_Magma_Ore and Old_World then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Military Soldier [Lv. 300]") or game:GetService("Workspace").Enemies:FindFirstChild("Military Spy [Lv. 325]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Military Soldier [Lv. 300]" or v.Name == "Military Spy [Lv. 325]" then
							if v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									Equip(WeaponName)
									FastAttackSpeed = true
									StartMagnetMagmaOreMon = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									PosMonMagmaOre = v.HumanoidRootPart.CFrame
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Magma_Ore == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					end
				else
					StartMagnetMagmaOreMon = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Military Soldier [Lv. 300]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						elseif v.Name == "Military Spy [Lv. 325]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						end
					end
					TP2(CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984))
				end
			end)
		end
	end
end)
local FishTail = AutomaticsTab:AddLabel("Fish Tail : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Fish Tail" then
		FishTail:SetText("Fish Tail : "..v.Count)
    end
    end
end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Farm_Fish_Tail', {
	Text = 'Auto Farm Fish Tail',
	Default = false, 
})
Toggles.Auto_Farm_Fish_Tail:OnChanged(function(vu)
	_G.Auto_Farm_Fish_Tail = vu
	StopTween(_G.Auto_Farm_Fish_Tail)
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Fish_Tail and StartMagnetFishTailMon and (v.Name == "Fishman Warrior [Lv. 375]" or v.Name == "Fishman Commando [Lv. 400]") and (v.HumanoidRootPart.Position - PosMonFishTail.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonFishTail
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_Fish_Tail and Old_World then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Warrior [Lv. 375]") or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Commando [Lv. 400]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Fishman Warrior [Lv. 375]" or v.Name == "Fishman Commando [Lv. 400]" then
							if v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									Equip(WeaponName)
									FastAttackSpeed = true
									StartMagnetFishTailMon = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									PosMonFishTail = v.HumanoidRootPart.CFrame
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Fish_Tail == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					end
				else
					StartMagnetFishTailMon = false
					local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
					if Distance > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					end
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Fishman Warrior [Lv. 375]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						elseif v.Name == "Fishman Commando [Lv. 400]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						end
					end
				end
			end)
		end
	end
end)
local ScrapMetal = AutomaticsTab:AddLabel("Scrap Metal : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Scrap Metal" then
		ScrapMetal:SetText("Scrap Metal : "..v.Count)
    end
    end
end
        end)
    end
end)
local Leather = AutomaticsTab:AddLabel("Leather : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Leather" then
		Leather:SetText("Leather : "..v.Count)
    end
    end
end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Farm_Scrap_and_Leather', {
	Text = 'Auto Farm Scrap and Leather',
	Default = false, 
})
Toggles.Auto_Farm_Scrap_and_Leather:OnChanged(function(vu)
	_G.Auto_Farm_Scrap_and_Leather = vu
	StopTween(_G.Auto_Farm_Scrap_and_Leather)
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Scrap_and_Leather and StartMagnetScrapleatherMon and (v.Name == "Pirate [Lv. 35]" or v.Name == "Brute [Lv. 45]") and (v.HumanoidRootPart.Position - PosMonScrapleather.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonScrapleather
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_Scrap_and_Leather and Old_World then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Pirate [Lv. 35]") or game:GetService("Workspace").Enemies:FindFirstChild("Brute [Lv. 45]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Pirate [Lv. 35]" or v.Name == "Brute [Lv. 45]" then
							if v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									Equip(WeaponName)
									FastAttackSpeed = true
									StartMagnetScrapleatherMon = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									PosMonScrapleather = v.HumanoidRootPart.CFrame
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Scrap_and_Leather == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					end
				else
					StartMagnetScrapleatherMon = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Pirate [Lv. 35]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						elseif v.Name == "Brute [Lv. 45]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						end
					end
					TP2(CFrame.new(-1182.3310546875, 60.88254928588867, 4049.5380859375))
				end
			end)
		end
	end
end)
local AngelWing = AutomaticsTab:AddLabel("Angel Wing : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Angel Wing" then
		AngelWing:SetText("Angel Wing : "..v.Count)
    end
    end
end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Farm_Angel_Wing', {
	Text = 'Auto Farm Angel Wing',
	Default = false, 
})
Toggles.Auto_Farm_Angel_Wing:OnChanged(function(vu)
_G.Auto_Farm_Angel_Wing = vu
StopTween(_G.Auto_Farm_Angel_Wing)
end)
task.spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
	pcall(function()
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if _G.Auto_Farm_Angel_Wing and StartMagnetAngelWingMon and (v.Name == "Royal Squad [Lv. 525]" or v.Name == "Royal Soldier [Lv. 550]") and (v.HumanoidRootPart.Position - PosMonAngelWing.Position).magnitude <= 350 then
				v.HumanoidRootPart.CFrame = PosMonAngelWing
				v.HumanoidRootPart.CanCollide = false
				v.HumanoidRootPart.Size = Vector3.new(50,50,50)
				if v.Humanoid:FindFirstChild("Animator") then
					v.Humanoid.Animator:Destroy()
				end
				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
			end
		end
	end)
end)
end)
task.spawn(function()
while task.wait() do
	if _G.Auto_Farm_Angel_Wing and Old_World then
		pcall(function()
			if game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad [Lv. 525]") or game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier [Lv. 550]") then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == "Royal Squad [Lv. 525]" or v.Name == "Royal Soldier [Lv. 550]" then
						if v.Humanoid.Health > 0 then
							repeat task.wait(_G.Fast_Delay)
								Equip(WeaponName)
								FastAttackSpeed = true
								StartMagnetAngelWingMon = true
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								PosMonAngelWing = v.HumanoidRootPart.CFrame
								TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until _G.Auto_Farm_Angel_Wing == false or not v.Parent or v.Humanoid.Health <= 0
							FastAttackSpeed = false
						end
					end
				end
			else
				StartMagnetAngelWingMon = false
				for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
					if v.Name == "Royal Squad [Lv. 525]" then
						TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
					elseif v.Name == "Royal Soldier [Lv. 550]" then
						TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
					end
				end
				TP2(CFrame.new(-7957.654296875, 5644.396484375, -1457.434814453125))
			end
		end)
	end
end
end)
end
if New_World then
local Ectoplasm = AutomaticsTab:AddLabel("Ectoplasm : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Ectoplasm" then
		Ectoplasm:SetText("Ectoplasm : "..v.Count)
    end
    end
end
        end)
    end
end)	
AutomaticsTab:AddToggle('AutoEctoplasm', {
    Text = 'Auto Farm Ectoplasm',
    Default = false, 
})
Toggles.AutoEctoplasm:OnChanged(function(vu)
    _G.AutoEctoplasm = vu
	StopTween(_G.AutoEctoplasm)
end)
task.spawn(function()
	pcall(function()
		while task.wait() do
			if _G.AutoEctoplasm then
				if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v.Name, "Ship") then
							repeat task.wait(_G.Fast_Delay)
								FastAttackSpeed = true
								Equip(WeaponName)
								FastAttackSpeed = true
								if string.find(v.Name,"Ship") then
									v.HumanoidRootPart.CanCollide = false
									v.Head.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									EctoplasmMon = v.HumanoidRootPart.CFrame
									StartEctoplasmMagnet = true
								else
									StartEctoplasmMagnet = false
									TP2(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
								end
							until _G.AutoEctoplasm == false or not v.Parent or v.Humanoid.Health <= 0
							FastAttackSpeed = false
						end
					end
				else
					StartEctoplasmMagnet = false
					local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
					if Distance > 18000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
					TP2(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
				end
			end
		end
	end)
end)
local ScrapMetal = AutomaticsTab:AddLabel("Scrap Metal : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Scrap Metal" then
		ScrapMetal:SetText("Scrap Metal : "..v.Count)
    end
    end
end
        end)
    end
end)
local Leather = AutomaticsTab:AddLabel("Leather : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Leather" then
		Leather:SetText("Leather : "..v.Count)
    end
    end
end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Farm_Scrap_and_Leather', {
	Text = 'Auto Farm Scrap and Leather',
	Default = false, 
})
Toggles.Auto_Farm_Scrap_and_Leather:OnChanged(function(vu)
	_G.Auto_Farm_Scrap_and_Leather = vu
	StopTween(_G.Auto_Farm_Scrap_and_Leather)
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Scrap_and_Leather and StartMagnetScrapleatherMon and v.Name == "Mercenary [Lv. 725]" and (v.HumanoidRootPart.Position - PosMonScrapleather.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonScrapleather
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_Scrap_and_Leather and New_World then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary [Lv. 725]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Mercenary [Lv. 725]" then
							if v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									StartMagnetScrapleatherMon = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									PosMonScrapleather = v.HumanoidRootPart.CFrame
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Scrap_and_Leather == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					end
				else
					StartMagnetScrapleatherMon = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Mercenary [Lv. 725]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						end
					end
					TP2(CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971))
				end
			end)
		end
	end
end)
local Radioactive = AutomaticsTab:AddLabel("Radioactive : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Radioactive Material" then
		Radioactive:SetText("Radioactive : "..v.Count)
    end
    end
end
        end)
    end
end)	
AutomaticsTab:AddToggle('Auto_Farm_Radioactive', {
    Text = 'Auto Farm Radioactive',
	Default = false, 
})
Toggles.Auto_Farm_Radioactive:OnChanged(function(vu)
	_G.Auto_Farm_Radioactive = vu
	StopTween(_G.Auto_Farm_Radioactive)
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Radioactive and StartMagnetRadioactive and v.Name == "Factory Staff [Lv. 800]" and (v.HumanoidRootPart.Position - PosMonRadioactive.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonRadioactive
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)

task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_Radioactive and New_World then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff [Lv. 800]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Factory Staff [Lv. 800]" then
							if v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									StartMagnetRadioactive = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									PosMonRadioactive = v.HumanoidRootPart.CFrame
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Radioactive == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					end
				else
					StartMagnetRadioactive = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Factory Staff [Lv. 800]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						end
					end
					TP2(CFrame.new(262.9140625, 72.95976257324219, -89.57562255859375))
				end
			end)
		end
	end
end)
local VampireFang = AutomaticsTab:AddLabel("Vampire Fang : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Vampire Fang" then
		VampireFang:SetText("Vampire Fang : "..v.Count)
    end
    end
end
        end)
    end
end)	
AutomaticsTab:AddToggle('Auto_Farm_Vampire_Fang', {
	Text = 'Auto Farm Vampire Fang',
	Default = false, 
})
Toggles.Auto_Farm_Vampire_Fang:OnChanged(function(vu)
	_G.Auto_Farm_Vampire_Fang = vu
	StopTween(_G.Auto_Farm_Vampire_Fang)
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Vampire_Fang and StartMagnetVampireFang and v.Name == "Vampire [Lv. 975]" and (v.HumanoidRootPart.Position - PosMonVampireFang.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonVampireFang
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_Vampire_Fang and New_World then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Vampire [Lv. 975]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Vampire [Lv. 975]" then
							if v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									StartMagnetVampireFang = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									PosMonVampireFang = v.HumanoidRootPart.CFrame
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Vampire_Fang == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					end
				else
					StartMagnetRadioactive = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Vampire [Lv. 975]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						end
					end
					TP2(CFrame.new(-6041.29248046875, 6.402710914611816, -1304.63330078125))
				end
			end)
		end
	end
end)
local MagmaOre = AutomaticsTab:AddLabel("Magma Ore : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Magma Ore" then
		MagmaOre:SetText("Magma Ore : "..v.Count)
    end
    end
end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Farm_Magma_Ore', {
	Text = 'Auto Farm Magma Ore',
	Default = false, 
})
Toggles.Auto_Farm_Magma_Ore:OnChanged(function(vu)
	_G.Auto_Farm_Magma_Ore = vu
	StopTween(_G.Auto_Farm_Magma_Ore)
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Magma_Ore and StartMagnetMagmaOreMon and (v.Name == "Magma Ninja [Lv. 1175]" or v.Name == "Lava Pirate [Lv. 1200]") and (v.HumanoidRootPart.Position - PosMonMagmaOre.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonMagmaOre
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
					v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_Magma_Ore and New_World then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Magma Ninja [Lv. 1175]") or game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Magma Ninja [Lv. 1175]" or v.Name == "Lava Pirate [Lv. 1200]" then
							if v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									StartMagnetMagmaOreMon = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									PosMonMagmaOre = v.HumanoidRootPart.CFrame
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Magma_Ore == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					end
				else
					StartMagnetMagmaOreMon = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Magma Ninja [Lv. 1175]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						elseif v.Name == "Lava Pirate [Lv. 1200]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						end
					end
					TP2(CFrame.new(-5250.13623046875, 55.980499267578125, -4783.880859375))
					TP2(CFrame.new(-5429.900390625, 78.25209045410156, -5962.8623046875))
				end
			end)
		end
	end
end)
local MysticDroplet = AutomaticsTab:AddLabel("Mystic Droplet : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Mystic Droplet" then
		MysticDroplet:SetText("Mystic Droplet : "..v.Count)
    end
    end
end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Farm_Mystic_Droplet', {
	Text = 'Auto Farm Mystic Droplet',
	Default = false,
})
Toggles.Auto_Farm_Mystic_Droplet:OnChanged(function(vu)
		_G.Auto_Farm_Mystic_Droplet = vu
		StopTween(_G.Auto_Farm_Mystic_Droplet)
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Mystic_Droplet and StartMagnetMysticDropletMon and (v.Name == "Sea Soldier [Lv. 1425]" or v.Name == "Water Fighter [Lv. 1450]") and (v.HumanoidRootPart.Position - PosMonMysticDroplet.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonMysticDroplet
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_Mystic_Droplet and New_World then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Sea Soldier [Lv. 1425]") or game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter [Lv. 1450]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Sea Soldier [Lv. 1425]" or v.Name == "Water Fighter [Lv. 1450]" then
							if v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									StartMagnetMysticDropletMon = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									PosMonMysticDroplet = v.HumanoidRootPart.CFrame
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Mystic_Droplet == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					end
				else
					StartMagnetMysticDropletMon = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Sea Soldier [Lv. 1425]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						elseif v.Name == "Water Fighter [Lv. 1450]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						end
					end
					TP2(CFrame.new(-3234.8701171875, 63.38898849487305, -9726.0703125))
					TP2(CFrame.new(-2751.440673828125, 82.7505874633789, -9818.736328125))
					TP2(CFrame.new(-3260.26513671875, 298.6902770996094, -10549.4619140625))
				end
			end)
		end
	end
end)
end
if New_World then
AutomaticsTab:AddLabel( "[ \\\\ Legendary Sword // ]")
task.spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    for i, v in pairs(
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
                    ) do
                        if v.Name == "Shisui" then
                            Shisui:SetText("✅ : Shisui")
                        end
                        if v.Name == "Saddi" then
                            Saddi:SetText("✅ : Saddi")
                        end
                        if v.Name == "Wando" then
                            Wando:SetText("✅ : Wando")
                        end
                        if v.Name == "True Triple Katana" then
                            TrueTripleKatana:SetText("✅ : True Triple Katana")
                        end
                    end
                end
            )
        end
    end
)
Shisui = AutomaticsTab:AddLabel( "❌ : Shisui")
Saddi = AutomaticsTab:AddLabel( "❌ : Saddi")
Wando = AutomaticsTab:AddLabel("❌ : Wando")
TrueTripleKatana = AutomaticsTab:AddLabel("❌ : True Triple Katana")
AutomaticsTab:AddToggle('Auto_Buy_Legendary_Sword', {
	Text = 'Auto Buy Legendary Sword',
})
Toggles.Auto_Buy_Legendary_Sword:OnChanged(function(vu)
    _G.Auto_Buy_Legendary_Sword = vu
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.Auto_Buy_Legendary_Sword then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
			end
		end)
	end
end)
AutomaticsTab:AddToggle('Auto_Buy_True_Triple_Katana_Sword', {
	Text = 'Auto Buy True Triple Katana',
})
Toggles.Auto_Buy_True_Triple_Katana_Sword:OnChanged(function(vu)
    _G.Auto_Buy_True_Triple_Katana_Sword = vu
end)
task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Auto_Buy_True_Triple_Katana_Sword or Triple_A then
            local args = {
            [1] = "MysteriousMan",
            [2] = "2"
            }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            else
				wait(2)
			end
        end)
    end
end)
end
if Three_World then
local ScrapMetal = AutomaticsTab:AddLabel("Scrap Metal : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Scrap Metal" then
		ScrapMetal:SetText("Scrap Metal : "..v.Count)
    end
    end
end
        end)
    end
end)
local Leather = AutomaticsTab:AddLabel("Leather : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Leather" then
		Leather:SetText("Leather : "..v.Count)
    end
    end
end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Farm_Scrap_and_Leather', {
	Text = 'Auto Farm Scrap And Leather',
	Default = false, 
})
Toggles.Auto_Farm_Scrap_and_Leather:OnChanged(function(vu)
	_G.Auto_Farm_Scrap_and_Leather = vu
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Scrap_and_Leather and StartMagnetScrapleatherMon and v.Name == "Pirate Millionaire [Lv. 1500]" and (v.HumanoidRootPart.Position - PosMonScrapleather.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonScrapleather
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_Scrap_and_Leather and Three_World then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Pirate Millionaire [Lv. 1500]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Pirate Millionaire [Lv. 1500]" then
							if v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									StartMagnetScrapleatherMon = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									PosMonScrapleather = v.HumanoidRootPart.CFrame
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Scrap_and_Leather == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					end
				else
					StartMagnetScrapleatherMon = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Pirate Millionaire [Lv. 1500]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						end
					end
					TP2(CFrame.new(-275.8073425292969, 44.80481719970703, 5598.36865234375))
				end
			end)
		end
	end
end)
local GunPowder = AutomaticsTab:AddLabel("Gun Powder : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Gunpowder" then
		GunPowder:SetText("Gun Powder : "..v.Count)
    end
    end
end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Farm_GunPowder', {
	Text = 'Auto Farm Gun Powder',
	Default = false, 
})
Toggles.Auto_Farm_GunPowder:OnChanged(function(vu)
	_G.Auto_Farm_GunPowder = vu
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_GunPowder and StartMagnetGunPowderMon and v.Name == "Pistol Billionaire [Lv. 1525]" and (v.HumanoidRootPart.Position - PosMonGunPowder.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonGunPowder
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_GunPowder and Three_World then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire [Lv. 1525]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Pistol Billionaire [Lv. 1525]" then
							if v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									StartMagnetGunPowderMon = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									PosMonGunPowder = v.HumanoidRootPart.CFrame
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_GunPowder == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					end
				else
					StartMagnetGunPowderMon = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Pistol Billionaire [Lv. 1525]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						end
					end
					TP2(CFrame.new(-455.71466064453125, 73.72992706298828, 5929.4609375))
				end
			end)
		end
	end
end)
local DragonScales = AutomaticsTab:AddLabel("Dragon Scales : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Dragon Scale" then
		DragonScales:SetText("Dragon Scales : "..v.Count)
    end
    end
end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Farm_Dragon_Scales', {
	Text = 'Auto Farm Dragon Scales',
	Default = false, 
})
Toggles.Auto_Farm_Dragon_Scales:OnChanged(function(vu)
	_G.Auto_Farm_Dragon_Scales = vu
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Dragon_Scales and StartMagnetDragonScalesMon and (v.Name == "Dragon Crew Archer [Lv. 1600]") and (v.HumanoidRootPart.Position - PosMonDragonScales.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonDragonScales
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_Dragon_Scales and Three_World then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer [Lv. 1600]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Dragon Crew Archer [Lv. 1600]" then
							if v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									StartMagnetDragonScalesMon = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									PosMonDragonScales = v.HumanoidRootPart.CFrame
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Dragon_Scales == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					end
				else
					StartMagnetDragonScalesMon = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Dragon Crew Archer [Lv. 1600]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						end
					end
					TP2(CFrame.new(6611.4091796875, 383.3892517089844, 159.88619995117188))
				end
			end)
		end
	end
end)
local FishTail = AutomaticsTab:AddLabel("Fish Tail : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Fish Tail" then
		FishTail:SetText("Fish Tail : "..v.Count)
    end
    end
end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Farm_Fish_Tail', {
	Text = 'Auto Farm Fish Tail',
	Default = false, 
})
Toggles.Auto_Farm_Fish_Tail:OnChanged(function(vu)
	_G.Auto_Farm_Fish_Tail = vu
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Fish_Tail and StartMagnetFishTailMon and (v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]") and (v.HumanoidRootPart.Position - PosMonFishTail.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonFishTail
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_Fish_Tail and Three_World then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Raider [Lv. 1775]") or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain [Lv. 1800]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]" then
							if v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									StartMagnetFishTailMon = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									PosMonFishTail = v.HumanoidRootPart.CFrame
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Fish_Tail == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					end
				else
					StartMagnetFishTailMon = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Fishman Raider [Lv. 1775]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						elseif v.Name == "Fishman Captain [Lv. 1800]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						end
					end
					TP2(CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125))
				end
			end)
		end
	end
end)
local MiniTusk = AutomaticsTab:AddLabel("Mini Tusk : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Mini Tusk" then
		MiniTusk:SetText("Mini Tusk : "..v.Count)
    end
    end
end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Farm_Mini_Tusk', {
	Text = 'Auto Farm Mini Tusk',
	Default = false, 
})
Toggles.Auto_Farm_Mini_Tusk:OnChanged(function(vu)
	_G.Auto_Farm_Mini_Tusk = vu
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Mini_Tusk and StartMagnetMiniTuskMon and v.Name == "Mythological Pirate [Lv. 1850]" and (v.HumanoidRootPart.Position - PosMonMiniTusk.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonMiniTusk
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_Mini_Tusk and Three_World then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate [Lv. 1850]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Mythological Pirate [Lv. 1850]" then
							if v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									StartMagnetMiniTuskMon = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									PosMonMiniTusk = v.HumanoidRootPart.CFrame
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Mini_Tusk == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					end
				else
					StartMagnetMiniTuskMon = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Mythological Pirate [Lv. 1850]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						end
					end
					TP2(CFrame.new(-13508.68359375, 582.6758422851562, -6986.06298828125))
				end
			end)
		end
	end
end)
local ConjuredCocoa = AutomaticsTab:AddLabel("Conjured Cocoa : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Conjured Cocoa" then
            ConjuredCocoa:SetText("Conjured Cocoa : "..v.Count)
    end
    end
end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Farm_Conjured_Cocoa', {
	Text = 'Auto Farm Conjured Cocoa',
	Default = false, 
})
Toggles.Auto_Farm_Conjured_Cocoa:OnChanged(function(vu)
	_G.Auto_Farm_Conjured_Cocoa = vu
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Conjured_Cocoa and StartMagnetConjuredCocoaMon and (v.Name == "Cocoa Warrior [Lv. 2300]" or v.Name == "Chocolate Bar Battler [Lv. 2325]") and (v.HumanoidRootPart.Position - PosMonConjuredCocoa.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonConjuredCocoa
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Farm_Conjured_Cocoa and Three_World then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior [Lv. 2300]") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler [Lv. 2325]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Cocoa Warrior [Lv. 2300]" or v.Name == "Chocolate Bar Battler [Lv. 2325]" then
							if v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									StartMagnetConjuredCocoaMon = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									PosMonConjuredCocoa = v.HumanoidRootPart.CFrame
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Conjured_Cocoa == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					end
				else
					StartMagnetConjuredCocoaMon = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Cocoa Warrior [Lv. 2300]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						elseif v.Name == "Chocolate Bar Battler [Lv. 2325]" then
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						end
					end
					TP2(CFrame.new(402.7189025878906, 81.06050109863281, -12259.54296875))
				end
			end)
		end
	end
end)
local Bonex = AutomaticsTab:AddLabel("Bone : 0")
task.spawn(function()
    while task.wait() do
        pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if v["Type"] == "Material" then
    if v.Name == "Bones" then
            Bonex:SetText("Bone : "..v.Count)
    end
    end
end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Farm_Bone', {
	Text = 'Auto Farm Bone',
	Default = false, 
})
Toggles.Auto_Farm_Bone:OnChanged(function(vu)
		_G.Auto_Farm_Bone = vu
		StopTween(_G.Auto_Farm_Bone)
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Bone and StartMagnetBoneMon and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonBone
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.Auto_Farm_Bone then
				if Three_World then
				if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat wait(_G.Fast_Delay)
									StartMagnetBoneMon = true
									FastAttackSpeed = true
									Equip(WeaponName)
									PosMonBone = v.HumanoidRootPart.CFrame
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								until not _G.Auto_Farm_Bone or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
								StartMagnetBoneMon = false
							end
						end
					end
				else
					TP2(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
				end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
				end
		end
		end)
	end
end)
end
local AutomaticsTab = Automatics:AddTab('[ Automatic #2 ]')
AutomaticsTab:AddLabel('[ Auto Get Weapon ]')
AutomaticsTab:AddToggle('Auto_Saber', {
	Text = 'Auto Saber',
})
Toggles.Auto_Saber:OnChanged(function(vu)
	_G.AutoSaber = vu
	StopTween(_G.AutoSaber)
end)
task.spawn(function()
    while task.wait() do
        if _G.AutoSaber then
            pcall(function()
                if game:GetService("Workspace").Map.Jungle.Final:FindFirstChild("Part").Transparency == 0 then
                    TP2(CFrame.new(-1421.6824951171875, 48.252071380615234, 21.318946838378906))
                    wait(.5)
                    TP2(CFrame.new(-1181.1640625, 22.34051513671875, 188.13186645507812))
                    wait(.5)
                    TP2(CFrame.new(-1648.1024169921875, 23.252126693725586, 438.4625549316406))
                    wait(.5)
                    TP2(CFrame.new(-1153.3184814453125, 2.464047908782959, -701.0916748046875))
                    wait(.5)
                    TP2(CFrame.new(-1325.6697998046875, 34.64987564086914, -463.0443420410156))
                    wait(.7)
                    TP2(CFrame.new(-1610.5228271484375, 12.052069664001465, 162.6676025390625))
                    wait(.6)
                    Equip("Torch")
                    wait(.5)
                    TP2(CFrame.new(1115.79688, 4.92147732, 4350.17334, -0.639640629, -4.97708896e-09, 0.768674076, -2.51370613e-09, 1, 4.38315872e-09, -0.768674076, 8.71425709e-10, -0.639640629))
                    wait(6.5)
                    TP2(CFrame.new(1113.51929, 5.50669432, 4365.20752, -0.821950078, -4.84191531e-08, -0.569559574, 1.90744176e-09, 1, -8.77642634e-08, 0.569559574, -7.32242427e-08, -0.821950078))
                    wait(.5)
                    Equip("Cup")
                    wait(.8)
                    TP2(CFrame.new(1392.83411, 37.3479347, -1323.19702, -0.0098256059, -1.19435768e-07, -0.99995172, 1.04197984e-08, 1, -1.19543927e-07, 0.99995172, -1.15938867e-08, -0.0098256059))
                    wait(5)
                    TP2(CFrame.new(1458.23046875, 88.25215911865234, -1389.040283203125))
                    wait(1.2)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuesTP2rogress","SickMan")
                    wait(.6)
                    TP2(CFrame.new(-908.8209838867188, 13.752044677734375, 4078.2666015625))
                    wait(1.2)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuesTP2rogress","RichSon")
                    wait(.5)
                    TP2(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                    wait(1)
                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Mob Leader [Lv. 120] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait(_G.Fast_Delay)
										FastAttackSpeed = true
                                        Equip(WeaponName)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        TP2(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoSaber or v.Humanoid.Health <= 0
									FastAttackSpeed = false
                                end
                            end
                        end
                    end
                    wait(.6)
                    TP2(CFrame.new(-908.8209838867188, 13.752044677734375, 4078.2666015625))
                    wait(1.2)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuesTP2rogress","RichSon")
                    wait(1.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuesTP2rogress")
                    wait(.5)
                    Equip("Relic")
                    TP2(CFrame.new(-1405.82397, 29.8520069, 5.05986547, 0.759286761, 4.36840342e-09, 0.65075618, 9.78191306e-09, 1, -1.81261139e-08, -0.65075618, 2.01285584e-08, 0.759286761))
                    wait(1)
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Saber Expert [Lv. 200] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait(_G.Fast_Delay)
										FastAttackSpeed = true
                                        Equip(WeaponName)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        TP2(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoSaber or not v.Parent or v.Humanoid.Health <= 0
									FastAttackSpeed = false
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                            TP2(game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                        else
                            if _G.AutoSaber_Hop then
                                Hop()
                            end
                        end
                    end
                end
            end)
        end
    end
end)
AutomaticsTab:AddToggle('Auto_Pole', {
	Text = 'Auto Pole V1',
})
Toggles.Auto_Pole:OnChanged(function(vu)
	_G.Auto_Pole = vu
	StopTween(_G.Auto_Pole)
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.Auto_Pole and game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") or game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
				if game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.Auto_Pole and v.Name == "Thunder God [Lv. 575] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat task.wait(_G.Fast_Delay)
								FastAttackSpeed = true
								Equip(WeaponName)
								TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until not _G.Auto_Pole or v.Humanoid.Health <= 0 or not v.Parent
							FastAttackSpeed = false
						end
					end
				else
					TP2(CFrame.new(-7900.66406, 5606.90918, -2267.46436))
				end
			else
				if _G.Auto_Pole_Hop then
					Hop()
				end
			end
		end)
	end
end)
AutomaticsTab:AddToggle('Auto_Dragon_Trident', {
	Text = 'Auto Dragon Trident',
})
Toggles.Auto_Dragon_Trident:OnChanged(function(vu)
	_G.Auto_Dragon_Trident = vu
	StopTween(_G.Auto_Dragon_Trident)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Dragon_Trident then
			pcall(function()
				if _G.Auto_Dragon_Trident and game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
					if game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == "Tide Keeper [Lv. 1475] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Dragon_Trident or v.Humanoid.Health <= 0 or not v.Parent
								FastAttackSpeed = false
							end
						end
					else
						TP2(CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125))
					end
				else
					if _G.Auto_Dragon_Trident_Hop then
						Hop()
					end
				end
			end)
		end
	end
end)
AutomaticsTab:AddToggle('Auto_Tushita', {
	Text = 'Auto Tushita',
})
Toggles.Auto_Tushita:OnChanged(function(vu)
    _G.Auto_Tushita = vu
	StopTween(_G.Auto_Tushita)
end)
task.spawn(function()
	while wait() do
		if _G.Auto_Tushita then
			if game:GetService("Workspace").Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == ("Longma [Lv. 2000] [Boss]" or v.Name == "Longma [Lv. 2000] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
						repeat task.wait(_G.Fast_Delay)
							FastAttackSpeed = true
							Equip(WeaponName)
							PosMon = v.HumanoidRootPart.CFrame
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid:ChangeState(11)
							TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
						until not _G.Auto_Tushita or not v.Parent or v.Humanoid.Health <= 0
						FastAttackSpeed = false
					end
				end
			else
				TP2(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
			end
		end
	end
end)
AutomaticsTab:AddToggle('Auto_Dark_Dragger', {
	Text = 'Auto Dark Dragger',
})
Toggles.Auto_Dark_Dragger:OnChanged(function(vu)
    _G.Auto_Dark_Dragger = vu
	StopTween(_G.Auto_Dark_Dragger)
end)
task.spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_Dark_Dragger then
				if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat wait(_G.Fast_Delay)
								FastAttackSpeed = true
								Equip(WeaponName)
								PosMon = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
							until not _G.Auto_Dark_Dragger or not v.Parent or v.Humanoid.Health <= 0
							FastAttackSpeed = false
						end
					end
				else
					TP2(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
				end
			end
		end)
	end
end)
AutomaticsTab:AddToggle('Auto_Yama', {
	Text = 'Auto Pull Yama',
	Tooltip = "If You Kill Elite Hunter 30 You Can Use This!"
})
Toggles.Auto_Yama:OnChanged(function(vu)
    _G.AutoYama = vu
	StopTween(_G.AutoYama)
end)
task.spawn(function()
	while task.wait() do
		if _G.AutoYama then
			if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
				repeat task.wait(.1)
					fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
				until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
			end
		end
	end
end)
AutomaticsTab:AddToggle('Auto_Hallow_Scythe', {
	Text = 'Auto Hallow Scythe',
})
Toggles.Auto_Hallow_Scythe:OnChanged(function(vu)
    _G.Auto_Hallow_Scythe = vu
	StopTween(_G.Auto_Hallow_Scythe)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Hallow_Scythe then
			pcall(function()
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then                    
					TP2(CFrame.new(-8932.7900390625, 146.8223114013672, 6063.076171875))  
				elseif game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
					if game.Workspace.Enemies:FindFirstChild ("Soul Reaper [Lv. 2100] [Raid Boss]") then    
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]"  then
								if _G.Auto_Hallow_Scythe and v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat task.wait(_G.Fast_Delay)
										FastAttackSpeed = true
										Equip(WeaponName)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until not _G.Auto_Hallow_Scythe or not v.Parent or v.Humanoid.Health <= 0
									FastAttackSpeed = false
								end
							end
						end
					end
				else
					if _G.Auto_Hallow_Scythe_Hop then
						Hop()
					else
						local args = {
							[1] = "Bones",
							[2] = "Buy",
							[3] = 1,
							[4] = 1
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
				end
			end)
		end
	end
end)
AutomaticsTab:AddToggle('Auto_Rengoku', {
	Text = 'Auto Rengoku',
})
Toggles.Auto_Rengoku:OnChanged(function(vu)
    _G.Auto_Rengoku = vu
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Rengoku and StartRengokuMagnet and (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - RengokuMon.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = RengokuMon
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)

task.spawn(function()
	while task.wait() do
		if _G.Auto_Rengoku then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
					Equip("Hidden Key")
					TP2(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
				elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
							repeat task.wait(_G.Fast_Delay)
								StartRengokuMagnet = true
								FastAttackSpeed = true
								Equip(WeaponName)
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								RengokuMon = v.HumanoidRootPart.CFrame
								TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								StartRengokuMagnet = true
							until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.Auto_Rengoku == false or not v.Parent or v.Humanoid.Health <= 0
							FastAttackSpeed = false
							StartRengokuMagnet = false
						end
					end
				else
					StartRengokuMagnet = false
					TP2(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
				end
			end)
		end
	end
end)
AutomaticsTab:AddToggle('Auto_Canvender', {
	Text = 'Auto Canvender',
})
Toggles.Auto_Canvender:OnChanged(function(vu)
    _G.Auto_Canvender = vu
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Canvander then
			pcall(function()
				if _G.Auto_Canvander and game.ReplicatedStorage:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") or game.Workspace.Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
					if game.Workspace.Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Canvander or v.Humanoid.Health <= 0 or not v.Parent
								FastAttackSpeed = false
							end
						end
					else
						TP2(CFrame.new(5240.40869140625, 22.536449432373047, 17.463970184326172))
					end
				else
					if _G.Auto_Canvander_Hop then
						Hop()
					end
				end
			end)
		end
	end
end)
AutomaticsTab:AddToggle('Auto_Buddy_Sword', {
	Text = 'Auto Buddy Sword',
})
Toggles.Auto_Buddy_Sword:OnChanged(function(vu)
    _G.Auto_Buddy_Sword = vu
	StopTween(_G.Auto_Buddy_Sword)
end)
task.spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_Buddy_Sword then
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("Cake Queen [Lv. 2175] [Boss]" or v.Name == "Cake Queen [Lv. 2175] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat task.wait(_G.Fast_Delay)
								FastAttackSpeed = true
								Equip(WeaponName)
								PosMon = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
							until not _G.Auto_Buddy_Sword or v.Humanoid.Health <= 0
							FastAttackSpeed = false
						end
					end
				end
			end
		end)
	end
end)
AutomaticsTab:AddToggle('Auto_Twin_Hook', {
	Text = 'Auto Twin Hook',
})
Toggles.Auto_Twin_Hook:OnChanged(function(vu)
    _G.Auto_Twin_Hook = vu
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Twin_Hook then
			pcall(function()
				if _G.Auto_Twin_Hook and game.ReplicatedStorage:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") or game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
					if game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == "Captain Elephant [Lv. 1875] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Twin_Hook or v.Humanoid.Health <= 0 or not v.Parent
								FastAttackSpeed = false
							end
						end
					else
						TP2(CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625))
					end
				else
					if _G.Auto_Twin_Hook_Hop then
						Hop()
					end
				end
			end)
		end
	end
end)
AutomaticsTab:AddLabel('[ Auto Get Gun ]')
AutomaticsTab:AddToggle('Auto_Serpent_Bow', {
	Text = 'Auto Supent Bow',
})
Toggles.Auto_Serpent_Bow:OnChanged(function(vu)
	_G.Auto_Serpent_Bow = vu
	StopTween(_G.Auto_Serpent_Bow)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Serpent_Bow then
			pcall(function()
				if _G.Auto_Serpent_Bow and game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]") or game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
					if game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == "Island Empress [Lv. 1675] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat task.wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Serpent_Bow or v.Humanoid.Health <= 0 or not v.Parent
								FastAttackSpeed = false
							end
						end
					else
						TP2(CFrame.new(5764.1826171875, 700.425537109375, 141.11996459960938))
					end
				else
					if _G.Auto_Serpent_Bow_Hop then
						Hop()
					end
				end
			end)
		end
	end
end)
AutomaticsTab:AddLabel('[ Auto Get Accessory ]')
AutomaticsTab:AddToggle('Auto_Swan_Glasses', {
	Text = 'Auto Swan Glasses',
})
Toggles.Auto_Swan_Glasses:OnChanged(function(vu)
	_G.Auto_Swan_Glasses = vu
	StopTween(_G.Auto_Swan_Glasses)
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.Auto_Swan_Glasses and game.ReplicatedStorage:FindFirstChild("Don Swan [Lv. 1000] [Boss]") or game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
				if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.Auto_Swan_Glasses and v.Name == "Don Swan [Lv. 1000] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat task.wait()  
								FastAttackSpeed = true
								Equip(WeaponName)
								TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until not _G.Auto_Swan_Glasses or v.Humanoid.Health <= 0 or not v.Parent
							FastAttackSpeed = false
						end
					end
				else
					TP2(CFrame.new(2289.47900390625, 15.152046203613281, 739.512939453125))
				end
			else
				if _G.Auto_Swan_Glasses_Hop then
					Hop()
				end
			end
		end)
	end
end)
AutomaticsTab:AddToggle('Auto_Dark_Coat', {
	Text = 'Auto Dark Coat',
})
Toggles.Auto_Dark_Coat:OnChanged(function(vu)
	_G.Auto_Dark_Coat = vu
	StopTween(_G.Auto_Dark_Coat)
end)
task.spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_Dark_Coat then
				if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("Darkbeard [Lv. 1000] [Raid Boss]" or v.Name == "Darkbeard [Lv. 1000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat task.wait(_G.Fast_Delay)
								StartMagnet = true
								FastAttackSpeed = true
								Equip(WeaponName)
								PosMon = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
							until _G.Auto_Dark_Coat == false or v.Humanoid.Health <= 0
							StartMagnet = false
							FastAttackSpeed = false
						end
					end
				else
					TP2(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
				end
			end
		end)
	end
end)
AutomaticsTab:AddToggle('Auto_Valkyrie_Helmet', {
	Text = 'Auto Valkyrie Helmet',
})
Toggles.Auto_Valkyrie_Helmet:OnChanged(function(vu)
	_G.Auto_Dark_Dragger = vu
	StopTween(_G.Auto_Dark_Dragger)
end)
AutomaticsTab:AddToggle('AutoMusketeerHat', {
	Text = 'Auto Musketeer Hat',
})
Toggles.AutoMusketeerHat:OnChanged(function(vu)
	_G.AutoMusketeerHat = vu
	StopTween(_G.AutoMusketeerHat)
end)
task.spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoMusketeerHat then
				if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Forest Pirate [Lv. 1825]" then
									repeat task.wait(_G.Fast_Delay)
										StartMagnet = true
										FastAttackSpeed = true
										Equip(WeaponName)
										_G.PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
									until not _G.AutoMusketeerHat or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									StartMagnet = false
									FastAttackSpeed = false
								end
							end
						else
							TP2(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
						end
					else
						TP2(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
						if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
							wait(1.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
									OldCFrameElephant = v.HumanoidRootPart.CFrame
									repeat task.wait(_G.Fast_Delay)
										StartMagnet = true
										FastAttackSpeed = true
										Equip(WeaponName)
										_G.PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
									until not _G.AutoMusketeerHat or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									StartMagnet = false
									FastAttackSpeed = false
								end
							end
						else
							TP2(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
						end
					else
						TP2(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
						if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
							wait(1.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
					TP2(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
				end
			end
		end)
	end
end)
local Automatics = Tabs.Automatics:AddRightTabbox()
local AutomaticsTab = Automatics:AddTab('[ Automatic #3 ]')
AutomaticsTab:AddLabel("[ Event & Quest ]")
local Total_Elite_Hunter = AutomaticsTab:AddLabel('')
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    Total_Elite_Hunter:SetText("Elite Process ⚔️: " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
                end
            end
        )
    end
)
local Elite_Hunter_Status = AutomaticsTab:AddLabel('Status Elite Hunter')
task.spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                Elite_Hunter_Status:SetText("Status 👻 : Spawned  ✅")    
            else
                Elite_Hunter_Status:SetText("Status 👻 : Not Spawned  ❌ ")    
            end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Elite_Hunter', {
	Text = 'Auto Elite Hunter',
})
Toggles.Auto_Elite_Hunter:OnChanged(function(vu)
    _G.Auto_Elite_Hunter = vu
	StopTween(_G.Auto_Elite_Hunter)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Elite_Hunter and Three_World then
			pcall(function()
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat wait(_G.Fast_Delay)
											FastAttackSpeed = true
											Equip(WeaponName)
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
											game:GetService("VirtualUser"):CaptureController()
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
											sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
										until _G.Auto_Elite_Hunter == false or v.Humanoid.Health <= 0 or not v.Parent
										FastAttackSpeed = false
									end
								end
							end
						else
							if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
								TP2(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
								TP2(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
								TP2(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
							end
						end                    
					end
				else
					if _G.Auto_Elite_Hunter_Hop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
						Hop()
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
					end
				end
			end)
		end
	end
end)
local MobKillCakePrince = AutomaticsTab:AddLabel('Killed ⚔️:  ')
local PortalOpen = AutomaticsTab:AddLabel('Portal 🌀 : Not Opened ❌')
task.spawn(function()
    while task.wait(3) do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                MobKillCakePrince:SetText("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                MobKillCakePrince:SetText("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                MobKillCakePrince:SetText("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
            else
                PortalOpen:SetText("Portal : Opened ✅")
            end
        end)
    end
end)
AutomaticsTab:AddToggle('Auto_Cake_Prince', {
	Text = 'Auto Cake Prince',
})
Toggles.Auto_Cake_Prince:OnChanged(function(vu)
    _G.Auto_Cake_Prince = vu
	StopTween(_G.Auto_Cake_Prince)
end)
task.spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Cake_Prince and StartCakeMagnet and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = POSCAKE
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
task.spawn(function()
	while task.wait() do
		if _G.Auto_Cake_Prince then
			pcall(function()
				if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then   
					if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
							if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
								repeat wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									v.HumanoidRootPart.CanCollide = false
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Cake_Prince == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end    
						end    
					else
						TP2(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
					end
				else
					if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")  then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
							if (v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Cookie Crafter [Lv. 2200]") and v.Humanoid.Health > 0 then
								repeat wait(_G.Fast_Delay)
									FastAttackSpeed = true
									Equip(WeaponName)
									StartCakeMagnet = true
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
									POSCAKE = v.HumanoidRootPart.CFrame
									TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Cake_Prince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not v.Parent or v.Humanoid.Health <= 0
								FastAttackSpeed = false
							end
						end
					else
						StartCakeMagnet = false
						TP2(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
					end
				end
			end)
		end
	end
end)
AutomaticsTab:AddToggle('Open_Color_Haki', {
	Text = 'Auto Place Color Haki',
	Tooltip = "For People Have Snow White Color Pure Red Color And Winter Sky Color"
})
Toggles.Open_Color_Haki:OnChanged(function(vu)
    _G.Open_Color_Haki = vu
	StopTween(_G.Open_Color_Haki)
end)
task.spawn(function()
    while task.wait(.3) do
        pcall(function()
            if _G.Open_Color_Haki then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
            	wait(0.5)
            	repeat TP2(CFrame.new(-5420.16602, 1084.9657, -2666.8208)) wait() 
                until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
                wait(0.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
                wait(0.5)
                repeat TP2(CFrame.new(-5414.41357, 309.865753, -2212.45776)) wait() 
                until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10
                wait(0.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
                wait(0.5)
                repeat TP2(CFrame.new(-4971.47559, 331.565765, -3720.02954)) wait() 
                until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
                wait(0.5)
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
                wait(3)
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
            end
        end) 
    end
end)
local AutomaticsTab = Automatics:AddTab('[ Race V4 Helper ]')
if Old_World or New_World then
AutomaticsTab:AddLabel("[ World 3 Only ]")
end
AutomaticsTab:AddLabel("[ Race V4 - Helper ]")
local FM = AutomaticsTab:AddLabel("")
        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                        FM:SetText("🌑 : Full Moon 100%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                        FM:SetText("🌒 : Full Moon 75%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                        FM:SetText("🌓 : Full Moon 50%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                        FM:SetText("🌗 : Full Moon 25%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                        FM:SetText("🌖 : Full Moon 15%")
                    else
                        FM:SetText("🌚 : Full Moon 0%")
                    end
                end)
            end
        end)
local MirageCheck = AutomaticsTab:AddLabel("")
task.spawn(function()
	while task.wait() do
		pcall(function()
			if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Mirage Island") then
				MirageCheck:SetText("🏝️ : Mirage Island | Spawn")
				else
				MirageCheck:SetText("🏝️ : Mirage Island | Not Spawn")
			end
		end)
	end
end)
AutomaticsTab:AddButton("Teleport To Mirage Island",function()
if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
	TP2(game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island").CFrame)
end
end)
AutomaticsTab:AddButton("Teleport To Gear",function()
if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
	TP2(game:GetService("Workspace").Map.MysticIsland:GetChildren("")[220].CFrame)
end
end)
local Shop = Tabs.Shop:AddLeftTabbox()
local ShopTab = Shop:AddTab('Melee')
ShopTab:AddLabel("[ Melee ]")
ShopTab:AddButton("Buy Electro",function()
    local args = {
        [1] = "BuyElectro"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
ShopTab:AddButton("Buy Black Leg",function()
    local args = {
        [1] = "BuyBlackLeg"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
ShopTab:AddButton("Buy Fishman Karate",function()
    local args = {
        [1] = "BuyFishmanKarate"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
ShopTab:AddButton("Buy Dragon Claw",function()
    local args = {
        [1] = "BlackbeardReward",
        [2] = "DragonClaw",
        [3] = "1"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BlackbeardReward",
        [2] = "DragonClaw",
        [3] = "2"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
ShopTab:AddButton("Buy Superhuman",function()
		local args = {
			[1] = "BuySuperhuman"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
ShopTab:AddButton("Buy Death Step",function()
		local args = {
			[1] = "BuyDeathStep"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
ShopTab:AddButton("Buy Shakman Karate",function()
		local args = {
			[1] = "BuySharkmanKarate",
			[2] = true
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "BuySharkmanKarate"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
ShopTab:AddButton("Buy Electric Claw",function()
		local args = {
			[1] = "BuyElectricClaw"
			}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
ShopTab:AddButton("Buy Dragon Talon",function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)
ShopTab:AddButton("Buy God Human",function()
	local args = {
	[1] = "BuyGodhuman"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
local ShopTab = Shop:AddTab('Sword')
ShopTab:AddLabel("[ Sword ]")
ShopTab:AddButton("Buy Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
end)
ShopTab:AddButton("Buy Cutlass",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
end)
ShopTab:AddButton("Buy Duel Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
end)
ShopTab:AddButton("Buy Iron Mace",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
end)
ShopTab:AddButton("Buy Pipe",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
end)
ShopTab:AddButton("Buy Triple Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
end)
ShopTab:AddButton("Buy Dual-Headed Blade",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
end)
ShopTab:AddButton("Buy Bisento",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
end)
ShopTab:AddButton("Buy Soul Cane",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
end)
ShopTab:AddButton("Buy Midnight Blade",function()
local args = {
    [1] = "Ectoplasm",
    [2] = "Buy",
    [3] = 3
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
local ShopTab = Shop:AddTab('Gun')
ShopTab:AddLabel("[ Gun ]")
ShopTab:AddButton("Buy Slingshot",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
end)
ShopTab:AddButton("Buy Musket",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
end)
ShopTab:AddButton("Buy Fintlock",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
end)
ShopTab:AddButton("Buy Refined Flintlock",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
end)
ShopTab:AddButton("Buy Cannon",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
end)
ShopTab:AddButton("Buy Kabucha",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
end)
ShopTab:AddButton("Buy Bizarre Rifle",function()
local args = {
    [1] = "Ectoplasm",
    [2] = "Buy",
    [3] = 1
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
ShopTab:AddButton("Buy Soul Gitar",function()
	local args = {
    [1] = "soulGuitarBuy"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
local Shop = Tabs.Shop:AddRightTabbox()
local ShopTab = Shop:AddTab('Accessory')
ShopTab:AddLabel("[ Accessory ]")
ShopTab:AddButton("Tomoe Ring",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
    end)
ShopTab:AddButton("Black Cape",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
    end)
ShopTab:AddButton("Swordsman Hat",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
    end)
ShopTab:AddButton("Ghost Mask",function()
local args = {
    [1] = "Ectoplasm",
    [2] = "Buy",
    [3] = 2
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
local ShopTab = Shop:AddTab('Fragments')
ShopTab:AddLabel("[ Fragments ]")
ShopTab:AddButton("Race Ghoul",function()
		local args = {
			[1] = "Ectoplasm",
			[2] = "BuyCheck",
			[3] = 4
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "Ectoplasm",
			[2] = "Change",
			[3] = 4
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
ShopTab:AddButton("Race Cyborg",function()
		local args = {
			[1] = "CyborgTrainer",
			[2] = "Buy"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
ShopTab:AddButton("Buy Refund Stat",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)
ShopTab:AddButton("Buy Random Race",function()
    local args = {
        [1] = "BlackbeardReward",
        [2] = "Reroll",
        [3] = "2"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
ShopTab:AddButton("Buy Color Buso Haki",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer", "2")
end)
local ShopTab = Shop:AddTab('Trade')
ShopTab:AddLabel("[ Trade ]")
ShopTab:AddButton("Sweet Chalice",function()
    local args = {
    [1] = "SweetChaliceNpc"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
ShopTab:AddToggle('RandomS', {
    Text = 'Auto Random Surprise',
    Default = false, 
})
Toggles.RandomS:OnChanged(function(vu)
    _G.RandomS = vu
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.RandomS then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
			end
		end)
	end
end)
--[[ShopTab:AddLabel("「 Candy Event 」")
ShopTab:AddButton("Elf Hat 250 Candy",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',3,1)
end)
ShopTab:AddButton("Santa Hat 500",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',3,2)
end)
ShopTab:AddButton("Sleigh 1000 (ฺBoat) Candy",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',3,3)
end)
ShopTab:AddButton("Exp 15 mins 50 Candy",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',1,1)
end)
ShopTab:AddButton("Reset Stats 75 Candy",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',1,2)
end)
ShopTab:AddButton("ReRoll Race 75 Candy",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',1,3)
end)
ShopTab:AddButton("200 Fragments 50 Candy",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',2,1)
end)
ShopTab:AddButton("500 Fragments 100 Candy",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',2,2)
end)--]]
local ShopTab = Tabs.Shop:AddRightGroupbox('Abilities')
ShopTab:AddLabel("[ Abilities ]")
ShopTab:AddToggle('AllEnchant', {
    Text = 'Auto Buy All Abilities',
    Default = false,
})
Toggles.AllEnchant:OnChanged(function(vu)
    _G.AllEnchant = vu
end)
task.spawn(function()
    while task.wait(10) do
        pcall(function()
            if _G.AllEnchant then
                local args = {
                    [1] = "BuyHaki",
                    [2] = "Geppo"
                }
                enc1 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                task.wait()
                local args = {
                    [1] = "BuyHaki",
                    [2] = "Buso"
                }
                enc2 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                task.wait()
                local args = {
                    [1] = "BuyHaki",
                    [2] = "Soru"
                }
                end3 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				task.wait()
				local args = {
					[1] = "KenTalk",
					[2] = "Buy"
				}
			    end4 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end)
        if tostring(enc1) == 2 and tostring(enc2) == 2 and tostring(enc3) == 2 then
            break
        end
    end
end)
ShopTab:AddButton("Skyjump ($10,000 Beli)",function()
  local args = {
          [1] = "BuyHaki",
          [2] = "Geppo"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
  end)
ShopTab:AddButton("Soru ($100,000 Beli)",function()
    local args = {
        [1] = "BuyHaki",
        [2] = "Soru"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
ShopTab:AddButton("Buso Haki ($25,000 Beli)",function()
  local args = {
          [1] = "BuyHaki",
          [2] = "Buso"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
  end)
  
ShopTab:AddButton("Observation haki ($750,000 Beli)",function()
   local args = {
          [1] = "KenTalk",
          [2] = "Buy"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
  end)
local Visuals = Tabs.Visuals:AddLeftTabbox()
local VisualsTab = Visuals:AddTab('[ Teleport World ]')
-- Old World
if Old_World then
VisualsTab:AddLabel("[ World 1 🌀 ]")
VisualsTab:AddButton("Teleport To Second Sea",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end)
VisualsTab:AddButton("Teleport To Third Sea",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end)
end
-- New World
if New_World then
VisualsTab:AddLabel("[ World 2 🌀 ]")
VisualsTab:AddButton("Teleport To Old World",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)
VisualsTab:AddButton("Teleport To Third Sea",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end)
end
if Three_World then
VisualsTab:AddLabel("[ World 3 🌀 ]")
VisualsTab:AddButton("Teleport To Old World",function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)
VisualsTab:AddButton("Teleport To Second Sea",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)
end
if New_World or Three_World then
VisualsTab:AddButton("Teleport to Sea Beast",function()
        for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
            if v:FindFirstChild("HumanoidRootPart") then
                TP2(v.HumanoidRootPart.CFrame*CFrame.new(0,100,0))
            end
        end
    end)
end
local VisualsTab = Visuals:AddTab('[ Server ]')
VisualsTab:AddLabel("「 Server 」")
VisualsTab:AddButton('Hop', function()
    	game.StarterGui:SetCore("SendNotification", {
        Title = "Hop Server", 
        Text = "Ready Go!",
        Duration = 10
    })
    HOP()
end)
VisualsTab:AddButton('Hop Low Server', function()
    	game.StarterGui:SetCore("SendNotification", {
        Title = "Hop Lower Server", 
        Text = "Ready Go!",
        Duration = 10
    })
	HopServer()
end)
VisualsTab:AddButton('Rejoin', function()
    	game.StarterGui:SetCore("SendNotification", {
        Title = "Re Join Server", 
        Text = "Ready Go!",
        Duration = 10
    })
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)
function HopServer() -- Hop
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                        -- delfile("NotSameServers.json")
                        AllIDs = {}
                        table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                    num = num + 1
            end
                if Possible == true then
                table.insert(AllIDs, ID)
                task.wait()
                pcall(function()
                -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                wait()
                game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(.1)
            end
        end
    end
end                              
function Teleport() 
        while wait(1) do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end
function HOP()
    HopServer()
    HopServer()
    HopServer()
    HopServer()
    HopServer()
    while wait(0.2) do
        pcall(function()
            HopServer()
            if foundAnything ~= "" then
                HopServer()
            end
        end)
    end
end
local VisualsTab = Tabs.Visuals:AddRightGroupbox('[ Teleport Island ]')
if Old_World then
	TeleportTable = {"Start Island","Marine","MarineFord","Middle Town","Jungle","Pirate Village","Desert","Frozen Village","Colosseum","Prison","Mob Leader","Magma Village","Day Next GenarationWater Gate","Day Next GenarationWater City","Fountain City","Sky1","Sky2","Sky3"}
elseif New_World then
	TeleportTable = {"Dock","Flamingo Mansion","Flamingo Room","Cafe","Sunflower Field","Jeramy Mountain","Colossem","Factroy","The Bridge","Green Bit","Graveyard","Dark Area","Snow Mountain","Hot Island","Cold Island","Raid Lab","Law Raid","Ice Castle","Usopp's Island","Inscription Island","Forgotten Island","Ghost Ship"}
elseif Three_World then
	TeleportTable = {"Port Town","Hydra Island","Hydra Area","Yama/Enma Room","Tushita Door","Gaint Tree","Mansion","PineApple Village","Floating Turtle","Castle On The Sea","Dungeon","Haunted Castle","Peanut Island","Ice Cream Island","Cake Loaf","Chocolate Island","Candy Land"}
end
function ByPass(Position)
    game.Players.LocalPlayer.Character.Head:Destroy()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
    task.wait(.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
VisualsTab:AddDropdown('SelectIsland', {
    Values = TeleportTable,
    Multi = false,
    Text = 'Select Island',
})
Options.SelectIsland:OnChanged(function(vu)
	SelectIsland = vu
end)
VisualsTab:AddToggle('Teleport_To_Island', {
    Text = 'Teleport To Island',
    Default = false
})
_G.TeleportIsland = value
Toggles.Teleport_To_Island:OnChanged(function()
_G.TeleportIsland = Toggles.Teleport_To_Island.Value
        if _G.TeleportIsland == true then
            repeat task.wait()
                if SelectIsland == "Start Island" then
                    TP2(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif SelectIsland == "Marine" then
                    TP2(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif SelectIsland == "Middle Town" then
                    TP2(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif SelectIsland == "Jungle" then
                    TP2(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif SelectIsland == "Pirate Village" then
                    TP2(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif SelectIsland == "Desert" then
                    TP2(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif SelectIsland == "Frozen Village" then
                    TP2(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif SelectIsland == "MarineFord" then
                    TP2(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif SelectIsland == "Colosseum" then
                    TP2( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif SelectIsland == "Sky1" then
                    TP2(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif SelectIsland == "Sky2" then  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif SelectIsland == "Sky3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif SelectIsland == "Prison" then
                    TP2( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif SelectIsland == "Magma Village" then
                    TP2(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif SelectIsland == "Day Next GenarationWater City" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif SelectIsland == "Fountain City" then
                    TP2(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
				elseif SelectIsland == "Day Next GenarationWater Gate" then
                    TP2(CFrame.new(3876.17333984375, 5.398951053619385, -1908.29638671875))
                elseif SelectIsland == "Mob Leader" then
                    TP2(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
				--New_World
                elseif SelectIsland == "Cafe" then
                    TP2(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif SelectIsland == "Dock" then
                    TP2(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif SelectIsland == "Dark Area" then
                    TP2(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif SelectIsland == "Flamingo Mansion" then
                    TP2(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif SelectIsland == "Flamingo Room" then
                    TP2(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif SelectIsland == "Green Bit" then
                    TP2( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif SelectIsland == "Factroy" then
                    TP2(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif SelectIsland == "Colossem" then
                    TP2( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif SelectIsland == "Graveyard" then
                    TP2(CFrame.new(-5376.267578125, 8.99490737915039, -712.3366088867188))
                elseif SelectIsland == "Sunflower Field" then
                    TP2(CFrame.new(-1693.498046875, 198.6184539794922, -254.1299591064453))
                elseif SelectIsland == "Jeramy Mountain" then
                    TP2(CFrame.new(2153.423583984375, 448.9566650390625, 721.7761840820312))
				elseif SelectIsland == "The Bridge" then
                    TP2(CFrame.new(-1884.421875, 88.38383483886719, -1914.0904541015625))
                elseif SelectIsland == "Ghost Ship" then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif SelectIsland == "Ice Castle" then
                    TP2(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif SelectIsland == "Forgotten Island" then
                    TP2(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif SelectIsland == "Usopp's Island" then
                    TP2(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif SelectIsland == "Snow Mountain" then
                    TP2(CFrame.new(561.23834228516, 401.44781494141, -5297.14453125))
				elseif SelectIsland == "Hot Island" then
                    TP2(CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875))
				elseif SelectIsland == "Cold Island" then
                    TP2(CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375))
				elseif SelectIsland == "Raid Lab" then
                    TP2(CFrame.new(-6436.58056640625, 250.6453094482422, -4499.71777343755))
				elseif SelectIsland == "Law Raid" then
                    TP2(CFrame.new(-5565.9921875, 329.0404968261719, -5953.748046875))
				elseif SelectIsland == "Inscription Island" then
                    TP2(CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531))
                elseif SelectIsland == "Great Tree" then
                    TP2(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
				--Three World
                elseif SelectIsland == "Castle On The Sea" then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.77246, 314.54129, -3151.95483, 0.359622836, -6.80840202e-08, -0.93309778, 4.08927434e-08, 1, -5.72052095e-08, 0.93309778, -1.75846271e-08, 0.359622836))
                elseif SelectIsland == "Port Town" then
                    TP2(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif SelectIsland == "Hydra Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5745.28809, 610.449829, -239.348633, 0.999923825, -5.70820617e-08, -0.0123431049, 5.71043159e-08, 1, 1.45039625e-09, 0.0123431049, -2.1551303e-09, 0.999923825))
				elseif SelectIsland == "Hydra Area" then
                    TP2(CFrame.new(5229.0166015625, 68.15036010742188, -1434.3436279296875))
                elseif SelectIsland == "Floating Turtle" then
                    TP2(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
				elseif SelectIsland == "Yama/Enma Room" then
                    TP2(CFrame.new(5226.80517578125, 6.565110683441162, 1109.474609375))
				elseif SelectIsland == "Tushita Door" then
                    TP2(CFrame.new(5184.662109375, 141.78726196289062, 912.6285400390625))
				elseif SelectIsland == "Gaint Tree" then
                    TP2(CFrame.new(2276.0859375, 25.87850189209, -6493.03125))
				elseif SelectIsland == "PineApple Village" then
                    TP2(CFrame.new(-11172.950195313, 331.8049621582, -10151.033203125))
				elseif SelectIsland == "Dungeon" then
                   TP2(CFrame.new(-5016.49365234375, 314.84393310546875, -2819.84033203125))
				elseif SelectIsland == "Ice Cream Island" then
                    TP2(CFrame.new(-874.2578125, 65.8453369140625, -10911.232421875))
				elseif SelectIsland == "Cake Loaf" then
                    TP2(CFrame.new(-2099.33, 66.9971, -12128.6))
				elseif SelectIsland == "Peanut Island" then
                    TP2(CFrame.new(-2073.262451171875, 37.16134262084961, -10183.3271484375))
				elseif SelectIsland == "Haunted Castle" then
                    TP2(CFrame.new(-9515.07324, 142.130615, 5537.58398))
				elseif SelectIsland == "Chocolate Island" then
                    TP2(CFrame.new(101.124573, 24.7601147, -12080.1318, -0.636760354, -0, -0.771061838, -0, 1, -0, 0.771061718, 0, -0.636760414))
				elseif SelectIsland == "Candy Land" then
                    TP2(CFrame.new(-1047.7470703125, 14.821270942687988, -14185.7939453125))
                elseif SelectIsland == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12549.7236328125, 337.1940612792969, -7470.36328125))
                end
            until not _G.TeleportIsland
        end
		StopTween(_G.TeleportIsland)
	end)
VisualsTab:AddButton("Teleport To Island (Quicky)",function()
	if SelectIsland == "Start Island" then
		ByPass(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
	elseif SelectIsland == "Marine" then
		TP2(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
	elseif SelectIsland == "Middle Town" then
		ByPass(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
	elseif SelectIsland == "Jungle" then
		ByPass(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
	elseif SelectIsland == "Pirate Village" then
		ByPass(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
	elseif SelectIsland == "Desert" then
		ByPass(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
	elseif SelectIsland == "Frozen Village" then
		ByPass(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
	elseif SelectIsland == "MarineFord" then
		ByPass(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
	elseif SelectIsland == "Colosseum" then
		ByPass( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
	elseif SelectIsland == "Sky1" then
		ByPass(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
	elseif SelectIsland == "Sky2" then  
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
	elseif SelectIsland == "Sky3" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
	elseif SelectIsland == "Prison" then
		ByPass( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
	elseif SelectIsland == "Magma Village" then
		ByPass(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
	elseif SelectIsland == "Day Next GenarationWater City" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
	elseif SelectIsland == "Fountain City" then
		ByPass(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
	elseif SelectIsland == "Day Next GenarationWater Gate" then
		ByPass(CFrame.new(3876.17333984375, 5.398951053619385, -1908.29638671875))
	elseif SelectIsland == "Mob Leader" then
		TP2(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
	--New_World
	elseif SelectIsland == "Cafe" then
		ByPass(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
	elseif SelectIsland == "Dock" then
		ByPass(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
	elseif SelectIsland == "Dark Area" then
		TP2(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
	elseif SelectIsland == "Flamingo Mansion" then
		TP2(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
	elseif SelectIsland == "Flamingo Room" then
		TP2(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
	elseif SelectIsland == "Green Bit" then
		ByPass( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
	elseif SelectIsland == "Factroy" then
		TP2(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
	elseif SelectIsland == "Colossuem" then
		TP2( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
	elseif SelectIsland == "Graveyard" then
		ByPass(CFrame.new(-5376.267578125, 8.99490737915039, -712.3366088867188))
	elseif SelectIsland == "Sunflower Field" then
		TP2(CFrame.new(-1693.498046875, 198.6184539794922, -254.1299591064453))
	elseif SelectIsland == "Jeramy Mountain" then
		TP2(CFrame.new(2153.423583984375, 448.9566650390625, 721.7761840820312))
	elseif SelectIsland == "The Bridge" then
		TP2(CFrame.new(-1884.421875, 88.38383483886719, -1914.0904541015625))
	elseif SelectIsland == "Ghost Ship" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
	elseif SelectIsland == "Ice Castle" then
		ByPass(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
	elseif SelectIsland == "Forgotten Island" then
		ByPass(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
	elseif SelectIsland == "Usopp's Island" then
		TP2(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
	elseif SelectIsland == "Snow Mountain" then
		ByPass(CFrame.new(561.23834228516, 401.44781494141, -5297.14453125))
	elseif SelectIsland == "Hot Island" then
		ByPass(CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875))
	elseif SelectIsland == "Cold Island" then
		ByPass(CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375))
	elseif SelectIsland == "Raid Lab" then
		TP2(CFrame.new(-6436.58056640625, 250.6453094482422, -4499.71777343755))
	elseif SelectIsland == "Law Raid" then
		TP2(CFrame.new(-5565.9921875, 329.0404968261719, -5953.748046875))
	elseif SelectIsland == "Inscription Island" then
		TP2(CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531))
	--Three World
	elseif SelectIsland == "Castle On The Sea" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.77246, 314.54129, -3151.95483, 0.359622836, -6.80840202e-08, -0.93309778, 4.08927434e-08, 1, -5.72052095e-08, 0.93309778, -1.75846271e-08, 0.359622836))
		TP2(CFrame.new(-4999.45361328125, 314.5412902832031, -3010.540283203125))
	elseif SelectIsland == "Port Town" then
		ByPass(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
	elseif SelectIsland == "Hydra Island" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5745.28809, 610.449829, -239.348633, 0.999923825, -5.70820617e-08, -0.0123431049, 5.71043159e-08, 1, 1.45039625e-09, 0.0123431049, -2.1551303e-09, 0.999923825))
	elseif SelectIsland == "Hydra Area" then
		ByPass(CFrame.new(5229.0166015625, 68.15036010742188, -1434.3436279296875))
	elseif SelectIsland == "Floating Turtle" then
		TP2(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
	elseif SelectIsland == "Yama/Enma Room" then
		TP2(CFrame.new(5226.80517578125, 6.565110683441162, 1109.474609375))
	elseif SelectIsland == "Tushita Door" then
		TP2(CFrame.new(5184.662109375, 141.78726196289062, 912.6285400390625))
	elseif SelectIsland == "Gaint Tree" then
		ByPass(CFrame.new(2276.0859375, 25.87850189209, -6493.03125))
	elseif SelectIsland == "PineApple Village" then
		ByPass(CFrame.new(-11172.950195313, 331.8049621582, -10151.033203125))
	elseif SelectIsland == "Dungeon" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.77246, 314.54129, -3151.95483, 0.359622836, -6.80840202e-08, -0.93309778, 4.08927434e-08, 1, -5.72052095e-08, 0.93309778, -1.75846271e-08, 0.359622836))
		TP2(CFrame.new(-5016.49365234375, 314.84393310546875, -2819.84033203125))
	elseif SelectIsland == "Ice Cream Island" then
		ByPass(CFrame.new(-874.2578125, 65.8453369140625, -10911.232421875))
	elseif SelectIsland == "Cake Loaf" then
		ByPass(CFrame.new(-2099.33, 66.9971, -12128.6))
	elseif SelectIsland == "Peanut Island" then
		ByPass(CFrame.new(-2073.262451171875, 37.16134262084961, -10183.3271484375))
	elseif SelectIsland == "Haunted Castle" then
		ByPass(CFrame.new(-9515.07324, 142.130615, 5537.58398))
	elseif SelectIsland == "Chocolate Island" then
		ByPass(CFrame.new(101.124573, 24.7601147, -12080.1318, -0.636760354, -0, -0.771061838, -0, 1, -0, 0.771061718, 0, -0.636760414))
	elseif SelectIsland == "Candy Land" then
		ByPass(CFrame.new(-1047.7470703125, 14.821270942687988, -14185.7939453125))
	elseif SelectIsland == "Mansion" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12549.7236328125, 337.1940612792969, -7470.36328125))
	end
end)
VisualsTab:AddButton("Stop All Tween",function(vu)
	TP2(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	StopTween = vu
end)
if Three_World then
local VisualsTab = Tabs.Visuals:AddLeftGroupbox('[ Race V4 Teleport ]')
VisualsTab:AddButton("Teleport To Temple Of Time",function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14896.5341796875, 102.62469482421875))
end)
VisualsTab:AddButton("Hight Greet Tree",function()
		TP2(CFrame.new(2952.8408203125, 2282.0048828125, -7216.93701171875))
end)
VisualsTab:AddButton("Fish Door",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14896.5341796875, 102.62469482421875))
	TP2(CFrame.new(28227.865234375, 14890.658203125, -212.266845703125))
end)
VisualsTab:AddButton("Cyborg Door",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14896.5341796875, 102.62469482421875))
	TP2(CFrame.new(28498.1171875, 14895.658203125, -424.64471435546875))
end)
VisualsTab:AddButton("Sky Door",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14896.5341796875, 102.62469482421875))
	TP2(CFrame.new(28962.794921875, 14919.306640625, 233.4062957763672))
end)
VisualsTab:AddButton("Human Door",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14896.5341796875, 102.62469482421875))
	TP2(CFrame.new(29236.22265625, 14890.658203125, -205.9137420654297))
end)
VisualsTab:AddButton("Ghoul Door",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14896.5341796875, 102.62469482421875))
	TP2(CFrame.new(28672.5078125, 14890.359375, 449.8250732421875))
end)
VisualsTab:AddButton("Mink Door",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14896.5341796875, 102.62469482421875))
	TP2(CFrame.new(29018.40234375, 14890.658203125, -379.6036376953125))
end)
end
local Visuals = Tabs.Visuals:AddRightTabbox()
local VisualsTab = Visuals:AddTab('[ \\\\ Dungeon // ]')
local TimeRaid = VisualsTab:AddLabel("Wait For Dungeon")
task.spawn(function()
	pcall(function()
		while task.wait() do
			if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
				TimeRaid:SetText(game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
			else
				TimeRaid:SetText("Wait For Dungeon")
			end
		end
	end)
end)
Dungeon = {
    "Flame",
    "Ice",
	"Quake",
	"Light",
	"Dark",
	"String",
	"Rumble",
	"Magma",
	"Human: Buddha",
	"Sand",
	"Bird: Phoenix",
	"Dough"
}
VisualsTab:AddDropdown('SelectDungeon', {
    Values = Dungeon,
    Default = "Flame",
    Multi = false,
    Text = 'Select Dungeon',
})
Options.SelectDungeon:OnChanged(function(vu)
	SelectDungeon = vu
end)
VisualsTab:AddToggle('KillAura', {
    Text = 'Kill Aura',
    Default = false, 
})
Toggles.KillAura:OnChanged(function(vu)
    _G.KillAura = vu
end)
task.spawn(function()
    while task.wait() do
        if _G.KillAura then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat wait()
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until not _G.KillAura  or not v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
        end
    end
end)
VisualsTab:AddToggle('NextIsland', {
    Text = 'Next Island',
    Default = false, 
})
Toggles.NextIsland:OnChanged(function(vu)
    _G.NextIsland = vu
	StopTween(_G.NextIsland)
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.NextIsland then
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 5" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2300 then
							TP2(v.CFrame*CFrame.new(0,70,0))
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 4" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							TP2(v.CFrame*CFrame.new(0,70,0))
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2100 then
							TP2(v.CFrame*CFrame.new(0,70,0))
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							TP2(v.CFrame*CFrame.new(0,10,0))
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island ") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island " and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							TP2(v.CFrame*CFrame.new(0,70,0))
						end
					end
				else
					task.wait()
				end
			else
				task.wait()
			end
		end)
	end
end)
VisualsTab:AddToggle('Auto_Awakener', {
    Text = 'Auto Awaken Skill',
    Default = false, 
})
Toggles.Auto_Awakener:OnChanged(function(vu)
    _G.Auto_Awakener = vu
end)
task.spawn(function()
    while task.wait() do
        if _G.Auto_Awakener then
            pcall(function()
                local args = {
                    [1] = "Awakener",
                    [2] = "Check"
                }
                
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "Awakener",
                    [2] = "Awaken"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end
    end
end)
VisualsTab:AddToggle('AutoStartRaids', {
    Text = 'Auto Start Raids',
    Default = false, 
})
Toggles.AutoStartRaids:OnChanged(function(vu)
    _G.Auto_Start_Dungeon = vu
end)
task.spawn(function()
	while task.wait(.1) do
		if _G.Auto_Start_Dungeon then
			pcall(function()
				if New_World then
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then 
							fireclickdetector(game.Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
						end
					end
				elseif Three_World then
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then
							fireclickdetector(game.Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
						end
					end
				end
			end)
		end
	end
end)
VisualsTab:AddToggle('AutoBuyChipsSelect', {
    Text = 'Auto Buy Chips Select',
    Default = false, 
})
Toggles.AutoBuyChipsSelect:OnChanged(function(vu)
    _G.AutoBuyChipsSelect = vu
end)
task.spawn(function()
    while task.wait() do
        if _G.AutoBuyChipsSelect then
            pcall(function()
                local args = {
                    [1] = "RaidsNpc",
                    [2] = "Select",
                    [3] = SelectDungeon
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end
    end
end)
VisualsTab:AddButton("Buy Chip Select",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",SelectDungeon)
end)
VisualsTab:AddButton("Start Raid",function()
    if New_World then
        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
    elseif Three_World then
        fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
    end
end)
local VisualsTab = Visuals:AddTab('[ \\\\ ESP // ]')
VisualsTab:AddToggle('ESPPLAYERS', {
    Text = 'ESP Players',
    Default = false, 
})
Toggles.ESPPLAYERS:OnChanged(function()
ESPPlayer = Toggles.ESPPLAYERS.Value
while ESPPlayer do task.wait()
	UpdatePlayerChams()
end
end)
VisualsTab:AddToggle('EspChest', {
    Text = 'ESP Chests',
    Default = false, 
})
Toggles.EspChest:OnChanged(function()
ChestESP = Toggles.EspChest.Value
while ChestESP do task.wait()
	UpdateChestChams() 
end
end)
VisualsTab:AddToggle('EspDevilFruit', {
    Text = 'ESP Devil Fruit',
    Default = false, 
})
Toggles.EspDevilFruit:OnChanged(function()
DevilFruitESP = Toggles.EspDevilFruit.Value
while DevilFruitESP do task.wait()
	UpdateDevilChams() 
end
end)
VisualsTab:AddToggle('EspFruitSpawm', {
    Text = 'ESP Fruit Spawn',
    Default = false, 
})
Toggles.EspFruitSpawm:OnChanged(function()
RealFruitESP = Toggles.EspFruitSpawm.Value
while RealFruitESP do task.wait()
	UpdateRealFruitChams() 
end
end)
VisualsTab:AddToggle('EspFlower', {
    Text = 'ESP Flowers',
    Default = false, 
})
Toggles.EspFlower:OnChanged(function()
FlowerESP = Toggles.EspFlower.Value
while FlowerESP do task.wait()
	UpdateFlowerChams() 
end
end)
task.spawn(function()
	while task.wait(2) do
		if FlowerESP then
			UpdateFlowerChams() 
		end
		if DevilFruitESP then
			UpdateDevilChams() 
		end
		if ChestESP then
			UpdateChestChams() 
		end
		if ESPPlayer then
			UpdatePlayerChams()
		end
		if RealFruitESP then
			UpdateRealFruitChams()
		end
	end
end)
function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if ChestESP then
					if string.find(v.Name,"Chest") then
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end
function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
					v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
end
function UpdateRealFruitChams() 
	for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end
local MiscTab = Tabs.Misc:AddLeftGroupbox('[ User Interface ]')
MiscTab:AddButton("Open Fruit Inventory",function()
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
end)
MiscTab:AddButton("Open Fruit Awaken",function()
	game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
end)
MiscTab:AddButton("Open Fruit Store",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
    game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
end)
MiscTab:AddButton("Open Color Haki",function()
	game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)
MiscTab:AddButton("Open Title Name",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getTitles")
    game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)
local MiscTab = Tabs.Misc:AddLeftGroupbox('[ Devil Fruits ]')
FruitList = {
	"Kilo-Kilo",
	"Spin-Spin",
	"Chop-Chop",
	"Spring-Spring",
	"Bomb-Bomb",
	"Smoke-Smoke",
	"Spike-Spike",
	"Flame-Flame",
	"Bird: Falcon",
	"Ice-Ice",
	"Sand-Sand",
	"Dark-Dark",
	"Revive-Revive",
	"Diamond-Diamond",
	"Light-Light",
	"Love-Love",
	"Rubber-Rubber",
	"Barrier-Barrier",
	"Magma-Magma",
	"Quake-Quake",
	"Humman: Buddha",
	"String-String",
	"Bird: Phoenix",
	"Portal-Portal",
	"Rumble-Rumble",
	"Paw-Paw",
	"Blizzard-Blizzard",
	"Gravity-Gravity",
	"Dough-Dough",
	"Shadow-Shadow",
	"Venom-Venomm",
	"Control-Control",
	"Spirit-Spirit",
	"Dragon-Dragon",
	"Leopard-Leopard"
}
MiscTab:AddDropdown('SelectFruits', {
    Values = FruitList,
    Default = "Kilo-Kilo",
    Multi = false,
	Text = "Select Fruits",
})
Options.SelectFruits:OnChanged(function(vu)
	_G.SelectFruits = vu
end)
MiscTab:AddToggle('Auto_Buy_Devill_Fruits', {
    Text = 'Auto Buy Devil Fruit',
    Default = false, 
})
Toggles.Auto_Buy_Devill_Fruits:OnChanged(function(vu)
    _G.Auto_Buy_Devil_Fruit = vu
end)
task.spawn(function()
	pcall(function()
		while task.wait(.1) do
			if _G.Auto_Buy_Devil_Fruit then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectFruits)
			end 
		end
	end)
end)
MiscTab:AddToggle('RandomFruits', {
    Text = 'Auto Random Fruits',
    Default = false, 
})
Toggles.RandomFruits:OnChanged(function(vu)
    _G.Random_Auto = vu
end)
task.spawn(function()
    pcall(function()
        while task.wait() do
            if _G.Random_Auto then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end 
        end
    end)
end)
MiscTab:AddToggle('StoreFruits', {
    Text = 'Auto Store Fruits',
    Default = false, 
})
Toggles.StoreFruits:OnChanged(function(vu)
    _G.StoreFruits = vu
end)
spawn(function()
    while wait(2) do
		pcall(function() 
			if _G.StoreFruits then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
					Equip('Bomb Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Character["Bomb Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
					Equip('Spike Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Character["Spike Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
					Equip('Chop Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Character["Chop Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
					Equip('Spring Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Character["Spring Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
					Equip('Kilo Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo",game:GetService("Players").LocalPlayer.Character["Kilo Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
					Equip('Smoke Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Character["Smoke Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
					Equip('Spin Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Character["Spin Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
					Equip('Flame Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Character["Flame Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
					Equip('Bird: Falcon Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Character["Bird: Falcon Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
					Equip('Ice Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Character["Ice Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
					Equip('Sand Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Character["Sand Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
					Equip('Dark Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Character["Dark Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
					Equip('Revive Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Revive",game:GetService("Players").LocalPlayer.Character["Revive Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
					Equip('Diamond Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Character["Diamond Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
					Equip('Light Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Character["Light Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
					Equip('Love Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Character["Love Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
					Equip('Rubber Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Character["Rubber Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
					Equip('Barrier Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Character["Barrier Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
					Equip('Magma Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Character["Magma Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
					Equip('Quake Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Character["Quake Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
					Equip('Human-Human: Buddha Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Character["Human-Human: Buddha Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
					Equip('String Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String",game:GetService("Players").LocalPlayer.Character["String Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
					Equip('Bird: Phoenix Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Character["Bird: Phoenix Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
					Equip('Rumble Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Character[("Rumble Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
					Equip('Paw Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw",game:GetService("Players").LocalPlayer.Character[("Paw Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
					Equip('Gravity Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Character[("Gravity Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
					Equip("Dough Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Character[("Dough Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
					Equip("Shadow Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Character[("Shadow Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
					Equip("Venom Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Character[("Venom Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
					Equip("Control Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Character[("Control Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
					Equip("Dragon Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Character[("Dragon Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit") then
					Equip("Spirit Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spirit-Spirit",game:GetService("Players").LocalPlayer.Character[("Spirit Fruit")])
					wait(1)
				end
				if  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit") then
					Equip("Portal Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Portal-Portal",game:GetService("Players").LocalPlayer.Character[("Portal Fruit")])
					wait(1)
				end
				if  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blizzard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blizzard Fruit") then
					Equip("Blizzard Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Blizzard-Blizzard",game:GetService("Players").LocalPlayer.Character[("Blizzard Fruit")])
					wait(1)
				end
				if  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
					Equip("Leopard Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Character[("Leopard Fruit")])
					wait(1)
				end
			end
		end)
    end
end)
MiscTab:AddToggle('BringFruit', {
    Text = 'Bring Fruit',
    Default = false, 
})
Toggles.BringFruit:OnChanged(function(vu)
    _G.BringFruit = vu
	_G.BringFruit_P = vu
end)
task.spawn(function()
        while task.wait() do
            pcall(function()
                if _G.BringFruit or _G.BringFruit_P then
                    for i,v6 in pairs(game:GetService("Workspace"):GetChildren()) do
                        if v6:IsA ("Tool") and (v6.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 13000 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v6.Handle.CFrame
                            v6.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end
                end
            end)
        end
    end)
MiscTab:AddButton("Random Fruit",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
end)
local Misc = Tabs.Misc:AddRightTabbox()
local MiscTab = Misc:AddTab('\\\\ Other # 1 //')
MiscTab:AddToggle('NoclipEnabled', {
    Text = 'No Clip',
    Default = false, 
})
Toggles.NoclipEnabled:OnChanged(function()
    if Toggles.NoclipEnabled.Value then
        NoclipLoop = game:GetService("RunService").Stepped:Connect(function()
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA("BasePart") and v.CanCollide == true then
                    v.CanCollide = false
                end
            end
        end)
    elseif Toggles.NoclipEnabled.Value == false and NoclipLoop then
        NoclipLoop:Disconnect()
    end
end)
Toggles.NoclipEnabled:AddKeyPicker('NoclipBind', {
    Default = 'None', 
    SyncToggleState = true, 
    Mode = 'Toggle',
    Text = 'Noclip', 
    NoUI = false,
})
MiscTab:AddToggle('InfAbility', {
    Text = 'Infinite Ability',
    Default = true, 
})
Toggles.InfAbility:OnChanged(function(vu)
    _G.InfAbility = vu
end)
if vu == false then
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
end
task.spawn(function()
while task.wait() do
	if _G.InfAbility then
		InfAb()
	end
end
end)
function InfAb()
if _G.InfAbility then
	if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
		local inf = Instance.new("ParticleEmitter")
		inf.Acceleration = Vector3.new(0,0,0)
		inf.Archivable = true
		inf.Drag = 20
		inf.EmissionDirection = Enum.NormalId.Top
		inf.Enabled = true
		inf.Lifetime = NumberRange.new(0,0)
		inf.LightInfluence = 0
		inf.LockedToPart = true
		inf.Name = "Agility"
		inf.Rate = 500
		local numberKeypoints2 = {
			NumberSequenceKeypoint.new(0, 0);
			NumberSequenceKeypoint.new(1, 4); 
		}
		inf.Size = NumberSequence.new(numberKeypoints2)
		inf.RotSpeed = NumberRange.new(9999, 99999)
		inf.Rotation = NumberRange.new(0, 0)
		inf.Speed = NumberRange.new(30, 30)
		inf.SpreadAngle = Vector2.new(0,0,0,0)
		inf.Texture = ""
		inf.VelocityInheritance = 0
		inf.ZOffset = 2
		inf.Transparency = NumberSequence.new(0)
		inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
		inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	end
else
	if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
	end
end
end
MiscTab:AddToggle('InfSoru', {
    Text = 'Infinite Soru',
    Default = false, 
})
getgenv().InfSoru = false
Toggles.InfSoru:OnChanged(function()
getgenv().InfSoru = Toggles.InfSoru.Value
task.spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().InfSoru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
                for i,v in next, getgc() do
                    if game:GetService("Players").LocalPlayer.Character.Soru then
                        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
                            for i2,v2 in next, getupvalues(v) do
                                if typeof(v2) == "table" then
                                    repeat task.wait(0.)
                                        v2.LastUse = 0
                                    until not getgenv().InfSoru or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)
end)
MiscTab:AddToggle('InfGeppo', {
    Text = 'Infinite Geppo',
    Default = false, 
})
getgenv().InfGeppo = false
Toggles.InfGeppo:OnChanged(function()
getgenv().InfGeppo = Toggles.InfGeppo.Value
task.spawn(function()
    while task.wait() do
    pcall(function()
     if getgenv().InfGeppo then
     for i,v in next, getgc() do
     if game:GetService("Players").LocalPlayer.Character.Geppo then
     if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Geppo then
     for i2,v2 in next, getupvalues(v) do
     if tostring(i2) == "9" then
     repeat wait()
     setupvalue(v,i2,0)
     until not getgenv().InfGeppo or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
     end
     end
     end
     end
     end
     end
     end)
    end
    end)
end)
MiscTab:AddToggle('InfiniteObRange', {
    Text = 'Infinit Observation Haki Range',
    Default = false, 
})
getgenv().InfiniteObRange = false
Toggles.InfiniteObRange:OnChanged(function()
getgenv().InfiniteObRange = Toggles.InfiniteObRange.Value
local VS = game:GetService("Players").LocalPlayer.VisionRadius.Value
while getgenv().InfiniteObRange do
    wait()
    local player = game:GetService("Players").LocalPlayer
    local char = player.Character
    local VisionRadius = player.VisionRadius
    if player then
        if char.Humanoid.Health <= 0 then 
            wait(5) 
        end
        VisionRadius.Value = math.huge
    elseif getgenv().InfiniteObRange == false and player then
        VisionRadius.Value = VS
end
end
end)
MiscTab:AddToggle('CtrlClickTP', {
    Text = 'Ctrl Click TP',
    Default = true, 
})
_G.CtrlClickTP = false
Toggles.CtrlClickTP:OnChanged(function()
_G.CtrlClickTP = Toggles.CtrlClickTP.Value
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
Mouse.Button1Down:connect(function()
	if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
		return
	end
	if not Mouse.Target then
		return
	end
	if _G.CtrlClickTP then
		Plr.Character:MoveTo(Mouse.Hit.p)
	end
end)
end)
MiscTab:AddToggle('Damage_Aura', {
    Text = 'Damage Aura',
    Default = false
})
Toggles.Damage_Aura:OnChanged(function(vu)
    _G.DamagerAura = vu
end)
local plr = game.Players.LocalPlayer
    
local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end
function AttackNoCD() 
    local AC = CbFw2.activeController
    for i = 1, 1 do 
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            60
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(function()
                for k, v in pairs(AC.animator.anims.basic) do
                    v:Play()
                end                  
            end)
            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "") 
            end
        end
    end
end
require(game.ReplicatedStorage.Util.CameraShaker):Stop()
task.spawn(function()
    while task.wait(0.17) do
        pcall(function()
          if _G.DamagerAura then
              if _G.DamagerAura then
                AttackNoCD(10000)
              end
          end
      end)
    end
end)
local MiscTab = Misc:AddTab('\\\\ Other # 2 //')
MiscTab:AddButton("RTX Graphic (Autumn)",function()
    getgenv().mode = "Autumn" -- Choose from Summer and Autumn
    local a = game.Lighting
    a.Ambient = Color3.fromRGB(33, 33, 33)
    a.Brightness = 6.67
    a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
    a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
    a.EnvironmentDiffuseScale = 0.105
    a.EnvironmentSpecularScale = 0.522
    a.GlobalShadows = true
    a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
    a.ShadowSoftness = 0.04
    a.GeographicLatitude = -15.525
    a.ExposureCompensation = 0.75
    local b = Instance.new("BloomEffect", a)
    b.Enabled = true
    b.Intensity = 0.04
    b.Size = 1900
    b.Threshold = 0.915
    local c = Instance.new("ColorCorrectionEffect", a)
    c.Brightness = 0.176
    c.Contrast = 0.39
    c.Enabled = true
    c.Saturation = 0.2
    c.TintColor = Color3.fromRGB(217, 145, 57)
    if getgenv().mode == "Summer" then
        c.TintColor = Color3.fromRGB(255, 220, 148)
    elseif getgenv().mode == "Autumn" then
        c.TintColor = Color3.fromRGB(217, 145, 57)
    else
        warn("No mode selected!")
        print("Please select a mode")
        b:Destroy()
        c:Destroy()
    end
    local d = Instance.new("DepthOfFieldEffect", a)
    d.Enabled = true
    d.FarIntensity = 0.077
    d.FocusDistance = 21.54
    d.InFocusRadius = 20.77
    d.NearIntensity = 0.277
    local e = Instance.new("ColorCorrectionEffect", a)
    e.Brightness = 0
    e.Contrast = -0.07
    e.Saturation = 0
    e.Enabled = true
    e.TintColor = Color3.fromRGB(255, 247, 239)
    local e2 = Instance.new("ColorCorrectionEffect", a)
    e2.Brightness = 0.2
    e2.Contrast = 0.45
    e2.Saturation = -0.
    e2.Enabled = true
    e2.TintColor = Color3.fromRGB(255, 255, 255)
    local s = Instance.new("SunRaysEffect", a)
    s.Enabled = true
    s.Intensity = 0.01
    s.Spread = 0.146

end)
MiscTab:AddButton("RTX Graphic (Summer)",function()
    getgenv().mode = "Summer" -- Choose from Summer and Autumn
    local a = game.Lighting
    a.Ambient = Color3.fromRGB(33, 33, 33)
    a.Brightness = 6.67
    a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
    a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
    a.EnvironmentDiffuseScale = 0.105
    a.EnvironmentSpecularScale = 0.522
    a.GlobalShadows = true
    a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
    a.ShadowSoftness = 0.04
    a.GeographicLatitude = -15.525
    a.ExposureCompensation = 0.75
    local b = Instance.new("BloomEffect", a)
    b.Enabled = true
    b.Intensity = 0.04
    b.Size = 1900
    b.Threshold = 0.915
    local c = Instance.new("ColorCorrectionEffect", a)
    c.Brightness = 0.176
    c.Contrast = 0.39
    c.Enabled = true
    c.Saturation = 0.2
    c.TintColor = Color3.fromRGB(217, 145, 57)
    if getgenv().mode == "Summer" then
        c.TintColor = Color3.fromRGB(255, 220, 148)
    elseif getgenv().mode == "Autumn" then
        c.TintColor = Color3.fromRGB(217, 145, 57)
    else
        warn("No mode selected!")
        print("Please select a mode")
        b:Destroy()
        c:Destroy()
    end
    local d = Instance.new("DepthOfFieldEffect", a)
    d.Enabled = true
    d.FarIntensity = 0.077
    d.FocusDistance = 21.54
    d.InFocusRadius = 20.77
    d.NearIntensity = 0.277
    local e = Instance.new("ColorCorrectionEffect", a)
    e.Brightness = 0
    e.Contrast = -0.07
    e.Saturation = 0
    e.Enabled = true
    e.TintColor = Color3.fromRGB(255, 247, 239)
    local e2 = Instance.new("ColorCorrectionEffect", a)
    e2.Brightness = 0.2
    e2.Contrast = 0.45
    e2.Saturation = -0.
    e2.Enabled = true
    e2.TintColor = Color3.fromRGB(255, 255, 255)
    local s = Instance.new("SunRaysEffect", a)
    s.Enabled = true
    s.Intensity = 0.01
    s.Spread = 0.146

end)
MiscTab:AddButton("FPS Booster",function()
	local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
	local g = game
	local w = g.Workspace
	local l = g.Lighting
	local t = w.Terrain
	t.WaterWaveSize = 0
	t.WaterWaveSpeed = 0
	t.WaterReflectance = 0
	t.WaterTransparency = 0
	l.GlobalShadows = false
	l.FogEnd = 9e9
	l.Brightness = 0
	settings().Rendering.QualityLevel = "Level01"
	for i, v in pairs(g:GetDescendants()) do
		if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlasTP2ressure = 1
			v.BlastRadius = 1
		elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
			v.Enabled = false
		elseif v:IsA("MeshPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
			v.TextureID = 10385902758728957
		end
	end
	for i, e in pairs(l:GetChildren()) do
		if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
			e.Enabled = false
		end
	end
end)
MiscTab:AddButton("FPS Booster (Fast Mode)",function()
        if not game:IsLoaded() then repeat wait() until game:IsLoaded() end
            if hookfunction and setreadonly then
            local mt = getrawmetatable(game)
            local old = mt.__newindex
            setreadonly(mt, false)
            local sda
            sda = hookfunction(old, function(t, k, v)
                if k == "Material" then
                    if v ~= Enum.Material.Neon and v ~= Enum.Material.Plastic and v ~= Enum.Material.ForceField then v = Enum.Material.Plastic end
                elseif k == "TopSurface" then v = "Smooth"
                elseif k == "Reflectance" or k == "WaterWaveSize" or k == "WaterWaveSpeed" or k == "WaterReflectance" then v = 0
                elseif k == "WaterTransparency" then v = 1
                elseif k == "GlobalShadows" then v = false end
                return sda(t, k, v)
            end)
            setreadonly(mt, true)
            end
            local g = game
            local w = g.Workspace
            local l = g:GetService"Lighting"
            local t = w:WaitForChild"Terrain"
            t.WaterWaveSize = 0
            t.WaterWaveSpeed = 0
            t.WaterReflectance = 0
            t.WaterTransparency = 1
            l.GlobalShadows = false
            
            function change(v)
            pcall(function()
                if v.Material ~= Enum.Material.Neon and v.Material ~= Enum.Material.Plastic and v.Material ~= Enum.Material.ForceField then
                    pcall(function() v.Reflectance = 0 end)
                    pcall(function() v.Material = Enum.Material.Plastic end)
                    pcall(function() v.TopSurface = "Smooth" end)
                end
            end)
            end
            
            game.DescendantAdded:Connect(function(v)
            pcall(function()
                if v:IsA"Part" then change(v)
                elseif v:IsA"MeshPart" then change(v)
                elseif v:IsA"TrussPart" then change(v)
                elseif v:IsA"UnionOperation" then change(v)
                elseif v:IsA"CornerWedgePart" then change(v)
                elseif v:IsA"WedgePart" then change(v) end
            end)
            end)
            for i, v in pairs(game:GetDescendants()) do
                pcall(function()
                    if v:IsA"Part" then change(v)
                    elseif v:IsA"MeshPart" then change(v)
                    elseif v:IsA"TrussPart" then change(v)
                    elseif v:IsA"UnionOperation" then change(v)
                    elseif v:IsA"CornerWedgePart" then change(v)
                    elseif v:IsA"WedgePart" then change(v) 
                end
            end)
        end
end)
MiscTab:AddButton("Remove Lava",function()
for i,v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "Lava" then   
        v:Destroy()
    end
end
for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
    if v.Name == "Lava" then   
        v:Destroy()
    end
end
end)
MiscTab:AddButton("Remove Fog",function()
	game:GetService("Lighting").FogEnd = 100000 for i,v in pairs(game:GetService("Lighting"):GetDescendants()) do if v:IsA("Atmosphere") then v:Destroy() end end
end)
local WebHookLog = {}
local AllRequest = http_request or request or HttpPost or syn.request
function WebHookLog:WebHookKaiTanSend(WebHookUrl)
	function GetFightingStyle(Style)
		ReturnText = ""
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetAwaken()
		ReturnText = ""
		Awakened_Z = ":x:"
		Awakened_X = ":x:"
		Awakened_C = ":x:"
		Awakened_V = ":x:"
		Awakened_F = ":x:"
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == "Blox Fruit" then
					if v:FindFirstChild("AwakenedMoves") then
						if v.AwakenedMoves:FindFirstChild("Z") then
							Awakened_Z = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("X") then
							Awakened_X = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("C") then
							Awakened_C = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("V") then
							Awakened_V = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("F") then
							Awakened_F = ":white_check_mark:"
						end
						ReturnText = ":regional_indicator_z:"..Awakened_Z..
							"\n"..":regional_indicator_x:"..Awakened_X..
							"\n"..":regional_indicator_c:"..Awakened_C..
							"\n"..":regional_indicator_v:"..Awakened_V..
							"\n"..":regional_indicator_f:"..Awakened_F
					else
						ReturnText = "This Fruit Can't Awakened"
					end
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == "Blox Fruit" then
					if v:FindFirstChild("AwakenedMoves") then
						if v.AwakenedMoves:FindFirstChild("Z") then
							Awakened_Z = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("X") then
							Awakened_X = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("C") then
							Awakened_C = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("V") then
							Awakened_V = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("F") then
							Awakened_F = ":white_check_mark:"
						end
						ReturnText = ":regional_indicator_z:"..Awakened_Z..
							"\n"..":regional_indicator_x:"..Awakened_X..
							"\n"..":regional_indicator_c:"..Awakened_C..
							"\n"..":regional_indicator_v:"..Awakened_V..
							"\n"..":regional_indicator_f:"..Awakened_F
					else
						ReturnText = "This Fruit Can't Awakened"
					end
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetWeapon(Rare)
		if Rare == "Common" then
			RareNumber = 0
		elseif Rare == "Uncommon" then
			RareNumber = 1
		elseif Rare == "Rare" then
			RareNumber = 2
		elseif Rare == "Legendary" then
			RareNumber = 3
		elseif Rare == "Mythical" then
			RareNumber = 4
		else
			return "Worng InPut"
		end
		local ReturnText = ""
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do
			if type(v) == "table" then
				if v.Rarity then
					if tonumber(v.Rarity) == RareNumber then
						ReturnText = ReturnText .. v.Name .. "\n"
					end
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetFruitInU()
		local ReturnText = ""
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
			if type(v) == "table" then
				if v ~= nil then
					ReturnText = ReturnText .. v.Name .. "\n"
				end
			end
		end

		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetAllMelee()
		BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
		if BuyDragonTalon then
			if BuyDragonTalon == 1 then
				TalComplete = true
			end
		end
		BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
		if BuySuperhuman then
			if BuySuperhuman == 1 then
				SupComplete = true
			end
		end
		BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
		if BuySharkmanKarate then
			if BuySharkmanKarate == 1 then
				SharkComplete = true
			end
		end
		BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true))
		if BuyDeathStep then
			if BuyDeathStep == 1 then
				DeathComplete = true
			end
		end
		BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
		if BuyElectricClaw then
			if BuyElectricClaw == 1 then
				EClawComplete = true
			end
		end
		BuyGod = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
		if BuyGod then
			if BuyGod == 1 then
				GodComplete = true
			end
		end
		ReturnText = {}
		if SupComplete == true then
			table.insert(ReturnText,"Superhuman")
		end
		if EClawComplete == true then
			table.insert(ReturnText,"Electric Claw")
		end
		if TalComplete == true then
			table.insert(ReturnText,"Dragon Talon")
		end
		if SharkComplete == true then
			table.insert(ReturnText,"Sharkman Karate")
		end
		if DeathComplete == true then
			table.insert(ReturnText,"Death Step")
		end
		if GodComplete == true then
			table.insert(ReturnText,"Godhuman")
		end

		if #ReturnText ~= 0 then
			return table.concat(ReturnText,"\n")
		else
			return "your are not have all melees"
		end
	end

	local Embeds = {{
		["title"] = "**Day Hub Webhooks💐**",
		["color"] = tonumber(0xD936FF),
		["fields"] = {
			{
				["name"] = "User Info",
				["value"] = "||"..tostring(game.Players.LocalPlayer.Name).."||",
				["inline"] = true
			},
			{
				["name"] = "Level",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Level").Value),
				["inline"] = true
			},
			{
				["name"] = "Fragments",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Fragments").Value),
				["inline"] = true
			},
			{
				["name"] = "Beli",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Beli").Value),
				["inline"] = true
			},
			{
				["name"] = "Using Fighting Style",
				["value"] = GetFightingStyle("Melee"),
				["inline"] = true
			},
			{
				["name"] = "Using Sword",
				["value"] = GetFightingStyle("Sword"),
				["inline"] = true
			},
			{
				["name"] = "Devil Fruit",
				["value"] = GetFightingStyle("Blox Fruit"),
				["inline"] = true
			},
			{
				["name"] = "Gun",
				["value"] = GetFightingStyle("Gun"),
				["inline"] = true
			},
			{
				["name"] = "Accessory",
				["value"] = GetFightingStyle("Wear"),
				["inline"] = true
			},
			{
				["name"] = "Race",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Race").Value),
				["inline"] = true
			},
			{
				["name"] = "Awakened",
				["value"] = tostring(GetAwaken()),
				["inline"] = true
			},
			{
				["name"] = ":signal_strength: Status",
				["value"] = "```sml\n"..tostring("Melee : "..game:GetService("Players").LocalPlayer.Data.Stats.Melee:WaitForChild("Level").Value .. 
					"\nDefense : "..game:GetService("Players").LocalPlayer.Data.Stats.Defense:WaitForChild("Level").Value .. 
					"\nSword : "..game:GetService("Players").LocalPlayer.Data.Stats.Sword:WaitForChild("Level").Value.. 
					"\nGun : "..game:GetService("Players").LocalPlayer.Data.Stats.Gun:WaitForChild("Level").Value .. 
					"\nDevil Fruit : "..game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"]:WaitForChild("Level").Value).."```",
				["inline"] = true
			},
			{
				["name"] = "Race :yellow_circle:",
				["value"] = "```sml\n"..tostring(GetWeapon("Rare")).."```",
				["inline"] = true
			},
			{
				["name"] = "Legendary :orange_circle: ",
				["value"] = "```sml\n"..tostring(GetWeapon("Legendary")).."```",
				["inline"] = true
			},
			{
				["name"] = "Mythical :red_circle:",
				["value"] = "```sml\n"..tostring(GetWeapon("Mythical")).."```",
				["inline"] = true
			},
			{
				["name"] = ":apple: Fruit In Inventory",
				["value"] = "```sml\n"..tostring(GetFruitInU()).."```",
				["inline"] = true
			},
			{
				["name"] = ":punch: All Melee",
				["value"] = "```sml\n"..tostring(GetAllMelee()).."```",
				["inline"] = true
			},
			{
				["name"] = "ㅤ",
				["value"] = tostring("ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ"),
				["inline"] = false
			}},
		["footer"] = {
			["text"] = "Made By Day Hub".."\nTime".." : "..os.date("%c").." ("..os.date("%X")..")",
			["icon_url"] = "https://cdn.discordapp.com/icons/1031918709608022036/efafaf2e6ede6d29df489dacf157dcb4.webp?size=240"
		},
	}}

	local Message
if _G.SendWebHookPing then
		Message = {
			['username'] = "Day Hub | Webhook",
			["avatar_url"] = "https://cdn.discordapp.com/icons/1031918709608022036/efafaf2e6ede6d29df489dacf157dcb4.webp?size=240",
			["content"] = "@everyone",
			["embeds"] = Embeds,
		}
	else
		Message = {
			['username'] = "Day Hub | Webhook",
			["avatar_url"] = "https://cdn.discordapp.com/icons/1031918709608022036/efafaf2e6ede6d29df489dacf157dcb4.webp?size=240",
			["embeds"] = Embeds,
		}
	end
	local DataCallBack = AllRequest({
		Url = WebHookUrl,
		Method = 'POST',
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = game:GetService("HttpService"):JSONEncode(Message)
	})
	return DataCallBack
end
local MiscTab = Tabs.Misc:AddLeftGroupbox('[ Web Hook ]')
MiscTab:AddInput('WebHook', {
    Default = 'Only WebHook!',
    Numeric = false,
    Finished = false,
    Text = 'WebHook',
    Placeholder = 'Only WebHook!',
}):OnChanged(function(x)
   Webhooklink = x
end)
MiscTab:AddButton('Sent Webhook', function()
    WebHookLog:WebHookKaiTanSend(Webhooklink)
end)
function LogSheetBest(SheetBestUrl)
	function GetFightingStyle(Style)
		ReturnText = ""
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetAllMelee()
		BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
		if BuyDragonTalon then
			if BuyDragonTalon == 1 then
				TalComplete = true
			end
		end
		BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
		if BuySuperhuman then
			if BuySuperhuman == 1 then
				SupComplete = true
			end
		end
		BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
		if BuySharkmanKarate then
			if BuySharkmanKarate == 1 then
				SharkComplete = true
			end
		end
		BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true))
		if BuyDeathStep then
			if BuyDeathStep == 1 then
				DeathComplete = true
			end
		end
		BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
		if BuyElectricClaw then
			if BuyElectricClaw == 1 then
				EClawComplete = true
			end
		end
		BuyGod = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
		if BuyGod then
			if BuyGod == 1 then
				GodComplete = true
			end
		end
		ReturnText = {}
		if SupComplete == true then
			table.insert(ReturnText,"SuperHuman")
		end
		if EClawComplete == true then
			table.insert(ReturnText,"Electric Claw")
		end
		if TalComplete == true then
			table.insert(ReturnText,"Dragon Talon")
		end
		if SharkComplete == true then
			table.insert(ReturnText,"Sharkman Karate")
		end
		if DeathComplete == true then
			table.insert(ReturnText,"Death Step")
		end
		if GodComplete == true then
			table.insert(ReturnText,"God Human")
		end

		if #ReturnText ~= 0 then
			return table.concat(ReturnText,",")
		else
			return "Not Have"
		end
	end

	function GetAwaken()
		ReturnText = ""
		Awakened_Z = "❌"
		Awakened_X = "❌"
		Awakened_C = "❌"
		Awakened_V = "❌"
		Awakened_F = "❌"
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == "Blox Fruit" then
					if v:FindFirstChild("AwakenedMoves") then
						if v.AwakenedMoves:FindFirstChild("Z") then
							Awakened_Z = "Z"
						end
						if v.AwakenedMoves:FindFirstChild("X") then
							Awakened_X = "X"
						end
						if v.AwakenedMoves:FindFirstChild("C") then
							Awakened_C = "C"
						end
						if v.AwakenedMoves:FindFirstChild("V") then
							Awakened_V = "V"
						end
						if v.AwakenedMoves:FindFirstChild("F") then
							Awakened_F = "F"
						end
						ReturnText = Awakened_Z..
							" : "..Awakened_X..
							" : "..Awakened_C..
							" : "..Awakened_V..
							" : "..Awakened_F
					else
						ReturnText = "This Fruit Can't Awakened"
					end
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == "Blox Fruit" then
					if v:FindFirstChild("AwakenedMoves") then
						if v.AwakenedMoves:FindFirstChild("Z") then
							Awakened_Z = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("X") then
							Awakened_X = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("C") then
							Awakened_C = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("V") then
							Awakened_V = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("F") then
							Awakened_F = ":white_check_mark:"
						end
						ReturnText = ":regional_indicator_z:"..Awakened_Z..
							" : "..":regional_indicator_x:"..Awakened_X..
							" : "..":regional_indicator_c:"..Awakened_C..
							" : "..":regional_indicator_v:"..Awakened_V..
							" : "..":regional_indicator_f:"..Awakened_F
					else
						ReturnText = "This Fruit Can't Awakened"
					end
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetWeapon()
		local ReturnText = ""
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do
			if type(v) == "table" then
				if v.Name then
					ReturnText = ReturnText .. v.Name .. " "
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetFruitInU()
		local ReturnText = ""
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
			if type(v) == "table" then
				if v ~= nil then
					ReturnText = ReturnText .. v.Name .. " "
				end
			end
		end

		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetWeaponMastery(Style)
		ReturnText = ""
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v:FindFirstChild("Level").Value
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v:FindFirstChild("Level").Value
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function Abbreviate(x)
		local abbreviations = {
			"K", -- 4 digits
			"M", -- 7 digits
			"B", -- 10 digits
			"T", -- 13 digits
			"QD", -- 16 digits
			"QT", -- 19 digits
			"SXT", -- 22 digits
			"SEPT", -- 25 digits
			"OCT", -- 28 digits
			"NON", -- 31 digits
			"DEC", -- 34 digits
			"UDEC", -- 37 digits
			"DDEC", -- 40 digits
		}
		if x < 1000 then 
			return tostring(x)
		end

		local digits = math.floor(math.log10(x)) + 1
		local index = math.min(#abbreviations, math.floor((digits - 1) / 3))
		local front = x / math.pow(10, index * 3)

		return string.format("%i%s+", front, abbreviations[index])
	end

	local Message
	Message = {
		["UserName"] = tostring(game.Players.LocalPlayer.Name),
		["Level"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Level").Value),
		["Weapon inventory"] = tostring(GetWeapon()),
		["Fruit inventory"] = tostring(GetFruitInU()),
		["Melee"] = tostring(GetAllMelee()),
		["Fruit"] = tostring(GetFightingStyle("Blox Fruit")),
		["Fruit Mastery"] = tostring(GetWeaponMastery("Blox Fruit")),
		["Fruit Awake"] = tostring(GetAwaken()),
		["Beli"] = tostring(Abbreviate(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Beli").Value)),
		["Fragment"] = tostring(Abbreviate(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Fragments").Value)),
		["Race"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Race").Value)
	}

	local DataCallBack = AllRequest({
		Url = SheetBestUrl,
		Method = 'POST',
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = game:GetService("HtTP2Service"):JSONEncode(Message)
	})
	return DataCallBack
end
local MiscTab = Tabs.Misc:AddRightGroupbox('[ Sheet Best ]')
MiscTab:AddInput('Baselink', {
    Default = 'Only SheetBest Link!',
    Numeric = false,
    Finished = false,
    Text = 'SheetBest Link!',
    Placeholder = 'Only SheetBest Link!',
})
Options.Baselink:OnChanged(function(x)
	Baselink = x
end)
MiscTab:AddButton('Send SheetBest', function()
	LogSheetBest(Baselink)
end)
local MiscTab = Tabs.Misc:AddLeftGroupbox('Capcut')
MiscTab:AddButton("Kaitun Picture",function()
    __Config = {
      ['Inventory'] = {
         ['Fillter'] = {
            ['Mythical'] = true,-- ถ้าเป็น false จะไม่เช็คของในกล่อง ระดับ Mythical
            ['Legendary'] = true,-- ถ้าเป็น false จะไม่เช็คของในกล่อง ระดับ Legendary
            ['Rare'] = false,-- ถ้าเป็น false จะไม่เช็คของในกล่อง ระดับ Rare
            ['Uncommon'] = false, -- ถ้าเป็น false จะไม่เช็คของในกล่อง ระดับ Uncommon
         },
         ['Enabled'] = true, -- ถ้าเป็น false จะไม่เช็คของในกล่อง
      },
      ['Malee'] = {
         ['Enabled'] = true, -- ถ้าเป็น false จะไม่เช็คหมัด
      },
      ['AwakeningToggler'] = {
         ['Enabled'] = true -- ถ้าเป็น false จะไม่เช็คlกิลผลตื่น
      },
      ['Money'] = {
         ['Enabled'] = true -- ถ้าเป็น false จะไม่เช็คเงิน แและ เงินม่วง
      },
      ['Fruit'] = {
         ['Enabled'] = true, -- ถ้าเป็น false จะไม่เช็คผล
         ['Fillter'] = { 
            ['Cost'] = 1
         },
        ['Permanent'] = true
      },
  ['RTX'] = {
      ['Enabled'] = false, -- ถ้าเป็น false ไม่มี RTX
      ['Mode'] = '' -- Autumn | Summer | 
  }
   }
if __Config['RTX']['Mode']['Enabled'] then 
      local a = game.Lighting
	a.Ambient = Color3.fromRGB(33, 33, 33)
	a.Brightness = 6.67
	a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
	a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
	a.EnvironmentDiffuseScale = 0.105
	a.EnvironmentSpecularScale = 0.522
	a.GlobalShadows = true
	a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
	a.ShadowSoftness = 0.04
	a.GeographicLatitude = -15.525
	a.ExposureCompensation = 0.75
	local b = Instance.new("BloomEffect", a)
	b.Enabled = true
	b.Intensity = 0.04
	b.Size = 1900
	b.Threshold = 0.915
	local c = Instance.new("ColorCorrectionEffect", a)
	c.Brightness = 0.176
	c.Contrast = 0.39
	c.Enabled = true
	c.Saturation = 0.2
	c.TintColor = Color3.fromRGB(217, 145, 57)
	if __Config['RTX']['Mode']['Enabled'] == "Summer" then
		c.TintColor = Color3.fromRGB(255, 220, 148)
	elseif __Config['RTX']['Mode']['Enabled'] == "Autumn" then
		c.TintColor = Color3.fromRGB(217, 145, 57)
	elseif __Config['RTX']['Mode']['Enabled'] == 'Cold' then 
		c.TintColor = Color3.fromRGB(0, 215, 255)
	else 
		c.TintColor = Color3.fromRGB(217, 145, 57)
	end
	local d = Instance.new("DepthOfFieldEffect", a)
	d.Enabled = true
	d.FarIntensity = 0.077
	d.FocusDistance = 21.54
	d.InFocusRadius = 20.77
	d.NearIntensity = 0.277
	local e = Instance.new("ColorCorrectionEffect", a)
	e.Brightness = 0
	e.Contrast = -0.07
	e.Saturation = 0
	e.Enabled = true
	e.TintColor = Color3.fromRGB(255, 247, 239)
	local e2 = Instance.new("ColorCorrectionEffect", a)
	e2.Brightness = 0.2
	e2.Contrast = 0.45
	e2.Saturation = -0.1
	e2.Enabled = true
	e2.TintColor = Color3.fromRGB(255, 255, 255)
	local s = Instance.new("SunRaysEffect", a)
	s.Enabled = true
	s.Intensity = 0.01
	s.Spread = 0.146
end
local function formatNumber(number)
   local i, k, j = tostring(number):match("(%-?%d?)(%d*)(%.?.*)")
   return i..k:reverse():gsub("(%d%d%d)", "%1,"):reverse()..j
end
local ItemCheckerOld = game.CoreGui:FindFirstChild('ItemChecker')
if ItemCheckerOld then
   ItemCheckerOld:Destroy()
end
local args = {
   [1] = "BuyDragonTalon",
   [2] = true
}
BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
if BuyDragonTalon then
   if BuyDragonTalon == 1 then
      HasTalon = true
   end
end
local args = {
   [1] = "BuySuperhuman",
   [2] = true
}
BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
if BuySuperhuman then
   if BuySuperhuman == 1 then
      HasSuperhuman = true
   end
end
local args = {
   [1] = "BuySharkmanKarate",
   [2] = true
}
BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
if BuySharkmanKarate then
   if BuySharkmanKarate == 1 then
      HasKarate = true
   end
end
local args = {
   [1] = "BuyDeathStep",
   [2] = true
}
BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
if BuyDeathStep then
   if BuyDeathStep == 1 then
      HasDeathStep = true
   end
end
local args = {
   [1] = "BuyElectricClaw",
   [2] = true
}
BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
if BuyElectricClaw then
   if BuyElectricClaw == 1 then
      HasElectricClaw = true
   end
end
local args = {
   [1] = "BuyGodhuman",
   [2] = true
}
BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
if BuyGodhuman then
   if BuyGodhuman == 1 then
      HasGodhuman = true
   end
end
local data = {}
if HasElectricClaw then
   table.insert(data, {
      ['Name'] = 'ElectricClaw',
      ['AssetID'] = '6866994470'
   })
end
if HasTalon then
   table.insert(data, {
      ['Name'] = 'Dragon Talon',
      ['AssetID'] = '7831677967'
   })
end
if HasSuperhuman then
   table.insert(data, {
      ['Name'] = 'Superhuman',
      ['AssetID'] = '4831781711'
   })
end
if HasKarate then
   table.insert(data, {
      ['Name'] = 'Sharkman Karate',
      ['AssetID'] = '6525157144'
   })
end
if HasDeathStep then
   table.insert(data, {
      ['Name'] = 'Death Step',
      ['AssetID'] = '6085350468'
   })
end
if HasGodhuman then
   table.insert(data, {
      ['Name'] = 'Godhuman',
      ['AssetID'] = '11763197600'
   })
end
local ItemChecker = Instance.new("ScreenGui")
local MaleeFrame = Instance.new("Frame")
local InventoryFrame = Instance.new("Frame")
local PostionX = 0


ItemChecker.Name = "ItemChecker"
ItemChecker.Parent = game.CoreGui
ItemChecker.Enabled = true
ItemChecker.ZIndexBehavior = Enum.ZIndexBehavior.Sibling



InventoryFrame.Name = "InventoryFrame"
InventoryFrame.Parent = ItemChecker
InventoryFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InventoryFrame.BackgroundTransparency = 1.000
InventoryFrame.BorderSizePixel = 0
InventoryFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)



MaleeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MaleeFrame.BackgroundTransparency = 1.000
MaleeFrame.BorderSizePixel = 0
MaleeFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)

MaleeFrame.Name = "MaleeFrame"
MaleeFrame.Parent = ItemChecker
MaleeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MaleeFrame.BackgroundTransparency = 1.000
MaleeFrame.BorderSizePixel = 0
MaleeFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)



if __Config['Malee']['Enabled'] then
   for i, v in pairs(data) do
      local Assets = Instance.new("ImageLabel")

      Assets.Name = v.Name
      Assets.Parent = MaleeFrame
      Assets.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Assets.BackgroundTransparency = 1
      Assets.BorderSizePixel = 0
      Assets.Size = UDim2.new(1.1, 0, 1.1, 0)
      Assets.Image = 'rbxassetid://' .. v.AssetID
      Assets.Position =  UDim2.new(PostionX, 0, 0, 0)
      PostionX =  PostionX + 1.13
   end
end
if __Config['Inventory']['Enabled'] then
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Title.Visible = false
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Visible = false
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Info.Visible = false
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.BackgroundTransparency = 1
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
   wait(.5)
   local PostionXInv = 0
   local ItemCount = 0
   local PostionYInv = 1.4
   for c, j in pairs(__Config['Inventory']['Fillter']) do
      for i, v in pairs( game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Stored.ScrollingFrame.Frame:GetChildren()) do
         if v:IsA('ImageButton')  then
            if  v.Name == 'Template'   then
            else
               if string.lower(v.Title.TextLabel.Text) == string.lower(c) and j then
                  item = v:Clone()
                  item.Parent = InventoryFrame
                  item.Position = UDim2.new(PostionXInv, 0, PostionYInv, 0)
                  item.Size = UDim2.new(0.9, 0, 0.9, 0)
                  PostionXInv = PostionXInv + 0.92
                  ItemCount = ItemCount + 1
                  if ItemCount >= 11 then
                     PostionYInv = PostionYInv + 0.9
                     ItemCount = 0
                     PostionXInv = 0
                  end
               end
            end
         end
      end
   end
    for c, j in pairs(__Config['Inventory']['Fillter']) do
      for i, v in pairs( game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Current.ScrollingFrame.Frame:GetChildren()) do
         if v:IsA('ImageButton')  then
            if  v.Name == 'Template'   then
            else
               if string.lower(v.Title.TextLabel.Text) == string.lower(c) and j then
                  item = v:Clone()
                  item.Parent = InventoryFrame
                  item.Position = UDim2.new(PostionXInv, 0, PostionYInv, 0)
                  item.Size = UDim2.new(0.9, 0, 0.9, 0)
                  PostionXInv = PostionXInv + 0.92
                  ItemCount = ItemCount + 1
                  if ItemCount >= 11 then
                     PostionYInv = PostionYInv + 0.9
                     ItemCount = 0
                     PostionXInv = 0
                  end
               end
            end
         end
      end
   end
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = false
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Title.Visible = true
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Visible = true
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Info.Visible = true
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.BackgroundTransparency = 0
end

if __Config['AwakeningToggler']['Enabled'] then
   game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
   for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler:GetChildren()) do
      if  v:IsA('Frame') or v:IsA('TextLabel') then
         v.Visible= false
      end
   end
   wait(.5)
   AwakeningToggler = game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler:Clone()
   AwakeningToggler.Parent = ItemChecker
   AwakeningToggler.Position = UDim2.new(0.8, 0, 0.11, 0)
   AwakeningToggler.Size =  UDim2.new(0.379635453, 0, 0.275648952, 0)
   game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = false
   for i, v in pairs(AwakeningToggler:GetChildren()) do
      if  v:IsA('Frame') or v:IsA('TextLabel') then
         v.Visible= true
      end
   end
   for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler:GetChildren()) do
      if  v:IsA('Frame') or v:IsA('TextLabel') then
         v.Visible= true
      end
   end
end

if __Config['Money']['Enabled'] then

   local Beil = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli:Clone()
   Beil.Parent = ItemChecker
   Beil.Position = UDim2.new(0.43683219, 0, 0.823238552, 0)
   Beil.Size = UDim2.new(0.125707105, 0, 0.0618046969, 0)
   local Fragments = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
   Fragments.Parent = ItemChecker
   Fragments.Position = UDim2.new(0.43683219, 0, 0.783238552, 0)
   Fragments.Size = UDim2.new(0.125707105, 0, 0.0618046969, 0)
   Fragments.Text = 'ƒ' .. formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
end
local FruitFrame = Instance.new("Frame")



FruitFrame.Name = "FruitFrame"
FruitFrame.Parent = ItemChecker
FruitFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FruitFrame.BackgroundTransparency = 1.000
FruitFrame.BorderSizePixel = 0
FruitFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)

local TableFruitL = {}
if __Config['Fruit']['Enabled'] then

   game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Title.Visible = false
   game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Container.Visible = false
   game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Info.Visible = false
   game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.BackgroundTransparency = 1
   game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
   wait(.5)
   local PostionXInvCuurect = 2.93683219
   local ItemCountCuurect = 0
   local PostionYInvCuurect = 4.683238552
   local args = {
            [1] = "getInventoryFruits"
        }
        
        remote = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        for i, v in pairs(remote) do 
            if v['Price'] >= __Config['Fruit']['Fillter']['Cost'] then 
                   table.insert(TableFruitL, {
                       ['Name'] = v['Name']
                   })
            end
        end
      for i, v in pairs(TableFruitL) do
        
                v = game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Container.Stored.ScrollingFrame.Frame:FindFirstChild(v['Name'])
               item = v:Clone()
               item.Parent = FruitFrame
               item.Position = UDim2.new(PostionXInvCuurect, 0, PostionYInvCuurect, 0)
               item.Size = UDim2.new(0.9, 0, 0.9, 0)
               PostionXInvCuurect = PostionXInvCuurect + 0.92
               ItemCountCuurect = ItemCountCuurect + 1
               if ItemCountCuurect >= 11 then
                  PostionYInvCuurect = PostionYInvCuurect + 0.9
                  ItemCountCuurect = 0
                  PostionXInvCuurect = 2.93683219

               
            
         end
      end
      
      

    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = false
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Title.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Info.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.BackgroundTransparency = 0
end
local FruitPermanentFrame = Instance.new("Frame")
FruitPermanentFrame.Parent = ItemChecker
FruitPermanentFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FruitPermanentFrame.BackgroundTransparency = 1.000
FruitPermanentFrame.BorderSizePixel = 0
FruitPermanentFrame.Size = UDim2.new(0, 100, 0, 100)
local TableFruitP = {}
local PostionYInvFruit = 1.97000003
if __Config['Fruit']['Permanent'] then 
    local args = {
        [1] = "GetFruits",
        [2] = false
    }
    remote = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    for i, v in pairs(remote) do
            if v['HasPermanent'] then 
                    table.insert(TableFruitP, {
                        ['Name'] = v['Name']
                    })
            end
    end
     game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.BackgroundTransparency = 1 
     game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Visible = false
     game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
     repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container:FindFirstChild("Bomb-Bomb")
     if #TableFruitP >= 4 then 
        PostionYSalceF = 0.5     
     end
    
     wait(.5)
     for i, v in pairs(TableFruitP) do 
         Assets = game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container:FindFirstChild(v['Name']):Clone()
         Assets.Parent = FruitPermanentFrame
         Assets.Position = UDim2.new(11.3400002, 0, PostionYInvFruit, 0)
         Assets.Size = UDim2.new(4.57000017, 0, PostionYSalceF, 0)
         PostionYInvFruit = PostionYInvFruit + 1
     end
    game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = false
    game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.BackgroundTransparency = 1 
     game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Visible = true
end
end)
MiscTab:AddButton("Remove Kaitun Picture",function()
    __Config = {
      ['Inventory'] = {
         ['Fillter'] = {
            ['Mythical'] = false,-- ถ้าเป็น false จะไม่เช็คของในกล่อง ระดับ Mythical
            ['Legendary'] = false,-- ถ้าเป็น false จะไม่เช็คของในกล่อง ระดับ Legendary
            ['Rare'] = false,-- ถ้าเป็น false จะไม่เช็คของในกล่อง ระดับ Rare
            ['Uncommon'] = false, -- ถ้าเป็น false จะไม่เช็คของในกล่อง ระดับ Uncommon
         },
         ['Enabled'] = false, -- ถ้าเป็น false จะไม่เช็คของในกล่อง
      },
      ['Malee'] = {
         ['Enabled'] = false, -- ถ้าเป็น false จะไม่เช็คหมัด
      },
      ['AwakeningToggler'] = {
         ['Enabled'] = false -- ถ้าเป็น false จะไม่เช็คสกิลผลตื่น
      },
      ['Money'] = {
         ['Enabled'] = false -- ถ้าเป็น false จะไม่เช็คเงิน แและ เงินม่วง
      },
      ['Fruit'] = {
         ['Enabled'] = false, -- ถ้าเป็น false จะไม่เช็คผล
         ['Fillter'] = { 
            ['Cost'] = 1
         },
        ['Permanent'] = false
      },
  ['RTX'] = {
      ['Enabled'] = false, -- ถ้าเป็น false ไม่มี RTX
      ['Mode'] = '' -- Autumn | Summer | 
  }
   }
   
if __Config['RTX']['Mode']['Enabled'] then 
      local a = game.Lighting
	a.Ambient = Color3.fromRGB(33, 33, 33)
	a.Brightness = 6.67
	a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
	a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
	a.EnvironmentDiffuseScale = 0.105
	a.EnvironmentSpecularScale = 0.522
	a.GlobalShadows = true
	a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
	a.ShadowSoftness = 0.04
	a.GeographicLatitude = -15.525
	a.ExposureCompensation = 0.75
	local b = Instance.new("BloomEffect", a)
	b.Enabled = true
	b.Intensity = 0.04
	b.Size = 1900
	b.Threshold = 0.915
	local c = Instance.new("ColorCorrectionEffect", a)
	c.Brightness = 0.176
	c.Contrast = 0.39
	c.Enabled = true
	c.Saturation = 0.2
	c.TintColor = Color3.fromRGB(217, 145, 57)
	if __Config['RTX']['Mode']['Enabled'] == "Summer" then
		c.TintColor = Color3.fromRGB(255, 220, 148)
	elseif __Config['RTX']['Mode']['Enabled'] == "Autumn" then
		c.TintColor = Color3.fromRGB(217, 145, 57)
	elseif __Config['RTX']['Mode']['Enabled'] == 'Cold' then 
		c.TintColor = Color3.fromRGB(0, 215, 255)
	else 
		c.TintColor = Color3.fromRGB(217, 145, 57)
	end
	local d = Instance.new("DepthOfFieldEffect", a)
	d.Enabled = true
	d.FarIntensity = 0.077
	d.FocusDistance = 21.54
	d.InFocusRadius = 20.77
	d.NearIntensity = 0.277
	local e = Instance.new("ColorCorrectionEffect", a)
	e.Brightness = 0
	e.Contrast = -0.07
	e.Saturation = 0
	e.Enabled = true
	e.TintColor = Color3.fromRGB(255, 247, 239)
	local e2 = Instance.new("ColorCorrectionEffect", a)
	e2.Brightness = 0.2
	e2.Contrast = 0.45
	e2.Saturation = -0.1
	e2.Enabled = true
	e2.TintColor = Color3.fromRGB(255, 255, 255)
	local s = Instance.new("SunRaysEffect", a)
	s.Enabled = true
	s.Intensity = 0.01
	s.Spread = 0.146
end
local function formatNumber(number)
   local i, k, j = tostring(number):match("(%-?%d?)(%d*)(%.?.*)")
   return i..k:reverse():gsub("(%d%d%d)", "%1,"):reverse()..j
end
local ItemCheckerOld = game.CoreGui:FindFirstChild('ItemChecker')
if ItemCheckerOld then
   ItemCheckerOld:Destroy()
end
local args = {
   [1] = "BuyDragonTalon",
   [2] = true
}
BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
if BuyDragonTalon then
   if BuyDragonTalon == 1 then
      HasTalon = true
   end
end
local args = {
   [1] = "BuySuperhuman",
   [2] = true
}
BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
if BuySuperhuman then
   if BuySuperhuman == 1 then
      HasSuperhuman = true
   end
end
local args = {
   [1] = "BuySharkmanKarate",
   [2] = true
}
BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
if BuySharkmanKarate then
   if BuySharkmanKarate == 1 then
      HasKarate = true
   end
end
local args = {
   [1] = "BuyDeathStep",
   [2] = true
}
BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
if BuyDeathStep then
   if BuyDeathStep == 1 then
      HasDeathStep = true
   end
end
local args = {
   [1] = "BuyElectricClaw",
   [2] = true
}
BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
if BuyElectricClaw then
   if BuyElectricClaw == 1 then
      HasElectricClaw = true
   end
end
local data = {}
if HasElectricClaw then
   table.insert(data, {
      ['Name'] = 'ElectricClaw',
      ['AssetID'] = '6866994470'
   })
end
if HasTalon then
   table.insert(data, {
      ['Name'] = 'Dragon Talon',
      ['AssetID'] = '7831677967'
   })
end
if HasSuperhuman then
   table.insert(data, {
      ['Name'] = 'Superhuman',
      ['AssetID'] = '4831781711'
   })
end
if HasKarate then
   table.insert(data, {
      ['Name'] = 'Sharkman Karate',
      ['AssetID'] = '6525157144'
   })
end
if HasDeathStep then
   table.insert(data, {
      ['Name'] = 'Death Step',
      ['AssetID'] = '6085350468'
   })
end
local ItemChecker = Instance.new("ScreenGui")
local MaleeFrame = Instance.new("Frame")
local InventoryFrame = Instance.new("Frame")
local PostionX = 0


ItemChecker.Name = "ItemChecker"
ItemChecker.Parent = game.CoreGui
ItemChecker.Enabled = true
ItemChecker.ZIndexBehavior = Enum.ZIndexBehavior.Sibling



InventoryFrame.Name = "InventoryFrame"
InventoryFrame.Parent = ItemChecker
InventoryFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InventoryFrame.BackgroundTransparency = 1.000
InventoryFrame.BorderSizePixel = 0
InventoryFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)



MaleeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MaleeFrame.BackgroundTransparency = 1.000
MaleeFrame.BorderSizePixel = 0
MaleeFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)

MaleeFrame.Name = "MaleeFrame"
MaleeFrame.Parent = ItemChecker
MaleeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MaleeFrame.BackgroundTransparency = 1.000
MaleeFrame.BorderSizePixel = 0
MaleeFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)



if __Config['Malee']['Enabled'] then
   for i, v in pairs(data) do
      local Assets = Instance.new("ImageLabel")

      Assets.Name = v.Name
      Assets.Parent = MaleeFrame
      Assets.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Assets.BackgroundTransparency = 1
      Assets.BorderSizePixel = 0
      Assets.Size = UDim2.new(1.1, 0, 1.1, 0)
      Assets.Image = 'rbxassetid://' .. v.AssetID
      Assets.Position =  UDim2.new(PostionX, 0, 0, 0)
      PostionX =  PostionX + 1.13
   end
end
if __Config['Inventory']['Enabled'] then
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Title.Visible = false
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Visible = false
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Info.Visible = false
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.BackgroundTransparency = 1
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
   wait(.5)
   local PostionXInv = 0
   local ItemCount = 0
   local PostionYInv = 1.4
   for c, j in pairs(__Config['Inventory']['Fillter']) do
      for i, v in pairs( game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Stored.ScrollingFrame.Frame:GetChildren()) do
         if v:IsA('ImageButton')  then
            if  v.Name == 'Template'   then
            else
               if string.lower(v.Title.TextLabel.Text) == string.lower(c) and j then
                  item = v:Clone()
                  item.Parent = InventoryFrame
                  item.Position = UDim2.new(PostionXInv, 0, PostionYInv, 0)
                  item.Size = UDim2.new(0.9, 0, 0.9, 0)
                  PostionXInv = PostionXInv + 0.92
                  ItemCount = ItemCount + 1
                  if ItemCount >= 11 then
                     PostionYInv = PostionYInv + 0.9
                     ItemCount = 0
                     PostionXInv = 0
                  end
               end
            end
         end
      end
   end
    for c, j in pairs(__Config['Inventory']['Fillter']) do
      for i, v in pairs( game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Current.ScrollingFrame.Frame:GetChildren()) do
         if v:IsA('ImageButton')  then
            if  v.Name == 'Template'   then
            else
               if string.lower(v.Title.TextLabel.Text) == string.lower(c) and j then
                  item = v:Clone()
                  item.Parent = InventoryFrame
                  item.Position = UDim2.new(PostionXInv, 0, PostionYInv, 0)
                  item.Size = UDim2.new(0.9, 0, 0.9, 0)
                  PostionXInv = PostionXInv + 0.92
                  ItemCount = ItemCount + 1
                  if ItemCount >= 11 then
                     PostionYInv = PostionYInv + 0.9
                     ItemCount = 0
                     PostionXInv = 0
                  end
               end
            end
         end
      end
   end
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = false
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Title.Visible = true
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Visible = true
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Info.Visible = true
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.BackgroundTransparency = 0
end

if __Config['AwakeningToggler']['Enabled'] then
   game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
   for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler:GetChildren()) do
      if  v:IsA('Frame') or v:IsA('TextLabel') then
         v.Visible= false
      end
   end
   wait(.5)
   AwakeningToggler = game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler:Clone()
   AwakeningToggler.Parent = ItemChecker
   AwakeningToggler.Position = UDim2.new(0.8, 0, 0.11, 0)
   AwakeningToggler.Size =  UDim2.new(0.379635453, 0, 0.275648952, 0)
   game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = false
   for i, v in pairs(AwakeningToggler:GetChildren()) do
      if  v:IsA('Frame') or v:IsA('TextLabel') then
         v.Visible= true
      end
   end
   for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler:GetChildren()) do
      if  v:IsA('Frame') or v:IsA('TextLabel') then
         v.Visible= true
      end
   end
end

if __Config['Money']['Enabled'] then

   local Beil = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli:Clone()
   Beil.Parent = ItemChecker
   Beil.Position = UDim2.new(0.43683219, 0, 0.823238552, 0)
   Beil.Size = UDim2.new(0.125707105, 0, 0.0618046969, 0)
   local Fragments = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
   Fragments.Parent = ItemChecker
   Fragments.Position = UDim2.new(0.43683219, 0, 0.783238552, 0)
   Fragments.Size = UDim2.new(0.125707105, 0, 0.0618046969, 0)
   Fragments.Text = 'ƒ' .. formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
end
local FruitFrame = Instance.new("Frame")



FruitFrame.Name = "FruitFrame"
FruitFrame.Parent = ItemChecker
FruitFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FruitFrame.BackgroundTransparency = 1.000
FruitFrame.BorderSizePixel = 0
FruitFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)

local TableFruitL = {}
if __Config['Fruit']['Enabled'] then

   game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Title.Visible = false
   game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Container.Visible = false
   game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Info.Visible = false
   game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.BackgroundTransparency = 1
   game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
   wait(.5)
   local PostionXInvCuurect = 2.93683219
   local ItemCountCuurect = 0
   local PostionYInvCuurect = 4.683238552
   local args = {
            [1] = "getInventoryFruits"
        }
        
        remote = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        for i, v in pairs(remote) do 
            if v['Price'] >= __Config['Fruit']['Fillter']['Cost'] then 
                   table.insert(TableFruitL, {
                       ['Name'] = v['Name']
                   })
            end
        end
      for i, v in pairs(TableFruitL) do
        
                v = game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Container.Stored.ScrollingFrame.Frame:FindFirstChild(v['Name'])
               item = v:Clone()
               item.Parent = FruitFrame
               item.Position = UDim2.new(PostionXInvCuurect, 0, PostionYInvCuurect, 0)
               item.Size = UDim2.new(0.9, 0, 0.9, 0)
               PostionXInvCuurect = PostionXInvCuurect + 0.92
               ItemCountCuurect = ItemCountCuurect + 1
               if ItemCountCuurect >= 11 then
                  PostionYInvCuurect = PostionYInvCuurect + 0.9
                  ItemCountCuurect = 0
                  PostionXInvCuurect = 2.93683219

               
            
         end
      end
      
      

    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = false
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Title.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Info.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.BackgroundTransparency = 0
end
local FruitPermanentFrame = Instance.new("Frame")
FruitPermanentFrame.Parent = ItemChecker
FruitPermanentFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FruitPermanentFrame.BackgroundTransparency = 1.000
FruitPermanentFrame.BorderSizePixel = 0
FruitPermanentFrame.Size = UDim2.new(0, 100, 0, 100)
local TableFruitP = {}
local PostionYInvFruit = 1.97000003
if __Config['Fruit']['Permanent'] then 
    local args = {
        [1] = "GetFruits",
        [2] = false
    }
    remote = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    for i, v in pairs(remote) do
            if v['HasPermanent'] then 
                    table.insert(TableFruitP, {
                        ['Name'] = v['Name']
                    })
            end
    end
     game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.BackgroundTransparency = 1 
     game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Visible = false
     game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
     repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container:FindFirstChild("Bomb-Bomb")
     if #TableFruitP >= 4 then 
        PostionYSalceF = 0.5     
     end
    
     wait(.5)
     for i, v in pairs(TableFruitP) do 
         Assets = game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container:FindFirstChild(v['Name']):Clone()
         Assets.Parent = FruitPermanentFrame
         Assets.Position = UDim2.new(11.3400002, 0, PostionYInvFruit, 0)
         Assets.Size = UDim2.new(4.57000017, 0, PostionYSalceF, 0)
         PostionYInvFruit = PostionYInvFruit + 1
     end
    game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = false
    game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.BackgroundTransparency = 1 
     game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Visible = true
end
end)
local MiscTab = Tabs.Misc:AddRightGroupbox('[ Job ID ]')
MiscTab:AddButton("Copy You Job Id",function()
    setclipboard(tostring(game.JobId))
end)
_G.Job = nil
MiscTab:AddInput('Job', {
    Default = 'Only Job ID!',
    Numeric = false,
    Finished = false,
    Text = 'Job ID',
    Placeholder = 'Only Job ID!',
})
Options.Job:OnChanged(function(vu)
	_G.Job = vu
end)
MiscTab:AddButton("Join On The Use Server Job ID",function()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer)
end)
Library:SetWatermarkVisibility(true)
function setwatermarktime()
    local g = math.floor(workspace.DistributedGameTime+0.27322)
    local h = math.floor(g/(60^2))%24
    local m = math.floor(g/(60^1))%60
    local s = math.floor(g/(60^0))%60
    Library:SetWatermark("Day Hub Next Generation | Hour ("..h..") : Minute ("..m..") : Second ("..s..") ")
 end
task.spawn(function()
    while task.wait(0) do
        pcall(function()
          setwatermarktime()
        end)
    end
 end)
local OtherGroupbox = Tabs["UI Settings"]:AddRightGroupbox('Other')
Library:OnUnload(function()
    Library.Unloaded = true
end)
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
OtherGroupbox:AddToggle('RainbowModeXD', {
	Text = 'Rainbow Theme',
	Default = true,
	Tooltip = 'Enable Rainbow Mode',
})
_G.RainbowUi = false
Toggles.RainbowModeXD:OnChanged(function()
_G.RainbowUi = Toggles.RainbowModeXD.Value
task.spawn(function()
	while game:GetService("RunService").RenderStepped:Wait() do
		if _G.RainbowUi then
			local Registry = Window.Holder.Visible and Library.Registry or Library.HudRegistry
			for Idx, Object in next, Registry do
				for Property, ColorIdx in next, Object.Properties do
					if ColorIdx == "AccentColor" or ColorIdx == "AccentColorDark" then
						local Instance = Object.Instance
						local yPos = Instance.AbsolutePosition.Y

						local Mapped = Library:MapValue(yPos, 0, 1080, 0, 0.5) * 0.69
						local Color = Color3.fromHSV((Library.CurrentRainbowHue - Mapped) % 1, 0.43, 1)

						if ColorIdx == "AccentColorDark" then
							Color = Library:GetDarkerColor(Color)
						end

						Instance[Property] = Color
					end
				end
			end
		end
	end
end)
end)
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RightControl', NoUI = true, Text = 'Menu keybind' }) 
Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
ThemeManager:SetFolder('Day Hub')
SaveManager:SetFolder('Day Hub')
SaveManager:BuildConfigSection(Tabs['UI Settings']) 
ThemeManager:ApplyToTab(Tabs['UI Settings'])
local placeId = game.PlaceId;
                     if placeId == 2753915549 then
                        OldWorld = true;
                     elseif placeId == 4442272183 then
                        NewWorld = true;
                     elseif placeId == 7449423635 then
                        Three = true;
                        do
                           local count = 0;
                           for i,v in pairs(game:GetService("Workspace").Map.Turtle:GetChildren()) do
                              if v.Name == "Model" and #v:GetChildren() >= 40 and v:FindFirstChild("Meshes/Plank7") and i > 20 then
                                 v:Destroy()
                                 count = count + 1
                                 if count > 2 then
                                    break
                                 end
                              end
                           end
                        end
                     end
                     function CheckQuest()
                        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                        if OldWorld then
                           if MyLevel == 1 or MyLevel <= 9 then -- Bandit
                            Ms = "Bandit [Lv. 5]"
                            NaemQuest = "BanditQuest1"
                            LevelQuest = 1
                            NameMon = "Bandit"
                            CFrameQuestuestuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
                            CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
                            magbring = 400
                            Ms = "Monkey [Lv. 14]"
                            NaemQuest = "JungleQuest"
                            LevelQuest = 1
                            NameMon = "Monkey"
                            CFrameQuestuestuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
                            CFrameMon = CFrame.new(-1502.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
                            magbring = 240
                            Ms = "Gorilla [Lv. 20]"
                            NaemQuest = "JungleQuest"
                            LevelQuest = 2
                            NameMon = "Gorilla"
                            CFrameQuestuestuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
                            CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
                            Dis = 150
                            Ms = "Pirate [Lv. 35]"
                            NaemQuest = "BuggyQuest1"
                            LevelQuest = 1
                            NameMon = "Pirate"
                            CFrameQuestuestuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
                            CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
                            Dis = 150
                            Ms = "Brute [Lv. 45]"
                            NaemQuest = "BuggyQuest1"
                            LevelQuest = 2
                            NameMon = "Brute"
                            CFrameQuestuestuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
                            CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
                            Ms = "Desert Bandit [Lv. 60]"
                            NaemQuest = "DesertQuest"
                            LevelQuest = 1
                            NameMon = "Desert Bandit"
                            CFrameQuestuestuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
                            CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
                            Ms = "Desert Officer [Lv. 70]"
                            NaemQuest = "DesertQuest"
                            LevelQuest = 2
                            NameMon = "Desert Officer"
                            CFrameQuestuestuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
                            CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
                            Ms = "Snow Bandit [Lv. 90]"
                            NaemQuest = "SnowQuest"
                            LevelQuest = 1
                            NameMon = "Snow Bandits"
                            CFrameQuestuestuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
                            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
                            Ms = "Snowman [Lv. 100]"
                            NaemQuest = "SnowQuest"
                            LevelQuest = 2
                            NameMon = "Snowman"
                            CFrameQuestuestuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
                            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
                            Ms = "Chief Petty Officer [Lv. 120]"
                            NaemQuest = "MarineQuest2"
                            LevelQuest = 1
                            NameMon = "Chief Petty Officer"
                            CFrameQuestuestuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
                            CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
                            Ms = "Sky Bandit [Lv. 150]"
                            NaemQuest = "SkyQuest"
                            LevelQuest = 1
                            NameMon = "Sky Bandit"
                            CFrameQuestuestuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
                            CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
                            if _G.Auto_Farm_Level and (CFrameQuestuestuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
							end
                        elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master
                            Ms = "Dark Master [Lv. 175]"
                            NaemQuest = "SkyQuest"
                            LevelQuest = 2
                            NameMon = "Dark Master"
                            CFrameQuestuestuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
                            CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
                            if _G.Auto_Farm_Level and (CFrameQuestuestuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                            end
						elseif MyLevel == 190 or MyLevel <= 209 then -- Dark Master
                            Ms = "Prisoner [Lv. 190]"
                            NaemQuest = "PrisonerQuest"
                            LevelQuest = 1
                            NameMon = "Prisoner"
                            CFrameQuestuestuest = CFrame.new(5310.61, 0.350015, 474.947)
                            CFrameMon = CFrame.new(4977.88525390625, 72.67780303955078, 498.108642578125)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 210 or MyLevel <= 249 then -- Dark Master
                            Ms = "Dangerous Prisoner [Lv. 210]"
                            NaemQuest = "PrisonerQuest"
                            LevelQuest = 2
                            NameMon = "Dangerous Prisoner"
                            CFrameQuestuestuest = CFrame.new(5310.61, 0.350015, 474.947)
                            CFrameMon = CFrame.new(5656.42333984375, 72.67793273925781, 866.1055908203125)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 250 or MyLevel <= 274 then -- Toga Warrior
                            Ms = "Toga Warrior [Lv. 250]"
                            NaemQuest = "ColosseumQuest"
                            LevelQuest = 1
                            NameMon = "Toga Warrior"
                            CFrameQuestuestuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
                            CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
                            Ms = "Gladiator [Lv. 275]"
                            NaemQuest = "ColosseumQuest"
                            LevelQuest = 2
                            NameMon = "Gladiato"
                            CFrameQuestuestuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
                            CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
                            Ms = "Military Soldier [Lv. 300]"
                            NaemQuest = "MagmaQuest"
                            LevelQuest = 1
                            NameMon = "Military Soldier"
                            CFrameQuestuestuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                            CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 325 or MyLevel <= 374 then -- Military Spy
                            FM = false
                            Ms = "Military Spy [Lv. 325]"
                            NaemQuest = "MagmaQuest"
                            LevelQuest = 2
                            NameMon = "Military Spy"
                            CFrameQuestuestuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                            CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
                            FM = true
                            Ms = "Fishman Warrior [Lv. 375]"
                            NaemQuest = "FishmanQuest"
                            LevelQuest = 1
                            NameMon = "Fishman Warrior"
                            CFrameQuestuestuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
                            CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
                            if _G.Auto_Farm_Level and (CFrameQuestuestuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
							end
                        elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
                            FM = true
                            Ms = "Fishman Commando [Lv. 400]"
                            NaemQuest = "FishmanQuest"
                            LevelQuest = 2
                            NameMon = "Fishman Commando"
                            CFrameQuestuestuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
                            CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
                            if _G.Auto_Farm_Level and (CFrameQuestuestuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
							end
                        elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
                            FM = false
                            Ms = "God's Guard [Lv. 450]"
                            NaemQuest = "SkyExp1Quest"
                            LevelQuest = 1
                            NameMon = "God's Guards"
                            CFrameQuestuestuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
                            CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
                            if _G.Auto_Farm_Level and (CFrameQuestuestuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
							end
                        elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
                            sky = false
                            Ms = "Shanda [Lv. 475]"
                            NaemQuest = "SkyExp1Quest"
                            LevelQuest = 2
                            NameMon = "Shandas"
                            CFrameQuestuestuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
                            CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
                            if _G.Auto_Farm_Level and (CFrameQuestuestuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
							end
                        elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
                            sky = true
                            Ms = "Royal Squad [Lv. 525]"
                            NaemQuest = "SkyExp2Quest"
                            LevelQuest = 1
                            NameMon = "Royal Squad"
                            CFrameQuestuestuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
                            CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
                            Dis = 240
                            sky = true
                            Ms = "Royal Soldier [Lv. 550]"
                            NaemQuest = "SkyExp2Quest"
                            LevelQuest = 2
                            NameMon = "Royal Soldier"
                            CFrameQuestuestuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
                            CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
                            Dis = 240
                            sky = false
                            Ms = "Galley Pirate [Lv. 625]"
                            NaemQuest = "FountainQuest"
                            LevelQuest = 1
                            NameMon = "Galley Pirate"
                            CFrameQuestuestuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
                            CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel >= 650 then -- Galley Captain
                            Dis = 240
                            Ms = "Galley Captain [Lv. 650]"
                            NaemQuest = "FountainQuest"
                            LevelQuest = 2
                            NameMon = "Galley Captain"
                            CFrameQuestuestuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
                            CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        end
                    elseif NewWorld then
                        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                        Dis = 240
                        if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
                            Ms = "Raider [Lv. 700]"
                            NaemQuest = "Area1Quest"
                            LevelQuest = 1
                            NameMon = "Raider"
                            CFrameQuestuestuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
                            CFrameMon = CFrame.new(-217.138626, 39.2450829, 2393.54468, 0.146848485, 0, -0.989159107, 0, 1, 0, 0.989159107, 0, 0.146848485)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
                            Ms = "Mercenary [Lv. 725]"
                            NaemQuest = "Area1Quest"
                            LevelQuest = 2
                            NameMon = "Mercenary"
                            CFrameQuestuestuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
                            CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
                            Ms = "Swan Pirate [Lv. 775]"
                            NaemQuest = "Area2Quest"
                            LevelQuest = 1
                            NameMon = "Swan Pirate"
                            CFrameQuestuestuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                            CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
                            Ms = "Factory Staff [Lv. 800]"
                            NaemQuest = "Area2Quest"
                            LevelQuest = 2
                            NameMon = "Factory Staff"
                            CFrameQuestuestuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                            CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
                            Ms = "Marine Lieutenant [Lv. 875]"
                            NaemQuest = "MarineQuest3"
                            LevelQuest = 1
                            NameMon = "Marine Lieutenant"
                            CFrameQuestuestuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
                            CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
                            Ms = "Marine Captain [Lv. 900]"
                            NaemQuest = "MarineQuest3"
                            LevelQuest = 2
                            NameMon = "Marine Captain"
                            CFrameQuestuestuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
                            CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
                            Ms = "Zombie [Lv. 950]"
                            NaemQuest = "ZombieQuest"
                            LevelQuest = 1
                            NameMon = "Zombie"
                            CFrameQuestuestuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
                            CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
                            Ms = "Vampire [Lv. 975]"
                            NaemQuest = "ZombieQuest"
                            LevelQuest = 2
                            NameMon = "Vampire"
                            CFrameQuestuestuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
                            CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
                            Ms = "Snow Trooper [Lv. 1000]"
                            NaemQuest = "SnowMountainQuest"
                            LevelQuest = 1
                            NameMon = "Snow Trooper"
                            CFrameQuestuestuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
                            CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
                            Ms = "Winter Warrior [Lv. 1050]"
                            NaemQuest = "SnowMountainQuest"
                            LevelQuest = 2
                            NameMon = "Winter Warrior"
                            CFrameQuestuestuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
                            CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
                        
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
            			elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
                            Ms = "Lab Subordinate [Lv. 1100]"
                            NaemQuest = "IceSideQuest"
                            LevelQuest = 1
                            NameMon = "Lab Subordinate"
                            CFrameQuestuestuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
                            CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
                            Ms = "Horned Warrior [Lv. 1125]"
                            NaemQuest = "IceSideQuest"
                            LevelQuest = 2
                            NameMon = "Horned Warrior"
                            CFrameQuestuestuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
                            CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
                            Ms = "Magma Ninja [Lv. 1175]"
                            NaemQuest = "FireSideQuest"
                            LevelQuest = 1
                            NameMon = "Magma Ninja"
                            CFrameQuestuestuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
                            CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
                            Ms = "Lava Pirate [Lv. 1200]"
                            NaemQuest = "FireSideQuest"
                            LevelQuest = 2
                            NameMon = "Lava Pirate"
                            CFrameQuestuestuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
                            CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
                            Ms = "Ship Deckhand [Lv. 1250]"
                            NaemQuest = "ShipQuest1"
                            LevelQuest = 1
                            NameMon = "Ship Deckhand"
                            CFrameQuestuestuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                            CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
                            if _G.Auto_Farm_Level and (CFrameQuestuestuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
							end
                        elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
                            Ms = "Ship Engineer [Lv. 1275]"
                            NaemQuest = "ShipQuest1"
                            LevelQuest = 2
                            NameMon = "Ship Engineer"
                            CFrameQuestuestuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                            CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
                            if _G.Auto_Farm_Level and (CFrameQuestuestuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
							end
                        elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
                            Ms = "Ship Steward [Lv. 1300]"
                            NaemQuest = "ShipQuest2"
                            LevelQuest = 1
                            NameMon = "Ship Steward"
                            CFrameQuestuestuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                            CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
                            if _G.Auto_Farm_Level and (CFrameQuestuestuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
							end
                        elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
                            Ms = "Ship Officer [Lv. 1325]"
                            NaemQuest = "ShipQuest2"
                            LevelQuest = 2
                            NameMon = "Ship Officer"
                            CFrameQuestuestuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                            CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
                            if _G.Auto_Farm_Level and (CFrameQuestuestuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
							end
                        elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
                            Ms = "Arctic Warrior [Lv. 1350]"
                            NaemQuest = "FrostQuest"
                            LevelQuest = 1
                            NameMon = "Arctic Warrior"
                            CFrameQuestuestuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
                            CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
                            if _G.Auto_Farm_Level and (CFrameQuestuestuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
							end
                        elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
                            Ms = "Snow Lurker [Lv. 1375]"
                            NaemQuest = "FrostQuest"
                            LevelQuest = 2
                            NameMon = "Snow Lurker"
                            CFrameQuestuestuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
                            CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
                            Ms = "Sea Soldier [Lv. 1425]"
                            NaemQuest = "ForgottenQuest"
                            LevelQuest = 1
                            NameMon = "Sea Soldier"
                            CFrameQuestuestuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
                            CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
                            Ms = "Water Fighter [Lv. 1450]"
                            NaemQuest = "ForgottenQuest"
                            LevelQuest = 2
                            NameMon = "Water Fighter"
                            CFrameQuestuestuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
                            CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        end
                    else
                        local MyLevel =  game.Players.LocalPlayer.Data.Level.Value
                        Dis = 240
                        if MyLevel == 1500 or MyLevel <= 1524 then
                            Ms = "Pirate Millionaire [Lv. 1500]"
                            NaemQuest = "PiratePortQuest"
                            LevelQuest = 1
                            NameMon = "Pirate Millionaire"
                            CFrameQuestuestuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1525 or MyLevel <= 1574 then
                            Ms = "Pistol Billionaire [Lv. 1525]"
                            NaemQuest = "PiratePortQuest"
                            LevelQuest = 2
                            NameMon = "Pistol Billionaire"
                            CFrameQuestuestuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1575 or MyLevel <= 1599 then
                            Ms = "Dragon Crew Warrior [Lv. 1575]"
                            NaemQuest = "AmazonQuest"
                            LevelQuest = 1
                            NameMon = "Dragon Crew Warrior"
                            CFrameQuestuestuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                            CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1600 or MyLevel <= 1624 then
                            Ms = "Dragon Crew Archer [Lv. 1600]"
                            NaemQuest = "AmazonQuest"
                            LevelQuest = 2
                            NameMon = "Dragon Crew Archer"
                            CFrameQuestuestuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                            CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1625 or MyLevel <= 1649 then
                            Ms = "Female Islander [Lv. 1625]"
                            NaemQuest = "AmazonQuest2"
                            LevelQuest = 1
                            NameMon = "Female Islander"
                            CFrameQuestuestuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                            CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1650 or MyLevel <= 1699 then
                            Ms = "Giant Islander [Lv. 1650]"
                            NaemQuest = "AmazonQuest2"
                            LevelQuest = 2
                            NameMon = "Giant Islander"
                            CFrameQuestuestuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                            CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1700 or MyLevel <= 1724 then
                            Ms = "Marine Commodore [Lv. 1700]"
                            NaemQuest = "MarineTreeIsland"
                            LevelQuest = 1
                            NameMon = "Marine Commodore"
                            CFrameQuestuestuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                            CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1725 or MyLevel <= 1774 then
                            Ms = "Marine Rear Admiral [Lv. 1725]"
                            NaemQuest = "MarineTreeIsland"
                            LevelQuest = 2
                            NameMon = "Marine Rear Admiral"
                            CFrameQuestuestuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                            CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1775 or MyLevel <= 1799 then
                            Ms = "Fishman Raider [Lv. 1775]"
                            NaemQuest = "DeepForestIsland3"
                            LevelQuest = 1
                            NameMon = "Fishman Raider"
                            CFrameQuestuestuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                            CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1800 or MyLevel <= 1824 then
                            Ms = "Fishman Captain [Lv. 1800]"
                            NaemQuest = "DeepForestIsland3"
                            LevelQuest = 2
                            NameMon = "Fishman Captain"
                            CFrameQuestuestuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                            CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1825 or MyLevel <= 1849 then
                            Ms = "Forest Pirate [Lv. 1825]"
                            NaemQuest = "DeepForestIsland"
                            LevelQuest = 1
                            NameMon = "Forest Pirate"
                            CFrameQuestuestuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                            CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1850 or MyLevel <= 1899 then
                            Ms = "Mythological Pirate [Lv. 1850]"
                            NaemQuest = "DeepForestIsland"
                            LevelQuest = 2
                            NameMon = "Mythological Pirate"
                            CFrameQuestuestuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                            CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1900 or MyLevel <= 1924 then
                            Ms = "Jungle Pirate [Lv. 1900]"
                            NaemQuest = "DeepForestIsland2"
                            LevelQuest = 1
                            NameMon = "Jungle Pirate"
                            CFrameQuestuestuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                            CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1925 or MyLevel <= 1974 then
                            Ms = "Musketeer Pirate [Lv. 1925]"
                            NaemQuest = "DeepForestIsland2"
                            LevelQuest = 2
                            NameMon = "Musketeer Pirate"
                            CFrameQuestuestuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                            CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 1975 or MyLevel <= 1999 then
                            Ms = "Reborn Skeleton [Lv. 1975]"
                            NaemQuest = "HauntedQuest1"
                            LevelQuest = 1
                            NameMon = "Reborn Skeleton"
                            CFrameQuestuestuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                            CFrameMon = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 2000 or MyLevel <= 2024 then
                            Ms = "Living Zombie [Lv. 2000]"
                            NaemQuest = "HauntedQuest1"
                            LevelQuest = 2
                            NameMon = "Living Zombie"
                            CFrameQuestuestuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                            CFrameMon = CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 2025 or MyLevel <= 2049 then
                            Ms = "Demonic Soul [Lv. 2025]"
                            NaemQuest = "HauntedQuest2"
                            LevelQuest = 1
                            NameMon = "Demonic Soul"
                            CFrameQuestuestuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
                            CFrameMon = CFrame.new(-9503.9921875, 272.1305847167969, 6250.5703125)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 2050 or MyLevel <= 2074 then
                            Ms = "Posessed Mummy [Lv. 2050]" 
                            NaemQuest = "HauntedQuest2"
                            LevelQuest = 2
                            NameMon = "Posessed Mummy"
                            CFrameQuestuestuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
                            CFrameMon = CFrame.new(-9589.93848, 4.85058546, 6190.27197)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 2075 or MyLevel <= 2099 then
                            Ms = "Peanut Scout [Lv. 2075]"
                            NaemQuest = "NutsIslandQuest"
                            LevelQuest = 1
                            NameMon = "Peanut Scout"
                            CFrameQuestuestuest = CFrame.new(-2075.9643554688, 38.129207611084, -10172.815429688)
                            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 2100 or MyLevel <= 2124 then
                            Ms = "Peanut President [Lv. 2100]"
                            NaemQuest = "NutsIslandQuest"
                            LevelQuest = 2
                            NameMon = "Peanut President"
                            CFrameQuestuestuest = CFrame.new(-2075.9643554688, 38.129207611084, -10172.815429688)
                            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 2125 or MyLevel <= 2149 then
                            Ms = "Ice Cream Chef [Lv. 2125]"
                            NaemQuest = "IceCreamIslandQuest"
                            LevelQuest = 1
                            NameMon = "Ice Cream Chef"
                            CFrameQuestuestuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
                            CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 2150 or MyLevel <= 2199 then
                            Ms = "Ice Cream Commander [Lv. 2150]"
                            NaemQuest = "IceCreamIslandQuest"
                            LevelQuest = 2
                            NameMon = "Ice Cream Commander"
                            CFrameQuestuestuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
                            CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 2200 or MyLevel <= 2224 then
                            Ms = "Cookie Crafter [Lv. 2200]"
                            NaemQuest = "CakeQuest1"
                            LevelQuest = 1
                            NameMon = "Cookie Crafter"
                            CFrameQuestuestuest = CFrame.new(-2022.3, 36.9276, -12031)
                            CFrameMon = CFrame.new(-2280.569091796875, 89.83930206298828, -12041.4326171875)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 2225 or MyLevel <= 2249 then
                            Ms = "Cake Guard [Lv. 2225]"
                            NaemQuest = "CakeQuest1"
                            LevelQuest = 2
                            NameMon = "Cake Guard"
                            CFrameQuestuestuest = CFrame.new(-2022.3, 36.9276, -12031)
                            CFrameMon = CFrame.new(-1621.9512939453125, 195.68287658691406, -12281.0908203125)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 2250 or MyLevel <= 2274 then
                            Ms = "Baking Staff [Lv. 2250]"
                            NaemQuest = "CakeQuest2"
                            LevelQuest = 1
                            NameMon = "Baking Staff"
                            CFrameQuestuestuest = CFrame.new(-1928.32, 37.7297, -12840.6)
                            CFrameMon = CFrame.new(-1912.928955078125, 113.134033203125, -12990.53515625)
                        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                        elseif MyLevel == 2275 or MyLevel <= 2299 then
                            Ms = "Head Baker [Lv. 2275]"
                            NaemQuest = "CakeQuest2"
                            LevelQuest = 2
                            NameMon = "Head Baker"
                            CFrameQuestuestuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
                            CFrameMon = CFrame.new(-2203.302490234375, 109.90937042236328, -12788.7333984375)
                	    if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                	    elseif MyLevel == 2300 or MyLevel <= 2324 then
                	        Ms = "Cocoa Warrior [Lv. 2300]"
                            NaemQuest = "ChocQuest1"
                            LevelQuest = 1
                            NameMon = "Cocoa Warriors"
                            CFrameQuestuestuest = CFrame.new(231.75, 23.9003, -12200.3)
                            CFrameMon = CFrame.new(89.75547790527344, 73.66654968261719, -12315.4609375)
                		if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                		elseif MyLevel == 2325 or MyLevel <= 2349 then
                	        Ms = "Chocolate Bar Battler [Lv. 2325]"
                            NaemQuest = "ChocQuest1"
                            LevelQuest = 2
                            NameMon = "Chocolate Bar Battler"
                            CFrameQuestuestuest = CFrame.new(231.75, 23.9003, -12200.3)
                            CFrameMon = CFrame.new(614.6710205078125, 81.79888153076172, -12578.4521484375)
                		if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                		elseif MyLevel == 2350 or MyLevel <= 2374 then
                	        Ms = "Sweet Thief [Lv. 2350]"
                            NaemQuest = "ChocQuest2"
                            LevelQuest = 1
                            NameMon = "Sweet Thiefs"
                            CFrameQuestuestuest = CFrame.new(147.222900390625, 24.819623947143555, -12775.2890625)
                            CFrameMon = CFrame.new(-92.28578186035156, 132.29556274414062, -12655.9111328125)
                		if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
                		elseif MyLevel == 2350 or MyLevel <= 2374 then
                	        Ms = "Candy Rebel [Lv. 2375]"
                            NaemQuest = "ChocQuest2"
                            LevelQuest = 2
                            NameMon = "Candy Rebel"
                            CFrameQuestuestuest = CFrame.new(147.222900390625, 24.819623947143555, -12775.2890625)
                            CFrameMon = CFrame.new(66.337265, 27.430994, -12946.5674, -0.825375617, -7.78806708e-08, -0.564584017, -5.46535652e-08, 1, -5.80444244e-08, 0.564584017, -1.70519225e-08, -0.825375617)
                       if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            				game.Players.LocalPlayer.Character.Head:Destroy()
            				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            				wait(1)
            				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            			end
					elseif MyLevel == 2400 or MyLevel <= 2425 then
						Ms = "Candy Pirate [Lv. 2400]"
						NaemQuest = "CandyQuest1"
						LevelQuest = 1
						NameMon = "Candy Pirate"
						CFrameQuestuestuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
						CFrameMon = CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.17216943e-08, -0.432239741, 7.81264475e-08, 1, -2.60746162e-08, 0.432239741, -1.02563433e-08, 0.90175873)
				   if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						game.Players.LocalPlayer.Character.Head:Destroy()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
						wait(1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
					end
				elseif MyLevel == 2425 or MyLevel <= 2450 then
					Ms = "Snow Demon [Lv. 2425]"
					NaemQuest = "CandyQuest1"
					LevelQuest = 2
					NameMon = "Snow Demon"
					CFrameQuestuestuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
					CFrameMon = CFrame.new(-777.070862, 23.5809536, -14453.0078, 0.33384338, 0, -0.942628562, 0, 1, 0, 0.942628562, 0, 0.33384338)
			   if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					game.Players.LocalPlayer.Character.Head:Destroy()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
				end
                    end
                end
            end
function CheckBossQuest()
	if _G.Select_Boss == "Saber Expert [Lv. 200] [Boss]" then
		MsBoss = "Saber Expert [Lv. 200] [Boss]"
		NameBoss = "Saber Expert"
		CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
	elseif _G.Select_Boss == "The Saw [Lv. 100] [Boss]" then
		MsBoss = "The Saw [Lv. 100] [Boss]"
		NameBoss = "The Saw"
		CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
	elseif _G.Select_Boss == "Greybeard [Lv. 750] [Raid Boss]" then
		MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
		NameBoss = "Greybeard"
		CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
	elseif _G.Select_Boss == "The Gorilla King [Lv. 25] [Boss]" then
		MsBoss = "The Gorilla King [Lv. 25] [Boss]"
		NameBoss = "The Gorilla King"
		NameQuestBoss = "JungleQuest"
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
		CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
	elseif _G.Select_Boss == "Bobby [Lv. 55] [Boss]" then
		MsBoss = "Bobby [Lv. 55] [Boss]"
		NameBoss = "Bobby"
		NameQuestBoss = "BuggyQuest1"
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
		CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
	elseif _G.Select_Boss == "Yeti [Lv. 110] [Boss]" then
		MsBoss = "Yeti [Lv. 110] [Boss]"
		NameBoss = "Yeti"
		NameQuestBoss = "SnowQuest"
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
		CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
	elseif _G.Select_Boss == "Mob Leader [Lv. 120] [Boss]" then
		MsBoss = "Mob Leader [Lv. 120] [Boss]"
		NameBoss = "Mob Leader"
		CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
	elseif _G.Select_Boss == "Vice Admiral [Lv. 130] [Boss]" then
		MsBoss = "Vice Admiral [Lv. 130] [Boss]"
		NameBoss = "Vice Admiral"
		NameQuestBoss = "MarineQuest2"
		LevelQuestBoss = 2
		CFrameQuestuestuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
		CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
	elseif _G.Select_Boss == "Warden [Lv. 175] [Boss]" then
		MsBoss = "Warden [Lv. 175] [Boss]"
		NameBoss = "Warden"
		NameQuestBoss = "ImpelQuest"
		LevelQuestBoss = 1
		CFrameQuestuestuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	elseif _G.Select_Boss == "Chief Warden [Lv. 200] [Boss]" then
		MsBoss = "Chief Warden [Lv. 200] [Boss]"
		NameBoss = "Chief Warden"
		NameQuestBoss = "ImpelQuest"
		LevelQuestBoss = 2
		CFrameQuestuestuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	elseif _G.Select_Boss == "Swan [Lv. 225] [Boss]" then
		MsBoss = "Swan [Lv. 225] [Boss]"
		NameBoss = "Swan"
		NameQuestBoss = "ImpelQuest"
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	elseif _G.Select_Boss == "Magma Admiral [Lv. 350] [Boss]" then
		MsBoss = "Magma Admiral [Lv. 350] [Boss]"
		NameBoss = "Magma Admiral"
		NameQuestBoss = "MagmaQuest"
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
		CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
	elseif _G.Select_Boss == "Fishman Lord [Lv. 425] [Boss]" then
		MsBoss = "Fishman Lord [Lv. 425] [Boss]"
		NameBoss = "Fishman Lord"
		NameQuestBoss = "FishmanQuest"
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
		CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
	elseif _G.Select_Boss == "Wysper [Lv. 500] [Boss]" then
		MsBoss = "Wysper [Lv. 500] [Boss]"
		NameBoss = "Wysper"
		NameQuestBoss = "SkyExp1Quest"
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
		CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
	elseif _G.Select_Boss == "ThDay Next Genaration God [Lv. 575] [Boss]" then
		MsBoss = "ThDay Next Genaration God [Lv. 575] [Boss]"
		NameBoss = "ThDay Next Genaration God"
		NameQuestBoss = "SkyExp2Quest"
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
		CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
	elseif _G.Select_Boss == "Cyborg [Lv. 675] [Boss]" then
		MsBoss = "Cyborg [Lv. 675] [Boss]"
		NameBoss = "Cyborg"
		NameQuestBoss = "FountainQuest"
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
		CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
	-- New World
	elseif _G.Select_Boss == "Diamond [Lv. 750] [Boss]" then
		MsBoss = "Diamond [Lv. 750] [Boss]"
		NameBoss = "Diamond"
		NameQuestBoss = "Area1Quest"
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
		CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
	elseif _G.Select_Boss == "Jeremy [Lv. 850] [Boss]" then
		MsBoss = "Jeremy [Lv. 850] [Boss]"
		NameBoss = "Jeremy"
		NameQuestBoss = "Area2Quest"
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
		CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
	elseif _G.Select_Boss == "Fajita [Lv. 925] [Boss]" then
		MsBoss = "Fajita [Lv. 925] [Boss]"
		NameBoss = "Fajita"
		NameQuestBoss = "MarineQuest3"
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
		CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
	elseif _G.Select_Boss == "Don Swan [Lv. 1000] [Boss]" then
		MsBoss = "Don Swan [Lv. 1000] [Boss]"
		NameBoss = "Don Swan"
		CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
	elseif _G.Select_Boss == "Smoke Admiral [Lv. 1150] [Boss]" then
		MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
		NameBoss = "Smoke Admiral"
		NameQuestBoss = "IceSideQuest"
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
		CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
	elseif _G.Select_Boss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
		MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
		NameBoss = "Cursed Captain"
		CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
	elseif _G.Select_Boss == "Darkbeard [Lv. 1000] [Raid Boss]" then
		MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
		NameBoss = "Darkbeard"
		CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
	elseif _G.Select_Boss == "Order [Lv. 1250] [Raid Boss]" then
		MsBoss = "Order [Lv. 1250] [Raid Boss]"
		NameBoss = "Order"
		CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
	elseif _G.Select_Boss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
		MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
		NameBoss = "Awakened Ice Admiral"
		NameQuestBoss = "FrostQuest"
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
		CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
	elseif _G.Select_Boss == "Tide Keeper [Lv. 1475] [Boss]" then
		MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
		 NameBoss = "Tide Keeper"
		NameQuestBoss = "ForgottenQuest"             
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
		CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
	-- Thire World
	elseif _G.Select_Boss == "Stone [Lv. 1550] [Boss]" then
		MsBoss = "Stone [Lv. 1550] [Boss]"
		NameBoss = "Stone"
		NameQuestBoss = "PiratePortQuest"             
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(-290, 44, 5577)
		CFrameBoss = CFrame.new(-1085, 40, 6779)
	elseif _G.Select_Boss == "Island Empress [Lv. 1675] [Boss]" then
		MsBoss = "Island Empress [Lv. 1675] [Boss]"
		 NameBoss = "Island Empress"
		NameQuestBoss = "AmazonQuest2"
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(5443, 602, 752)
		CFrameBoss = CFrame.new(5659, 602, 244)
	elseif _G.Select_Boss == "Kilo Admiral [Lv. 1750] [Boss]" then
		MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
		NameBoss = "Kilo Admiral"
		NameQuestBoss = "MarineTreeIsland"    
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(2178, 29, -6737)
		CFrameBoss =CFrame.new(2846, 433, -7100)
	elseif _G.Select_Boss == "Captain Elephant [Lv. 1875] [Boss]" then
		MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
		NameBoss = "Captain Elephant"
		NameQuestBoss = "DeepForestIsland"             
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(-13232, 333, -7631)
		CFrameBoss = CFrame.new(-13221, 325, -8405)
	elseif _G.Select_Boss == "Beautiful Pirate [Lv. 1950] [Boss]" then
		MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
		NameBoss = "Beautiful Pirate"
		NameQuestBoss = "DeepForestIsland2"             
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(-12686, 391, -9902)
		CFrameBoss = CFrame.new(5182, 23, -20)
	elseif _G.Select_Boss == "Cake Queen [Lv. 2175] [Boss]" then
		MsBoss = "Cake Queen [Lv. 2175] [Boss]"
		NameBoss = "Cake Queen"
		NameQuestBoss = "IceCreamIslandQuest"             
		LevelQuestBoss = 3
		CFrameQuestuestuestBoss = CFrame.new(-716, 382, -11010)
		CFrameBoss = CFrame.new(-821, 66, -10965)
	elseif _G.Select_Boss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
		MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
		NameBoss = "rip_indra True Form"
		CFrameBoss = CFrame.new(-5359, 424, -2735)
	elseif _G.Select_Boss == "Longma [Lv. 2000] [Boss]" then
		MsBoss = "Longma [Lv. 2000] [Boss]"
		NameBoss = "Longma"
		CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
	elseif _G.Select_Boss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
		MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
		NameBoss = "Soul Reaper"
		CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
end
end