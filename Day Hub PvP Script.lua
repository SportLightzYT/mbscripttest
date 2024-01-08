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
	while wait() do
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
			if _G.Clip or _G.TeleportPly then
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
    PvP = Window:AddTab('PvP'), 
	Visuals = Window:AddTab('Visual'),
    ['UI Settings'] = Window:AddTab('Settings'),
}
Library:Notify("🔥 Day Hub Next Generation Script | Loadded 🔥")
Library:Notify("🔥 Blox Fruit PvP Script | Loadded 🔥")
Library:Notify("❄️ Last Update | "..Calendar[1]..', '..Calendar[2]..', '..Calendar[3]..', '..Calendar[4].." ❄️")
Library:Notify("☄️ Enjoy With Day Hub Next Generation Script ☄️ ")
Library:Notify("⭐️ Welcome | "..game.Players.LocalPlayer.Name.." ⭐️")
local Player = Tabs.PvP:AddLeftGroupbox('[ Player ]')
PlayerName = {}
for i,v in pairs(game.Players:GetChildren()) do  
	if v.Name ~= game.Players.LocalPlayer.Name then
		table.insert(PlayerName ,v.Name)
	end
end
local plyserv = Player:AddLabel("Players")
task.spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if i == 12 then
                    plyserv:SetText("Players :".." "..i.." ".."/".." ".."12".." ".."(Max)")
                elseif i == 1 then
                    plyserv:SetText("Player :".." "..i.." ".."/".." ".."12")
                else
                    plyserv:SetText("Players :".." "..i.." ".."/".." ".."12")
                end
            end
        end)
    end
end)
local Select_Player = Player:AddDropdown('Select_Player', {
    Values = PlayerName,
    Multi = false,
    Text = 'Select Player',
    Tooltip = 'Select Player',
})
Options.Select_Player:OnChanged(function()
	_G.Select_Players = Options.Select_Player.Value
	print(Options.Select_Player.Value)
end)
Player:AddButton("Refresh Player",function()
	table.clear(PlayerName)
	for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
		table.insert(PlayerName ,v.Name)
	end
	Select_Player:SetValues(PlayerName)
end)
Player:AddToggle('SP', {
    Text = 'Spectate Player',
    Default = false, 
})
Toggles.SP:OnChanged(function(vu)
	_G.Spectate_Player = vu
end)
task.spawn(function()
	while task.wait() do
		if _G.Spectate_Player then
			pcall(function()
				if game.Players:FindFirstChild(_G.Select_Players) then
					game.Workspace.Camera.CameraSubject = game.Players:FindFirstChild(_G.Select_Players).Character.Humanoid
				end
			end)
		else
			game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
		end
	end
end)
Player:AddToggle('TLP', {
    Text = 'Teleport To Player',
    Default = false, 
})
Toggles.TLP:OnChanged(function(vu)
	_G.TeleportPly = vu
    pcall(function()
        if _G.TeleportPly then
            repeat TP2(game:GetService("Players")[_G.Select_Players].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
        end
        StopTween(_G.TeleportPly)
    end)
end)
local Player = Tabs.PvP:AddLeftGroupbox('[ Aimbot ]')
local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()
spawn(function()
	while wait() do
		if _G.Aimbot_Skill then
			pcall(function()
				   local MaxDist, Closest = math.huge
				   for i,v in pairs(game:GetService("Players"):GetChildren()) do 
					local Head = v.Character:FindFirstChild("HumanoidRootPart")
					local Pos, Vis = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera, Head.Position)
					local MousePos, TheirPos = Vector2.new(mouse.X, mouse.Y), Vector2.new(Pos.X, Pos.Y)
					local Dist = (TheirPos - MousePos).Magnitude
					if Dist < MaxDist and Dist <= _G.Select_Size_Fov and v.Name ~= game.Players.LocalPlayer.Name then
						MaxDist = Dist
						_G.Aim_Players = v
					end
				end
			end)
		end
	end
end)
local Circle = Drawing.new("Circle")
Circle.Color =  Color3.fromRGB(52, 190, 255)
Circle.Thickness = 1
Circle.Radius = 250
Circle.NumSides = 460
Circle.Filled = false
Circle.Transparency = 0.5
game:GetService("RunService").Stepped:Connect(function()
	Circle.Radius = _G.Select_Size_Fov
	Circle.Thickness = 1
	Circle.NumSides = 460
	Circle.Position = game:GetService('UserInputService'):GetMouseLocation()
	if _G.ShowFov then
		Circle.Visible = true
	else
		Circle.Visible = false
	end
end)
_G.Select_Size_Fov = 20
Player:AddSlider('SelectFov', {
    Text = 'Select Fov',
	Default = 200,
    Min = 1,
    Max = 1000,
	Rounding = 0,
    Compact = false,
})
Options.SelectFov:OnChanged(function(vu)
	_G.Select_Size_Fov = vu
end)
Player:AddToggle('ShowFov', {
    Text = 'Show Fov',
    Default = false, 
})
Toggles.ShowFov:OnChanged(function(vu)
    _G.ShowFov = vu
end)
Player:AddToggle('AimbotSkill', {
    Text = 'Aimbot Skill',
    Default = false, 
})
Toggles.AimbotSkill:OnChanged(function(vu)
    _G.Aimbot_Skill = vu
end)
task.spawn(function()
	local gg = getrawmetatable(game)
	local old = gg.__namecall
	setreadonly(gg,false)
	gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = {...}
		if tostring(method) == "FireServer" then
			if tostring(args[1]) == "RemoteEvent" then
				if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
					if _G.Aimbot_Skill then
						args[2] = _G.Aim_Players.Character.HumanoidRootPart.Position
						return old(unpack(args))
					end
				end
			end
		end
		return old(...)
	end)
end)
task.spawn(function()
while task.wait() do
	if _G.Aimbot_Skill then
		if game.Players:FindFirstChild(SelectPlayer) and game.Players:FindFirstChild(SelectPlayer).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(SelectPlayer).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(SelectPlayer).Character.Humanoid.Health > 0 then
			AimBotSkillPosition = game.Players:FindFirstChild(SelectPlayer).Character:FindFirstChild("HumanoidRootPart").Position
		end
	end
end
end)
Player:AddToggle('Aimbot_Gun', {
    Text = 'Aimbot Gun',
    Default = false, 
})
Toggles.Aimbot_Gun:OnChanged(function(vu)
    _G.Aimbot_Gun = vu
end)
task.spawn(function()
	while wait() do
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if v:IsA("Tool") then
				if v:FindFirstChild("RemoteFunctionShoot") then 
					SelectToolWeaponGun = v.Name
				end
			end
		end
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
			if v:IsA("Tool") then
				if v:FindFirstChild("RemoteFunctionShoot") then 
					SelectToolWeaponGun = v.Name
				end
			end
		end
	end
end)
local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()
mouse.Button1Down:Connect(function()
	if _G.Aimbot_Gun and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) and game:GetService("Players"):FindFirstChild(SelectPlayer) then
		tool = game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun]
		v17 = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p, (game:GetService("Players"):FindFirstChild(SelectPlayer).Character.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin });
		game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(SelectPlayer).Character.HumanoidRootPart.Position, (require(game.ReplicatedStorage.Util).Other.hrpFromPart(v17)));
	end 
end)
Player:AddButton("Aim Bot [ Buddy Sword ]",function()
	getgenv().setting = {
		Fov = 50,
		Color = Color3.fromRGB(191, 255, 209),
		LockPlayers = false,
		LockPlayersBind = Enum.KeyCode.L,
		resetPlayersBind = Enum.KeyCode.P,
	}
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Besty191/MAZI-API/main/Blox_Fruit_Silent_Aim'))()
end)
local Player = Tabs.PvP:AddRightGroupbox('[ ESP Function ]')
Player:AddToggle('ESPPLAYERS', {
    Text = 'ESP Players',
    Default = false, 
})
Toggles.ESPPLAYERS:OnChanged(function()
ESPPlayer = Toggles.ESPPLAYERS.Value
while ESPPlayer do task.wait()
	UpdatePlayerChams()
end
end)
Player:AddToggle('EspChest', {
    Text = 'ESP Chests',
    Default = false, 
})
Toggles.EspChest:OnChanged(function()
ChestESP = Toggles.EspChest.Value
while ChestESP do task.wait()
	UpdateChestChams() 
end
end)
Player:AddToggle('EspDevilFruit', {
    Text = 'ESP Devil Fruit',
    Default = false, 
})
Toggles.EspDevilFruit:OnChanged(function()
DevilFruitESP = Toggles.EspDevilFruit.Value
while DevilFruitESP do task.wait()
	UpdateDevilChams() 
end
end)
Player:AddToggle('EspFruitSpawm', {
    Text = 'ESP Fruit Spawn',
    Default = false, 
})
Toggles.EspFruitSpawm:OnChanged(function()
RealFruitESP = Toggles.EspFruitSpawm.Value
while RealFruitESP do task.wait()
	UpdateRealFruitChams() 
end
end)
Player:AddToggle('EspFlower', {
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
local Player = Tabs.PvP:AddRightGroupbox('[ PvP Settings ]')
Player:AddToggle('AutoEnablePVP', {
    Text = 'Auto Enable PVP',
    Default = false,
})
Toggles.AutoEnablePVP:OnChanged(function(vu)
    _G.EnabledPvP = vu
end)
task.spawn(function()
	pcall(function()
		while task.wait() do
			if _G.EnabledPvP then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
				end
			end
		end
	end)
end)
Player:AddToggle('Damage_Aura', {
    Text = 'Damage Aura',
    Default = false
})
Toggles.Damage_Aura:OnChanged(function(vu)
    _G.DamageAura = vu
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
    while task.wait(0.15) do
        pcall(function()
          if _G.DamageAura then
              if _G.DamageAura then
                AttackNoCD(10000)
              end
          end
      end)
    end
end)
Player:AddToggle('InfAbility', {
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
Player:AddToggle('AutoHaKi', {
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
Player:AddToggle('CtrlClickTP', {
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
Player:AddToggle('InfSoru', {
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
Player:AddToggle('InfGeppo', {
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
Player:AddToggle('InfiniteObRange', {
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
local PlayerTab = Tabs.PvP:AddLeftGroupbox('[ Change Team ]')
PlayerTab:AddButton("Join Pirates Team",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
    end)
PlayerTab:AddButton("Join Marines Team",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
    end)
local VisualsTab = Tabs.Visuals:AddRightGroupbox('[ \\\\ World - Server // ]')
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
local VisualsTab = Tabs.Visuals:AddLeftGroupbox('[ Shop ]')
VisualsTab:AddButton("Buy Superhuman",function()
		local args = {
			[1] = "BuySuperhuman"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
VisualsTab:AddButton("Buy Death Step",function()
		local args = {
			[1] = "BuyDeathStep"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
VisualsTab:AddButton("Buy Shakman Karate",function()
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
VisualsTab:AddButton("Buy Electric Claw",function()
		local args = {
			[1] = "BuyElectricClaw"
			}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
VisualsTab:AddButton("Buy Dragon Talon",function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)
VisualsTab:AddButton("Buy God Human",function()
	local args = {
	[1] = "BuyGodhuman"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
local VisualsTab = Tabs.Visuals:AddLeftGroupbox('[ User Interface ]')
VisualsTab:AddButton("Open Fruit Inventory",function()
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
end)
VisualsTab:AddButton("Open Fruit Awaken",function()
	game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
end)
VisualsTab:AddButton("Open Fruit Store",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
    game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
end)
VisualsTab:AddButton("Open Color Haki",function()
	game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)
VisualsTab:AddButton("Open Title Name",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getTitles")
    game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)
local VisualsTab = Tabs.Visuals:AddRightGroupbox('[ Teleport Island ]')
if Old_World then
	TeleportTable = {"Start Island","Marine","MarineFord","Middle Town","Jungle","Pirate Village","Desert","Frozen Village","Colosseum","Prison","Mob Leader","Magma Village","Day Next GenarationWater Gate","Day Next GenarationWater City","Fountain City","Sky1","Sky2","Sky3"}
elseif New_World then
	TeleportTable = {"Dock","Flamingo Mansion","Flamingo Room","Cafe","Sunflower Field","Jeramy Mountain","Colosseum","Factroy","The Bridge","Green Bit","Graveyard","Dark Area","Snow Mountain","Hot Island","Cold Island","Raid Lab","Law Raid","Ice Castle","Usopp's Island","Inscription Island","Forgotten Island","Ghost Ship"}
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
				if New_World then
                elseif SelectIsland == "Colosseum" then
                    TP2( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
				end
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
Library:SetWatermarkVisibility(true)
function setwatermarktime()
    local g = math.floor(workspace.DistributedGameTime+0.27322)
    local h = math.floor(g/(60^2))%24
    local m = math.floor(g/(60^1))%60
    local s = math.floor(g/(60^0))%60
    Library:SetWatermark("Day Hub PvP Script | Hour ("..h..") : Minute ("..m..") : Second ("..s..") ")
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