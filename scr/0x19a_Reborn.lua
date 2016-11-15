// =============================================================================================================================================================

/*
-----------------------
		[Fonts]
-----------------------
*/

surface.CreateFont("Logo",{font = "DefaultFixedOutline", size = 11, weight = 750, antialias = false, outline = true} );
surface.CreateFont("Witness",{font = "DefaultFixedOutline", size = 14, weight = 750, antialias = false, outline = true} );
surface.CreateFont("Crosshair",{font = "Default", size = 20, weight = 70, antialias = false, outline = true} );

// =============================================================================================================================================================

/*
-----------------------
		[Watermark]
-----------------------
*/

hook.Add("HUDPaint", "Watermark", function()
	draw.SimpleText("0x19a Hack","Logo",10,10,Color( 0, 150, 255, 255 ),4,1,1)
	draw.SimpleText("Version: Reborn","Logo",80,10,Color( 255, 255, 255, 255 ),4,1,1)
end)

// =============================================================================================================================================================

/*
-----------------------
		[ConVar]
-----------------------
*/

// Aimbot Related
local Aimbot                     = CreateConVar("Aimbot", 0, true, false)
local Boneaim                    = CreateConVar("Aimbot_Head", "ValveBiped.Bip01_Head1", true, false)
local Triggerbot                 = CreateConVar("Triggerbot", 0, true, false)
local Fov                        = CreateConVar("Aimbot_Fov", 360, true, false)
local AntiAim			         = CreateConVar("AntiAim", 0, true, false)

// Visual Related
local Chams						 = CreateConVar("Chams", 0, true, false)
local Fullbright			     = CreateConVar("Fullbright", 0, true, false)

// Miscellaneous Related
local CustCrosshair				 = CreateConVar("CustCrosshair", 1, true, false)
local Bunnyhop					 = CreateConVar("Bunnyhop", 1, true, false)

// =============================================================================================================================================================

/*
-----------------------
	  [Derma Menu]
-----------------------
*/

function Menu()

/* Derma Menu Panel */
local DermaPanel = vgui.Create( "DFrame" )
DermaPanel:SetPos( 50,50 )
DermaPanel:SetSize( 170, 180 )
DermaPanel:SetTitle( "0x19a Hack" )
DermaPanel:SetVisible( true )
DermaPanel:SetDraggable( true )
DermaPanel:ShowCloseButton( true )
DermaPanel:MakePopup()
DermaPanel.Paint = function()
    surface.SetDrawColor( 100, 100, 100, 150 )
    surface.DrawRect( 0, 0, DermaPanel:GetWide(), DermaPanel:GetTall() )
end

/* Aimbot Checkbox */
local CheckBoxAimbot = vgui.Create( "DCheckBoxLabel", DermaPanel )
CheckBoxAimbot:SetPos( 10,30 )
CheckBoxAimbot:SetText( "Aimbot" )
CheckBoxAimbot:SetConVar( "Aimbot" )
CheckBoxAimbot:SizeToContents()

/* Triggerbot Checkbox */
local CheckBoxTriggerbot = vgui.Create( "DCheckBoxLabel", DermaPanel )
CheckBoxTriggerbot:SetPos( 10,50 )
CheckBoxTriggerbot:SetText( "Triggerbot" )
CheckBoxTriggerbot:SetConVar( "Triggerbot" )
CheckBoxTriggerbot:SizeToContents()

/* AntiAim Checkbox */
local CheckBoxAntiAim = vgui.Create( "DCheckBoxLabel", DermaPanel )
CheckBoxAntiAim:SetPos( 10,70 )
CheckBoxAntiAim:SetText( "Anti Aim" )
CheckBoxAntiAim:SetConVar( "AntiAim" )
CheckBoxAntiAim:SizeToContents()

/* Chams Checkbox */
local CheckBoxChams = vgui.Create( "DCheckBoxLabel", DermaPanel )
CheckBoxChams:SetPos( 10,90 )
CheckBoxChams:SetText( "Chams" )
CheckBoxChams:SetConVar( "Chams" )
CheckBoxChams:SizeToContents()

/* Fullbright Checkbox */
local CheckBoxFullbright = vgui.Create( "DCheckBoxLabel", DermaPanel )
CheckBoxFullbright:SetPos( 10,110 )
CheckBoxFullbright:SetText( "FullBright" )
CheckBoxFullbright:SetConVar( "Fullbright" )
CheckBoxFullbright:SizeToContents()

/* Custom Crosshair Checkbox */
local CheckBoxCustCrosshair = vgui.Create( "DCheckBoxLabel", DermaPanel )
CheckBoxCustCrosshair:SetPos( 10,130 )
CheckBoxCustCrosshair:SetText( "Custom Crosshair" )
CheckBoxCustCrosshair:SetConVar( "CustCrosshair" )
CheckBoxCustCrosshair:SizeToContents()

/* Bunnyhop Checkbox */
local CheckBoxBunnyhop = vgui.Create( "DCheckBoxLabel", DermaPanel )
CheckBoxBunnyhop:SetPos( 10,150 )
CheckBoxBunnyhop:SetText( "Bunnyhop" )
CheckBoxBunnyhop:SetConVar( "Bunnyhop" )
CheckBoxBunnyhop:SizeToContents()

end

concommand.Add( "RebornMenu", Menu);

// =============================================================================================================================================================

/*
-----------------------
	    [Aimbot]
-----------------------
*/
local function IsVisible( ent )
local tracer = {}
	if(LocalPlayer():GetShootPos() != nil && ent:IsValid() && ent != nil && LocalPlayer():GetActiveWeapon():IsValid() && LocalPlayer():GetActiveWeapon() != nil && ent:LookupBone("ValveBiped.Bip01_Head1") != nil && ent:GetBonePosition(ent:LookupBone("ValveBiped.Bip01_Head1")) != nil) then
		tracer.start = LocalPlayer():GetShootPos()
		tracer.endpos = ent:GetBonePosition(ent:LookupBone("ValveBiped.Bip01_Head1"))
		tracer.filter = { LocalPlayer(), ent }
		tracer.mask = MASK_SHOT
		local trace = util.TraceLine( tracer )
		if trace.Fraction >= 1 then return true else return false end
	end
end

local function InFov(ent)

	for k,v in pairs(ents.FindInCone(LocalPlayer():GetShootPos(), LocalPlayer():GetAimVector(), 3000, GetConVarNumber("Aimbot_Fov")))  do
		if(v:IsPlayer() && ent == v) then
			return true
		else
			return false
		end
	end
end

local function AimHOOK()

	for k,v in pairs(player.GetAll()) do
	local bone = tostring(Boneaim:GetString())
		if IsVisible( v ) and LocalPlayer():Alive() and v:Alive() and v ~= LocalPlayer() and v:Team() ~= TEAM_SPECTATOR and LocalPlayer():Team() ~= TEAM_SPECTATOR and GetConVarNumber("Aimbot") == 1 and LocalPlayer():GetActiveWeapon():GetClass() ~= "weapon_physgun" and LocalPlayer():GetActiveWeapon():GetClass() ~= "gmod_tool" and LocalPlayer():GetActiveWeapon():GetClass() ~= "gmod_camera" and LocalPlayer():GetActiveWeapon():GetClass() ~= "weapon_crowbar" and LocalPlayer():GetActiveWeapon():GetClass() ~= "weapon_physcannon" && input.IsKeyDown(KEY_Z) then
			if GetConVarNumber("Aimbot_Onshoot") >= 1 then
				if LocalPlayer():KeyDown(IN_ATTACK) then
					if(GetConVarNumber("Aimbot_Infov") == 1) then
						if(InFov(v)) then
							local head = v:LookupBone(bone)
							local headpos,targetheadang = v:GetBonePosition(head)
							LocalPlayer():SetEyeAngles((headpos - LocalPlayer():GetShootPos()):Angle())
						end

					else
						local head = v:LookupBone(bone)
						local headpos,targetheadang = v:GetBonePosition(head)
						LocalPlayer():SetEyeAngles((headpos - LocalPlayer():GetShootPos()):Angle())
					end
				end
			else
				if(GetConVarNumber("Aimbot_Infov") == 1) then
					if(InFov(v)) then
						local head = v:LookupBone(bone)
						local headpos,targetheadang = v:GetBonePosition(head)
						LocalPlayer():SetEyeAngles((headpos - LocalPlayer():GetShootPos()):Angle())
					end

				else
					local head = v:LookupBone(bone)
					local headpos,targetheadang = v:GetBonePosition(head)
					LocalPlayer():SetEyeAngles((headpos - LocalPlayer():GetShootPos()):Angle())
				end
			end
		end
	end
end

hook.Add("Think", "AimHOOK", AimHOOK)

local function Fire()
	RunConsoleCommand("+attack")
end

local function StopFire()
	RunConsoleCommand("-attack")
end

// =============================================================================================================================================================

/*
-----------------------
	  [Triggerbot]
-----------------------
*/

hook.Add("Think", "Triggerbot", function()

	if(GetConVarNumber("Triggerbot") == 1) && input.IsKeyDown(KEY_Z)then
		local pos = LocalPlayer():GetShootPos()
		local ang = LocalPlayer():GetAimVector()
		local tracedata = {}
		tracedata.start = pos
		tracedata.endpos = pos+(ang*9999999999999)
		local trace = util.TraceLine(tracedata)
			if(trace.HitNonWorld) then
				target = trace.Entity
					if(target:IsPlayer()) then
						Fire()
						timer.Simple(0.1, StopFire)
					end
			end
	end
end)

// =============================================================================================================================================================

/*
-----------------------
		[Anti-Aim]
-----------------------
*/

function AntiAim()

	if GetConVarNumber("AntiAim") == 1 then
		for k, v in pairs(player.GetAll()) do
			if LocalPlayer():Alive() and v:Alive() then
					vdis = (v:GetPos() - LocalPlayer():GetPos()):Length()
			else
					vdis = nil
			end

			if (vdis != nil) and (vdis <= 1000) and IsVisible( v ) and LocalPlayer():Alive() and input.IsKeyDown(KEY_C) then
				local ply = LocalPlayer()
				local head = v:LookupBone("ValveBiped.Bip01_Head1")
				local headpos,headang = v:GetBonePosition(head)
				ply:SetEyeAngles((headpos - ply:GetShootPos()):Angle())
			end
		end
	end
end

hook.Add("Think", "AntiAim", AntiAim)

// =============================================================================================================================================================

/*
-----------------------
		[Chams]
-----------------------
*/

hook.Add("HUDPaint", "Chams", function()

	if GetConVarNumber("Chams") == 1 then
		for k,v in pairs(ents.GetAll()) do
			local col;
				if IsValid(v) and (v:IsPlayer() and v:Alive() and v:Health() > 0)  or (v:IsWeapon()) or (v:IsNPC()) then
					if (v:IsPlayer()) then
						col = team.GetColor(v:Team())
					elseif (v:IsWeapon()) then
						col = Color( 255, 0, 0, 0 )
					elseif (v:IsNPC()) then
						col = Color( 0, 255, 0, 0 )
					else
						col = Color( 255, 255, 255, 0 )
					end

					cam.Start3D(EyePos(),EyeAngles())
						v:DrawModel()
						render.SuppressEngineLighting( false )
						render.MaterialOverride( )
						v:DrawModel()
					cam.End3D()
				end
		end
	end
end)

// =============================================================================================================================================================

/*
-----------------------
	  [Fullbright]
-----------------------
*/

function Fullbright()
	if GetConVarNumber("Fullbright") == 1 then
		GetConVar("mat_fullbright"):SetValue(1)
	else
		GetConVar("mat_fullbright"):SetValue(0)
	end
end

hook.Add("Think", "Fullbright", Fullbright)

// =============================================================================================================================================================

/*
-----------------------
   [Custom Crosshair]
-----------------------
*/

function DrawRotatingCrosshair(x,y,time,length,gap)
	surface.DrawLine( x + (math.sin(math.rad(time)) * length), y + (math.cos(math.rad(time)) * length),x + (math.sin(math.rad(time)) * gap),y + (math.cos(math.rad(time)) * gap))
end

hook.Add("HUDPaint", "Crosshair", function()

	if(GetConVarNumber("CustCrosshair") == 1) then
		local x,y = ScrW(),ScrH()
		local w,h = x/2,y/2
		surface.SetDrawColor(Color( 0, 0, 0, 255 ))
		surface.DrawRect(w - 1, h - 3, 3, 7)
		surface.DrawRect(w - 3, h - 1, 7, 3)
		surface.SetDrawColor(Color( 0, 0, 0, 255 ))
		surface.DrawLine(w, h - 2, w, h + 3)
		surface.DrawLine(w - 2, h, w + 3, h)
		local time = CurTime() * -180
		local scale = 10 * 0.02
		local gap = 40 * scale
		local length = gap + 20 * scale
		surface.SetDrawColor( 0, 0, 0, 255 )
		DrawRotatingCrosshair(w,h,time,      length,gap)
		DrawRotatingCrosshair(w,h,time + 90, length,gap)
		DrawRotatingCrosshair(w,h,time + 180,length,gap)
		DrawRotatingCrosshair(w,h,time + 270,length,gap)
	end
end)

// =============================================================================================================================================================

/*
-----------------------
	   [Bunnyhop]
-----------------------
*/

function Bunnyhop()

	if GetConVarNumber("Bunnyhop") == 1 then
		if input.IsKeyDown(KEY_SPACE) then
			if LocalPlayer():IsOnGround() then
				RunConsoleCommand("+jump")
			timer.Create("Bhop", 0, 0.01, function()
				RunConsoleCommand("-jump")

				end)
			end
		end
	end
end

hook.Add("Think", "Bunnyhop", Bunnyhop )

// =============================================================================================================================================================