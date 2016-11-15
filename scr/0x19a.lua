-- Do not change this
HackVersion	= 1.2

/*
Creator:
	  ###            #    #####
	 #   #  #    #  ##   #     #   ##
	#     #  #  #  # #   #     #  #  #
	#     #   ##     #    ###### #    #
	#     #   ##     #         # ######
	 #   #   #  #    #   #     # #    #
	  ###   #    # #####  #####  #    #

Date:
      ###    #####        #   ###   #######       #  #####    ###     #    #####
	 #   #  #     #      #   #   #  #            #  #     #  #   #   ##   #     #
	#     # #     #     #   #     # #           #         # #     # # #         #
	#     #  #####     #    #     # ######     #     #####  #     #   #    #####
	#     # #     #   #     #     #       #   #     #       #     #   #         #
	 #   #  #     #  #       #   #  #     #  #      #        #   #    #   #     #
	  ###    #####  #         ###    #####  #       #######   ###   #####  #####

Version:
	  #        #####
	 ##       #     #
	# #             #
      #        #####
      #       #
      #       #
	#####  #  #######

*/



/*
	 #####
	#     # #    #   ##   #    #  ####  ###### #       ####   ####
	#       #    #  #  #  ##   # #    # #      #      #    # #    #
	#       ###### #    # # #  # #      #####  #      #    # #
	#       #    # ###### #  # # #  ### #      #      #    # #  ###
	#     # #    # #    # #   ## #    # #      #      #    # #    #
	 #####  #    # #    # #    #  ####  ###### ######  ####   ####

Version:

Public Release
				1.2
					[ADDED]
						Anti-Aim
						180 Degress Spin
						DarkRP Name Changer
						ESP Admin Shower
						ESP Friend Shower

					[REMOVED]
						Bypasser

				1.1
					[ADDED]
						New Menu
						Notifications
						Speedhack
						Bypasser
						Authentication
						Clientside No-Clip
						Player Bones

					[REMOVED]
						Radar

				1.0
					[ADDED]
						Hack Version
						Custom Chat Spam Message
						New Custom Crosshair

					[FIXED]
						RPGod
						Chams
						Thirdperson
						Colour Console
						ESP Checker

					[REMOVED]
						RPGod
						Custom Crosshair
						ESP Line
						ESP Line Team

Private
				0.6
					[ADDED]
						RPGod
						Chams
						ESP Skeleton
						Thirdperson
						ESP Checker
						ESP Line
						ESP Line Team

					[FIXED]
						ESP Info
						ESP Box

					[REMOVED]
						Anti-Aim

				0.5
					[ADDED]
						Anti-Aim
						ESP Tracer
						ESP Tracer Team
						ESP Tracer Highlight

				0.4
					[ADDED]
						Flashlight Spam
						Show Spectaters
						Show Admins
						Colour Console

				0.3.5
					[ADDED]
						Aimbot OnShoot
						Aimbot InFov

					[IMPROVED]
						Radar

				0.3.2
					[ADDED]
						Radar

					[IMPROVED]
						Aimbot
						ESP Box
						No Recoil

				0.3
					[ADDED]
						Menu
						ESP Box
						Chat Spam
						Custom Crosshair

				0.2
					[ADDED]
						ESP Info
						Bunnyhop

					[FIXED]
						No Recoil
						Auto Relaod

					[IMPROVED]
						Aimbot

				0.1
					[ADDED]
						Aimbot
						Triggerbot
						Watermark
						No Recoil
						Auto Reload
*/



/*
Name:
	#     #                         #
	#     #   ##    ####  #    #    #        ####    ##   #####  ###### #####
	#     #  #  #  #    # #   #     #       #    #  #  #  #    # #      #    #
	####### #    # #      ####      #       #    # #    # #    # #####  #    #
	#     # ###### #      #  #      #       #    # ###### #    # #      #    #
	#     # #    # #    # #   #     #       #    # #    # #    # #      #    #
	#     # #    #  ####  #    #    #######  ####  #    # #####  ###### #####

Purpose:
		Prints a message saying the hack has successfully loaded.
*/

print(" ");
MsgC( Color ( 255, 255, 255 ), "["..os.date().."]" );
MsgC( Color ( 0, 255, 255 ), " Loaded.\n" );
print(" ")



/*
Name:							Under Development
       #
	  # #   #    # ##### #    # ###### #    # ##### #  ####    ##   ##### #  ####  #    #
	 #   #  #    #   #   #    # #      ##   #   #   # #    #  #  #    #   # #    # ##   #
	#     # #    #   #   ###### #####  # #  #   #   # #      #    #   #   # #    # # #  #
	####### #    #   #   #    # #      #  # #   #   # #      ######   #   # #    # #  # #
	#     # #    #   #   #    # #      #   ##   #   # #    # #    #   #   # #    # #   ##
	#     #  ####    #   #    # ###### #    #   #   #  ####  #    #   #   #  ####  #    #

Purpose:
		Checks to see if you are a developer or not.
*/

local Creator					= {}

// SteamIDs of 0x19aHack
Creator.dev					= {
"STEAM_0:1:64582787", // 0x19a (Creator)
}

// Checks to see if the creator on the server.
function Creator:IsDev(ply)

	if table.HasValue(Creator.dev,ply:SteamID()) then

		return true

	else

		return false

	end

end

// Skid Checker
function skid()

	if Creator:IsDev(LocalPlayer()) then

		include("SkidCheck.lua")

	else

		RunConsoleCommand("say"," ")

	end

end

concommand.Add( "skid", skid);



/*
Name:
	#######
	#        ####  #    # #####  ####
	#       #    # ##   #   #   #
	#####   #    # # #  #   #    ####
	#       #    # #  # #   #        #
	#       #    # #   ##   #   #    #
	#        ####  #    #   #    ####

Purpose:
		Different Fonts for the hack.
*/

surface.CreateFont("ESPFont",{font = "BudgetLabel", size = 11, weight = 75, antialias = false, outline = true} );
surface.CreateFont("Logo",{font = "MenuLarge", size = 20, weight = 750, antialias = false, outline = true} );
surface.CreateFont("Logo_Small",{font = "DefaultFixedOutline", size = 15, weight = 750, antialias = false, outline = true} );
surface.CreateFont("Crosshair",{font = "Default", size = 20, weight = 70, antialias = false, outline = true} );
//surface.CreateFont("Radar",{font = "TargetID", size = 12, weight = 750, antialias = false, outline = true} );


--[[
/*
Name:							Under Development
	######                                       ######
	#     # #        ##   #   # ###### #####     #     #  ####  #    # ######  ####
	#     # #       #  #   # #  #      #    #    #     # #    # ##   # #      #
	######  #      #    #   #   #####  #    #    ######  #    # # #  # #####   ####
	#       #      ######   #   #      #####     #     # #    # #  # # #           #
	#       #      #    #   #   #      #   #     #     # #    # #   ## #      #    #
	#       ###### #    #   #   ###### #    #    ######   ####  #    # ######  ####

Purpose:
		Used for eith the aimspot, or the skeleton ESP.
*/

// Used for aimspot for the aimbot.
Aimspot.bones					= {
{"Head", "ValveBiped.Bip01_Head1"},
{"Neck", "ValveBiped.Bip01_Neck1"},
{"Spine", "ValveBiped.Bip01_Spine"},
{"Spine1", "ValveBiped.Bip01_Spine1"},
{"Spine2", "ValveBiped.Bip01_Spine2"},
{"Spine4", "ValveBiped.Bip01_Spine4"},
{"Pelvis", "ValveBiped.Bip01_Pelvis"},
{"R Upperarm", "ValveBiped.Bip01_R_UpperArm"},
{"R Forearm", "ValveBiped.Bip01_R_Forearm"},
{"R Hand", "ValveBiped.Bip01_R_Hand"},
{"L Upperarm", "ValveBiped.Bip01_L_UpperArm"},
{"L Forearm", "ValveBiped.Bip01_L_Forearm"},
{"L Hand", "ValveBiped.Bip01_L_Hand"},
{"R Thigh", "ValveBiped.Bip01_R_Thigh"},
{"R Calf", "ValveBiped.Bip01_R_Calf"},
{"R Foot", "ValveBiped.Bip01_R_Foot"},
{"R Toes", "ValveBiped.Bip01_R_Toe0"},
{"L Thigh", "ValveBiped.Bip01_L_Thigh"},
{"L Calf", "ValveBiped.Bip01_L_Calf"},
{"L Foot", "ValveBiped.Bip01_L_Foot"},
{"L Toes", "ValveBiped.Bip01_L_Toe0"},
}

// Used for ESP Skeleton
ESPBones.bones = {
{ S = "ValveBiped.Bip01_Head1", E = "ValveBiped.Bip01_Neck1" },
{ S = "ValveBiped.Bip01_Neck1", E = "ValveBiped.Bip01_Spine4" },
{ S = "ValveBiped.Bip01_Spine4", E = "ValveBiped.Bip01_Spine2" },
{ S = "ValveBiped.Bip01_Spine2", E = "ValveBiped.Bip01_Spine1" },
{ S = "ValveBiped.Bip01_Spine1", E = "ValveBiped.Bip01_Spine" },
{ S = "ValveBiped.Bip01_Spine", E = "ValveBiped.Bip01_Pelvis" },
{ S = "ValveBiped.Bip01_Spine4", E = "ValveBiped.Bip01_L_UpperArm" },
{ S = "ValveBiped.Bip01_L_UpperArm", E = "ValveBiped.Bip01_L_Forearm" },
{ S = "ValveBiped.Bip01_L_Forearm", E = "ValveBiped.Bip01_L_Hand" },
{ S = "ValveBiped.Bip01_Spine4", E = "ValveBiped.Bip01_R_UpperArm" },
{ S = "ValveBiped.Bip01_R_UpperArm", E = "ValveBiped.Bip01_R_Forearm" },
{ S = "ValveBiped.Bip01_R_Forearm", E = "ValveBiped.Bip01_R_Hand" },
{ S = "ValveBiped.Bip01_Pelvis", E = "ValveBiped.Bip01_L_Thigh" },
{ S = "ValveBiped.Bip01_L_Thigh", E = "ValveBiped.Bip01_L_Calf" },
{ S = "ValveBiped.Bip01_L_Calf", E = "ValveBiped.Bip01_L_Foot" },
{ S = "ValveBiped.Bip01_L_Foot", E = "ValveBiped.Bip01_L_Toe0" },
{ S = "ValveBiped.Bip01_Pelvis", E = "ValveBiped.Bip01_R_Thigh" },
{ S = "ValveBiped.Bip01_R_Thigh", E = "ValveBiped.Bip01_R_Calf" },
{ S = "ValveBiped.Bip01_R_Calf", E = "ValveBiped.Bip01_R_Foot" },
{ S = "ValveBiped.Bip01_R_Foot", E = "ValveBiped.Bip01_R_Toe0" },
}
]]


/*
Name:
	 #####                                         #####                                                #####
	#     #  ####  #       ####  #    # #####     #     #  ####  #    #  ####   ####  #      ######    #     #  ####  #    # #    #   ##   #    # #####
	#       #    # #      #    # #    # #    #    #       #    # ##   # #      #    # #      #         #       #    # ##  ## ##  ##  #  #  ##   # #    #
	#       #    # #      #    # #    # #    #    #       #    # # #  #  ####  #    # #      #####     #       #    # # ## # # ## # #    # # #  # #    #
	#       #    # #      #    # #    # #####     #       #    # #  # #      # #    # #      #         #       #    # #    # #    # ###### #  # # #    #
	#     # #    # #      #    # #    # #   #     #     # #    # #   ## #    # #    # #      #         #     # #    # #    # #    # #    # #   ## #    #
	 #####   ####  ######  ####   ####  #    #     #####   ####  #    #  ####   ####  ###### ######     #####   ####  #    # #    # #    # #    # #####

Purpose:
		Prints messages in colour.
*/

local TH = { };
TH.Print = MsgC;



/*
Name:
	#######  #####  ######   #####
	#       #     # #     # #     # #    # ######  ####  #    #
	#       #       #     # #       #    # #      #    # #   #
	#####    #####  ######  #       ###### #####  #      ####
	#             # #       #       #    # #      #      #  #
	#       #     # #       #     # #    # #      #    # #   #
	#######  #####  #        #####  #    # ######  ####  #    #

 Purpose:
		Checks to see if things are valid or not.
 */

local function ESPCheck(v)

	if v:Alive() == true && v:Health() ~= 0 && v:Health() >= 0 && v ~= LocalPlayer() && LocalPlayer():Alive() then

		return true

	else

		return false

	end

end



/*
Name:
	#     #
	#  #  #   ##   ##### ###### #####  #    #   ##   #####  #    #
	#  #  #  #  #    #   #      #    # ##  ##  #  #  #    # #   #
	#  #  # #    #   #   #####  #    # # ## # #    # #    # ####
	#  #  # ######   #   #      #####  #    # ###### #####  #  #
	#  #  # #    #   #   #      #   #  #    # #    # #   #  #   #
	 ## ##  #    #   #   ###### #    # #    # #    # #    # #    #

Purpose:
		Draws the watermark onto the screen.
*/

hook.Add("HUDPaint", "Watermark", function()

	// Prints the hack name into the top left
	draw.SimpleText("0x19a Hack","Logo_Small",10,10,Color( 0, 150, 255, 255 ),4,1,1)

	// Prints the hack version below the hack name.
	draw.SimpleText("Version "..HackVersion,"Logo_Small",11,23,Color( 255, 255, 255, 255 ),4,1,1)

end)



/*
Name:
	 #####                          #####                          #     #
	#     # #    #   ##   #####    #     # #####    ##   #    #    ##   ## ######  ####   ####    ##    ####  ######
	#       #    #  #  #    #      #       #    #  #  #  ##  ##    # # # # #      #      #       #  #  #    # #
	#       ###### #    #   #       #####  #    # #    # # ## #    #  #  # #####   ####   ####  #    # #      #####
	#       #    # ######   #            # #####  ###### #    #    #     # #           #      # ###### #  ### #
	#     # #    # #    #   #      #     # #      #    # #    #    #     # #      #    # #    # #    # #    # #
	 #####  #    # #    #   #       #####  #      #    # #    #    #     # ######  ####   ####  #    #  ####  ######

Purpose:
		Allows the user to spam whatever they like.
*/

ChatSpamMsg = ("|[ 0x19a Garry's Mod Hack Version "..HackVersion.." ]|")




/*
Name:
	 #####                #     #
	#     #  ####  #    # #     #   ##   #####
	#       #    # ##   # #     #  #  #  #    #
	#       #    # # #  # #     # #    # #    #
	#       #    # #  # #  #   #  ###### #####
	#     # #    # #   ##   # #   #    # #   #
	 #####   ####  #    #    #    #    # #    #

Purpose:
		[ Enter Purpose Here ]
*/

// Aimbot Related
local Aimbot                     = CreateConVar("Aimbot", 0, true, false)
local AimbotOnShoot      	     = CreateConVar("Aimbot_Onshoot", 0, true, false)
local Boneaim                    = CreateConVar("Aimbot_Head", "ValveBiped.Bip01_Head1", true, false)
local InFov                      = CreateConVar("Aimbot_Infov", 0, true, false)
local Fov                        = CreateConVar("Aimbot_Fov", 360, true, false)
local Triggerbot                 = CreateConVar("Triggerbot", 0, true, false)
local NoRecoil                	 = CreateConVar("NoRecoil", 0, true, false)
local AutoReload                 = CreateConVar("AutoReload", 0, true, false)
local AntiAim			         = CreateConVar("AntiAim", 0, true, false)

// Visual Related
local ESP					     = CreateConVar("ESP", 0, true, false)
local ESPBox                	 = CreateConVar("ESPBox", 0, true, false)
local Chams						 = CreateConVar("Chams", 0, true, false)
local Glow						 = CreateConVar("Glow", 0, true, false)
local Tracer 				     = CreateConVar("Tracer", 0, true, false)
local TracerTeam				 = CreateConVar("TracerTeam", 0, true, false)
local TracerHighlight 			 = CreateConVar("TracerHighlight", 0, true, false)
local Fullbright			     = CreateConVar("Fullbright", 0, true, false)
//local Radar                		 = CreateConVar("Radar", 1, true, false)

// Misc(ellaneous) Related
local CustCrosshair				 = CreateConVar("CustCrosshair", 1, true, false)
local ChatSpam               	 = CreateConVar("ChatSpam", 0, true, false)
local Bunnyhop					 = CreateConVar("Bunnyhop", 1, true, false)
local FlashlightSpam			 = CreateConVar("FlashlightSpam", 0, true, false)
local ShowSpec				     = CreateConVar("ShowSpec", 0, true, false)
local ShowAdmins				 = CreateConVar("ShowAdmins", 0, true, false)
local RPGod					     = CreateConVar("RPGod", 0, true, false)
local TPerson					 = CreateConVar("TPerson", 0, true, false)
local ShowNotifications			 = CreateConVar("ShowNotifications", 1, true, false)



/*
Name:
	######
	#     # #    # #    # #    # #   # #    #  ####  #####
	#     # #    # ##   # ##   #  # #  #    # #    # #    #
	######  #    # # #  # # #  #   #   ###### #    # #    #
	#     # #    # #  # # #  # #   #   #    # #    # #####
	#     # #    # #   ## #   ##   #   #    # #    # #
	######   ####  #    # #    #   #   #    #  ####  #

Purpose:
		Automatically jumps for you.
*/

local Bunnyhop = true
hook.Add("Think", "Bunnyhop", function()

	if(GetConVarNumber("Bunnyhop") == 1) then

		if (input.IsKeyDown( KEY_SPACE ) ) then

			if LocalPlayer():IsOnGround() then

				RunConsoleCommand("+jump")
				HasJumped = 1

			else

				RunConsoleCommand("-jump")
				HasJumped = 0

			end

		elseif Bunnyhop and LocalPlayer():IsOnGround() then

			if HasJumped == 1 then

				RunConsoleCommand("-jump")
				HasJumped = 0

			end

		end

	end

end)



/*
Name:
	 #####                                        #####
	#     # #    #  ####  #####  ####  #    #    #     # #####   ####   ####   ####  #    #   ##   # #####
	#       #    # #        #   #    # ##  ##    #       #    # #    # #      #      #    #  #  #  # #    #
	#       #    #  ####    #   #    # # ## #    #       #    # #    #  ####   ####  ###### #    # # #    #
	#       #    #      #   #   #    # #    #    #       #####  #    #      #      # #    # ###### # #####
	#     # #    # #    #   #   #    # #    #    #     # #   #  #    # #    # #    # #    # #    # # #   #
	 #####   ####   ####    #    ####  #    #     #####  #    #  ####   ####   ####  #    # #    # # #    #

Purpose:
		Draws a custom crosshair on the screen.
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

		surface.SetDrawColor(Color( 255, 0, 0, 255 ))
		surface.DrawLine(w, h - 2, w, h + 3)
		surface.DrawLine(w - 2, h, w + 3, h)

		local time = CurTime() * -180
		local scale = 10 * 0.02
		local gap = 40 * scale
		local length = gap + 20 * scale

		surface.SetDrawColor( 255, 0, 0, 255 )
		DrawRotatingCrosshair(w,h,time,      length,gap)
		DrawRotatingCrosshair(w,h,time + 90, length,gap)
		DrawRotatingCrosshair(w,h,time + 180,length,gap)
		DrawRotatingCrosshair(w,h,time + 270,length,gap)

	end

end)



/*
Name:
	#######  #####  ######     #######
	#       #     # #     #       #    #####    ##    ####  ###### #####
	#       #       #     #       #    #    #  #  #  #    # #      #    #
	#####    #####  ######        #    #    # #    # #      #####  #    #
	#             # #             #    #####  ###### #      #      #####
	#       #     # #             #    #   #  #    # #    # #      #   #
	#######  #####  #             #    #    # #    #  ####  ###### #    #

Purpose:
		Draws a line from your crosshair to the players.
*/

hook.Add("HUDPaint", "ESPTracer", function()

	if GetConVarNumber("Tracer") == 1 then

		for k,v in pairs(player.GetAll()) do

			local ETrace = v:EyePos():ToScreen()
			local x = ScrW() / 2
			local y = ScrH() / 2

			if GetConVarNumber("TracerTeam") >= 1 then

				surface.SetDrawColor(team.GetColor(v:Team()))

			else

				surface.SetDrawColor( 128, 0, 128, 500 )

			end

			if ESPCheck(v) then

				if GetConVarNumber("TracerHighlight") >= 1 then

				local trace = LocalPlayer():GetEyeTrace().Entity

					if trace:IsPlayer() && trace:IsValid() && LocalPlayer():GetActiveWeapon():IsValid() then

						surface.SetDrawColor( 128, 0, 128, 500 )
						surface.DrawLine(ETrace.x, ETrace.y, x, y)
						surface.SetDrawColor( 255, 255, 255, 500 )

					end

				end

				surface.DrawLine(ETrace.x, ETrace.y, x, y)

			end

		end

	end

end)



/*
Name:
	 #####                          #####
	#     # #    #   ##   #####    #     # #####    ##   #    # #    # ###### #####
	#       #    #  #  #    #      #       #    #  #  #  ##  ## ##  ## #      #    #
	#       ###### #    #   #       #####  #    # #    # # ## # # ## # #####  #    #
	#       #    # ######   #            # #####  ###### #    # #    # #      #####
	#     # #    # #    #   #      #     # #      #    # #    # #    # #      #   #
	 #####  #    # #    #   #       #####  #      #    # #    # #    # ###### #    #

Purpose:
		Spams the chat quickly.
*/

local function Spam()

	if ChatSpam:GetBool() then

		RunConsoleCommand("say",ChatSpamMsg)

	end

end

timer.Create("Spam", 0.01,0,Spam)



/*
Name:						Under Development
       #                           ######
	  # #   #    # #####  ####     #     # ###### #       ####    ##   #####
	 #   #  #    #   #   #    #    #     # #      #      #    #  #  #  #    #
	#     # #    #   #   #    #    ######  #####  #      #    # #    # #    #
	####### #    #   #   #    #    #   #   #      #      #    # ###### #    #
	#     # #    #   #   #    #    #    #  #      #      #    # #    # #    #
	#     #  ####    #    ####     #     # ###### ######  ####  #    # #####

Purpose:
		Automatically reloads the weapon.
*/

local LastReload = 0
local DontReload = {"weapon_physgun" , "gmod_tool" , "weapon_gravgun", "weapon_keys", "weapon_pocket", "pocket", "rp_pocket", "rp_keys", "keys"}

function AutoReload()

	if (GetConVarNumber("AutoReload") == 1 and LocalPlayer():Alive() and IsValid( LocalPlayer():GetActiveWeapon() ) and !table.HasValue( DontReload, LocalPlayer():GetActiveWeapon():GetClass() ) ) then

				if( LocalPlayer():GetActiveWeapon():Clip1() <= 0 and CurTime() > ( LastReload + 5 ) ) then

					RunConsoleCommand( "+reload" )
					LastReload = CurTime()

						AddTimer( .2, 1, function()

							RunConsoleCommand( "-reload" )

						end)

				end

	end

end



/*
Name:
   ###           #######                                                  #     #
	#  #    #    #       # ###### #      #####         ####  ######       #     # # ###### #    #
	#  ##   #    #       # #      #      #    #       #    # #            #     # # #      #    #
	#  # #  #    #####   # #####  #      #    # ##### #    # #####  ##### #     # # #####  #    #
	#  #  # #    #       # #      #      #    #       #    # #             #   #  # #      # ## #
	#  #   ##    #       # #      #      #    #       #    # #              # #   # #      ##  ##
   ### #    #    #       # ###### ###### #####         ####  #               #    # ###### #    #

Purpose:
		Checks to see if the player is in your FOV.
*/

local function InFov(ent)

	for k,v in pairs(ents.FindInCone(LocalPlayer():GetShootPos(), LocalPlayer():GetAimVector(), 3000, GetConVarNumber("Aimbot_Fov")))  do

		if(v:IsPlayer() && ent == v) then

			return true

		else

			return false

		end

	end

end



/*
Name:
	#     #                                    #######
	#     # #  ####  # #####  #      ######    #     # #    #  ####   ####  #####  ###### ###### #    #
	#     # # #      # #    # #      #         #     # ##   # #      #    # #    # #      #      ##   #
	#     # #  ####  # #####  #      #####     #     # # #  #  ####  #      #    # #####  #####  # #  #
	 #   #  #      # # #    # #      #         #     # #  # #      # #      #####  #      #      #  # #
	  # #   # #    # # #    # #      #         #     # #   ## #    # #    # #   #  #      #      #   ##
	   #    #  ####  # #####  ###### ######    ####### #    #  ####   ####  #    # ###### ###### #    #

Purpose:
		Checks to see if the player model is visible.
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



/*
Name:
	   #
	  # #   # #    # #####   ####  #####
	 #   #  # ##  ## #    # #    #   #
	#     # # # ## # #####  #    #   #
	####### # #    # #    # #    #   #
	#     # # #    # #    # #    #   #
	#     # # #    # #####   ####    #

Purpose:
		Automatically aims at the player.
*/

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



/*
Name:
 #######
    #    #####  #  ####   ####  ###### #####  #####   ####  #####
    #    #    # # #    # #    # #      #    # #    # #    #   #
	#    #    # # #      #      #####  #    # #####  #    #   #
	#    #####  # #  ### #  ### #      #####  #    # #    #   #
	#    #   #  # #    # #    # #      #   #  #    # #    #   #
	#    #    # #  ####   ####  ###### #    # #####   ####    #

Purpose:
		Shoots if crosshair is over player.
*/

hook.Add("Think", "Triggerbot", function()

	if(GetConVarNumber("triggerbot") == 1) && input.IsKeyDown(KEY_Z)then

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




/*
Name:
	######
	#     #   ##   #####    ##   #####
	#     #  #  #  #    #  #  #  #    #
	######  #    # #    # #    # #    #
	#   #   ###### #    # ###### #####
	#    #  #    # #    # #    # #   #
	#     # #    # #####  #    # #    #

Purpose:
		Shows players on a 'mini-map'.
*/
/*
function DoChecksRadar( e )

	local ply, val = LocalPlayer(), 0

		if ( e:IsPlayer() && e:GetMoveType() == MOVETYPE_OBSERVER ) then return false end
		if ( !e:IsValid() || !e:IsPlayer() && !e:IsNPC() || e == ply ) then return false end
		if ( e:IsPlayer() && !e:Alive() ) then return false end
		if ( e:IsNPC() && e:GetMoveType() == 0 ) then return false end
		if ( e:IsWeapon() && e:GetMoveType() == 0 ) then return false end

return true

end

local RRadar

function Radar()

	if GetConVarNumber("Radar") == 1 then

		local Radar = vgui.Create( "DFrame" )
		Radar:SetSize( 250, 250 )
		local rW, rH, x, y = Radar:GetWide(), Radar:GetTall(), ScrW() / 2, ScrH() / 2
		local sW, sH = ScrW(), ScrH()
		Radar:SetPos( 25, 50)
		Radar:SetTitle( "Radar" )
		Radar:SetVisible( true )
		Radar:SetDraggable( true )
		Radar:ShowCloseButton( false )
		Radar:MakePopup()

		Radar.Paint = function()
		draw.RoundedBox( 2, 0, 0, rW, rH, Color( 0, 0, 0, 100 ) )
		surface.SetDrawColor( 255, 255, 225, 255 )
		local ply = LocalPlayer()
		local radar = {}
		radar.h         = 250
		radar.w         = 250
		radar.org       = 5000
		local x, y = ScrW() / 2, ScrH() / 2
		local half = rH / 2
		local xm = half
		local ym = half
		surface.DrawLine( xm, ym - 100, xm, ym + 100 )
		surface.DrawLine( xm - 100, ym, xm + 100, ym )

			for k, e in pairs( ents.GetAll() ) do

				if ( DoChecksRadar(e) ) then

					local s = 6
					local col = SetColors(e)
					local color = Color( col.r, col.g, col.b, 255 )
					local plyfov = ply:GetFOV() / ( 70 / 1.13 )
					local zpos, npos = ply:GetPos().z - ( e:GetPos().z ), ( ply:GetPos() - e:GetPos() )
					npos:Rotate( Angle( 180, ( ply:EyeAngles().y ) * -1, -180 ) )
					local iY = npos.y * ( radar.h / ( ( radar.org * ( plyfov  * ( ScrW() / ScrH() ) ) ) + zpos * ( plyfov  * (ScrW() / ScrH() ) ) ) )
					local iX = npos.x * ( radar.w / ( ( radar.org * ( plyfov  * ( ScrW() / ScrH() ) ) ) + zpos * ( plyfov  * (ScrW() / ScrH() ) ) ) )
					local pX = ( radar.w / 2 )
					local pY = ( radar.h / 2 )
					local posX = pX - iY - ( s / 2 )
					local posY = pY - iX - ( s / 2 )
					local text = e:GetClass()

						if ( e:IsPlayer() ) && ( e:Health() )  then
							text = e:Nick() .. " ["..e:Health().."]"

						elseif ( e:IsNPC() ) then
							text = "NPC"

						elseif (IsCustomEnt(e:GetClass())) then
							text = "Item"

						end

							if iX < ( radar.h / 2 ) && iY < ( radar.w / 2 ) && iX > ( -radar.h / 2 ) && iY > ( -radar.w / 2 ) then

								draw.RoundedBox( s, posX, posY, s, s, color )
								draw.DrawText( text, "Radar", pX - iY - 4, pY - iX - 15 - ( s / 2 ), color, 1, TEXT_ALIGN_LEFT )

							end

				end

			end

		end

Radar:SetMouseInputEnabled( false )

Radar:SetKeyboardInputEnabled( false )

RRadar = Radar

	end

end

Radar()
*/



/*
Name:
	#######  #####  ######     ###
	#       #     # #     #     #  #    # ######  ####
	#       #       #     #     #  ##   # #      #    #
	#####    #####  ######      #  # #  # #####  #    #
	#             # #           #  #  # # #      #    #
	#       #     # #           #  #   ## #      #    #
	#######  #####  #          ### #    # #       ####

Purpose:
		Displays players name and health.
*/
/*
function ESP()

	for k, v in pairs( player.GetAll() ) do

		// Used for Distance ESP.
		local Dist = v:GetPos():Distance(LocalPlayer():GetPos());

	end

end
*/
hook.Add( "HUDPaint", "ESP", function()

	if (GetConVarNumber("ESP") == 1) then

		for k,v in pairs ( player.GetAll() ) do

			if LocalPlayer():Alive() and v:Alive() then
				vdis = (v:GetPos() - LocalPlayer():GetPos()):Length()
			else
				vdis = nil
			end

			// Name of the Player
			local Name = ""
			if v == LocalPlayer() then Name = "" else Name = v:Name() end
				if (vdis != nil) and (vdis <= 10000) and v:Alive() then
					local Position = ( v:GetPos() + Vector( 0, -20, 70 ) ):ToScreen()
					draw.SimpleText(Name, "ESPFont", Position.x, Position.y, Color( 255, 0, 0, 255 ), 1 )
				end
			end

			// Health of the Player
			local Health = ""
			if v == LocalPlayer() then Health = "" else Health = v:Health() end
				if (vdis != nil) and (vdis <= 10000) and v:Alive() then
					local Position = ( v:GetPos() + Vector( 0, -20, 60 ) ):ToScreen()
					draw.SimpleText(Health, "ESPFont", Position.x - 2, Position.y, Color( 0, 255, 0, 255 ), 1 )
				end
			end

			// Players Weapon
			local GetActiveWeapon = ""
				if v == LocalPlayer() then GetActiveWeapon = "" else GetActiveWeapon = v:GetActiveWeapon() end
				if (vdis != nil) and (vdis <= 10000) and v:Alive() then
					local Position = ( v:GetPos() + Vector( 0, -20, 50 ) ):ToScreen()
					draw.DrawText(GetActiveWeapon():GetClass(), "ESPFont", Position.x, Position.y + 10, Color(255,255,255), 1)
				end
			end

			// Displays if the player is an Admin, or a Friend.
			if v:IsAdmin() or v:IsSuperAdmin() then
				if (vdis != nil) and (vdis <= 10000) and v:Alive() then

				local Position = ( v:GetPos() + Vector( 0, 0, 80 ) ):ToScreen()
				draw.DrawText("[Admin]", "ESPFont", Position.x, Position.y, Color(220,60,90,255), 1)

			elseif v:GetFriendStatus() == "friend" then

				local Position = ( v:GetPos() + Vector( 0, 0, 80 ) ):ToScreen()
				draw.DrawText("[Friend]", "ESPFont", Position.x, Position.y, Color(120,100,50,255), 1)

				end

			end

		end

	end

end)



/*
Name:
	#######  #####  ######     ######
	#       #     # #     #    #     #  ####  #    #
	#       #       #     #    #     # #    #  #  #
	#####    #####  ######     ######  #    #   ##
	#             # #          #     # #    #   ##
	#       #     # #          #     # #    #  #  #
	#######  #####  #          ######   ####  #    #

Purpose:
		Draws a box around players.
*/

local function coordinates( ent )
	local min, max = ent:OBBMins(), ent:OBBMaxs()
		local corners = {
			Vector( min.x, min.y, min.z ),
			Vector( min.x, min.y, max.z ),
			Vector( min.x, max.y, min.z ),
			Vector( min.x, max.y, max.z ),
			Vector( max.x, min.y, min.z ),
			Vector( max.x, min.y, max.z ),
			Vector( max.x, max.y, min.z ),
			Vector( max.x, max.y, max.z )
}

local minX, minY, maxX, maxY = ScrW() * 2, ScrH() * 2, 0, 0

for _, corner in pairs( corners ) do

	 local onScreen = ent:LocalToWorld( corner ):ToScreen()
		minX, minY = math.min( minX, onScreen.x ), math.min( minY, onScreen.y )
		maxX, maxY = math.max( maxX, onScreen.x ), math.max( maxY, onScreen.y )

end

return minX, minY, maxX, maxY

end

hook.Add("HUDPaint", "ESP Box", function()
	if(GetConVarNumber("ESPBox") == 1) then

		for k,v in pairs(player.GetAll()) do

			local x1,y1,x2,y2 = coordinates(v)

			surface.SetDrawColor( 255, 255, 95, 255 )

			//Top Left
			surface.DrawLine( x1, y1, math.min( x1 + 10000, x2 ), y1 )
			surface.DrawLine( x1, y1, x1, math.min( y1 + 10000, y2 ) )

			//Top Right
			surface.DrawLine( x2, y1, math.max( x2 - 10000, x1 ), y1 )
			surface.DrawLine( x2, y1, x2, math.min( y1 + 10000, y2 ) )

			//Bottom Left
			surface.DrawLine( x1, y2, math.min( x1 + 10000, x2 ), y2 )
			surface.DrawLine( x1, y2, x1, math.max( y2 - 10000, y1 ) )

			//Bottom Right
			surface.DrawLine( x2, y2, math.max( x2 - 10000, x1 ), y2 )
			surface.DrawLine( x2, y2, x2, math.max( y2 - 10000, y1 ) )
		end

	end

end)



/*
Name:
	#     #
	##    #  ####  ##### # ###### #  ####    ##   ##### #  ####  #    #  ####
	# #   # #    #   #   # #      # #    #  #  #    #   # #    # ##   # #
	#  #  # #    #   #   # #####  # #      #    #   #   # #    # # #  #  ####
	#   # # #    #   #   # #      # #      ######   #   # #    # #  # #      #
	#    ## #    #   #   # #      # #    # #    #   #   # #    # #   ## #    #
	#     #  ####    #   # #      #  ####  #    #   #   #  ####  #    #  ####

Purpose:
		Shows what hack is loaded (draws to teh right of the screen).
*/
hook.Add("HUDPaint", "ShowNotifications", function()

	if GetConVarNumber("ShowNotifications") == 1 then

		draw.SimpleText("Notifications","Logo_Small",1270,10,Color( 0, 150, 255, 255 ),4,1,1)

		/* Aimbot */
		if GetConVarNumber("Aimbot") == 1 then
			draw.SimpleText("Aimbot: ","Logo_Small",1275,30,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("On","Logo_Small",1328,30,Color( 0, 255, 0, 255 ),4,1,1)

	else

		if GetConVarNumber("Aimbot") == 0 then
			draw.SimpleText("Aimbot: ","Logo_Small",1275,30,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("Off ","Logo_Small",1328,30,Color( 255, 0, 0, 255 ),4,1,1)
		end
		end

		/* Triggerbot */
		if GetConVarNumber("Triggerbot") == 1 then
			draw.SimpleText("Triggerbot: ","Logo_Small",1255,45,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("On","Logo_Small",1328,45,Color( 0, 255, 0, 255 ),4,1,1)

	else

		if GetConVarNumber("Triggerbot") == 0 then
			draw.SimpleText("Triggerbot: ","Logo_Small",1255,45,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("Off ","Logo_Small",1328,45,Color( 255, 0, 0, 255 ),4,1,1)
		end
		end

		/* No Recoil */
		if GetConVarNumber("NoRecoil") == 1 then
			draw.SimpleText("No Recoil: ","Logo_Small",1264,60,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("On","Logo_Small",1328,60,Color( 0, 255, 0, 255 ),4,1,1)

	else

		if GetConVarNumber("NoRecoil") == 0 then
			draw.SimpleText("No Recoil: ","Logo_Small",1264,60,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("Off ","Logo_Small",1328,60,Color( 255, 0, 0, 255 ),4,1,1)
		end
		end

		/* Auto Reload */
		if GetConVarNumber("AutoReload") == 1 then
			draw.SimpleText("Auto Reload: ","Logo_Small",1243,75,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("On","Logo_Small",1328,75,Color( 0, 255, 0, 255 ),4,1,1)

	else

		if GetConVarNumber("AutoReload") == 0 then
			draw.SimpleText("Auto Reload: ","Logo_Small",1243,75,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("Off ","Logo_Small",1328,75,Color( 255, 0, 0, 255 ),4,1,1)
		end
		end

		/* Anti-Aim */
		if GetConVarNumber("AntiAim") == 1 then
			draw.SimpleText("Anti-Aim: ","Logo_Small",1266,90,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("On","Logo_Small",1328,90,Color( 0, 255, 0, 255 ),4,1,1)

	else

		if GetConVarNumber("AntiAim") == 0 then
			draw.SimpleText("Anti-Aim: ","Logo_Small",1266,90,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("Off ","Logo_Small",1328,90,Color( 255, 0, 0, 255 ),4,1,1)
		end
		end

		/* ESP Info */
		if GetConVarNumber("ESP") == 1 then
			draw.SimpleText("ESP Info: ","Logo_Small",1267,105,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("On","Logo_Small",1328,105,Color( 0, 255, 0, 255 ),4,1,1)

	else

		if GetConVarNumber("ESP") == 0 then
			draw.SimpleText("ESP Info: ","Logo_Small",1267,105,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("Off ","Logo_Small",1328,105,Color( 255, 0, 0, 255 ),4,1,1)
		end
		end

		/* ESP Box */
		if GetConVarNumber("ESPBox") == 1 then
			draw.SimpleText("ESP Box: ","Logo_Small",1269,120,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("On","Logo_Small",1328,120,Color( 0, 255, 0, 255 ),4,1,1)

	else

		if GetConVarNumber("ESPBox") == 0 then
			draw.SimpleText("ESP Box: ","Logo_Small",1269,120,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("Off ","Logo_Small",1328,120,Color( 255, 0, 0, 255 ),4,1,1)
		end
		end

		/* Chams */
		if GetConVarNumber("Chams") == 1 then
			draw.SimpleText("Chams: ","Logo_Small",1280,135,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("On","Logo_Small",1328,135,Color( 0, 255, 0, 255 ),4,1,1)

	else

		if GetConVarNumber("Chams") == 0 then
			draw.SimpleText("Chams: ","Logo_Small",1280,135,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("Off ","Logo_Small",1328,135,Color( 255, 0, 0, 255 ),4,1,1)
		end
		end

		/* Glow */
		if GetConVarNumber("Glow") == 1 then
			draw.SimpleText("Glow: ","Logo_Small",1290,150,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("On","Logo_Small",1328,150,Color( 0, 255, 0, 255 ),4,1,1)

	else

		if GetConVarNumber("Glow") == 0 then
			draw.SimpleText("Glow: ","Logo_Small",1290,150,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("Off ","Logo_Small",1328,150,Color( 255, 0, 0, 255 ),4,1,1)
		end
		end

		/* Tracer */
		if GetConVarNumber("Tracer") == 1 then
			draw.SimpleText("Tracer: ","Logo_Small",1283,165,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("On","Logo_Small",1328,165,Color( 0, 255, 0, 255 ),4,1,1)

	else

		if GetConVarNumber("Tracer") == 0 then
			draw.SimpleText("Tracer: ","Logo_Small",1283,165,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("Off ","Logo_Small",1328,165,Color( 255, 0, 0, 255 ),4,1,1)
		end
		end

		/* Tracer Team */
		if GetConVarNumber("TracerTeam") == 1 then
			draw.SimpleText("Tracer Team: ","Logo_Small",1247,180,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("On","Logo_Small",1328,180,Color( 0, 255, 0, 255 ),4,1,1)

	else

		if GetConVarNumber("TracerTeam") == 0 then
			draw.SimpleText("Tracer Team: ","Logo_Small",1247,180,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("Off ","Logo_Small",1328,180,Color( 255, 0, 0, 255 ),4,1,1)
		end
		end

			/* Tracer Highlight */
		if GetConVarNumber("TracerHighlight") == 1 then
			draw.SimpleText("Tracer Highlight: ","Logo_Small",1223,195,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("On","Logo_Small",1328,195,Color( 0, 255, 0, 255 ),4,1,1)

	else

		if GetConVarNumber("TracerHighlight") == 0 then
			draw.SimpleText("Tracer Highlight: ","Logo_Small",1223,195,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("Off ","Logo_Small",1328,195,Color( 255, 0, 0, 255 ),4,1,1)
		end
		end


		/* Show Spectators */
		if GetConVarNumber("ShowSpec") == 1 then
			draw.SimpleText("Show Spectators: ","Logo_Small",1214,210,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("On","Logo_Small",1328,210,Color( 0, 255, 0, 255 ),4,1,1)

	else

		if GetConVarNumber("ShowSpec") == 0 then
			draw.SimpleText("Show Spectators: ","Logo_Small",1214,210,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("Off ","Logo_Small",1328,210,Color( 255, 0, 0, 255 ),4,1,1)
		end
		end

		/* Show Admins */
		if GetConVarNumber("ShowAdmins") == 1 then
			draw.SimpleText("Show Admins: ","Logo_Small",1236,225,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("On","Logo_Small",1328,225,Color( 0, 255, 0, 255 ),4,1,1)

	else

		if GetConVarNumber("ShowAdmins") == 0 then
			draw.SimpleText("Show Admins: ","Logo_Small",1236,225,Color( 255, 255, 255, 255 ),4,1,1)
			draw.SimpleText("Off ","Logo_Small",1328,225,Color( 255, 0, 0, 255 ),4,1,1)
		end
		end

	end

end)



/*
Name:		Under Development
	######  ######   #####
	#     # #     # #     #  ####  #####
	#     # #     # #       #    # #    #
	######  ######  #  #### #    # #    #
	#   #   #       #     # #    # #    #
	#    #  #       #     # #    # #    #
	#     # #        #####   ####  #####

Purpose:
		Spams 'Buy Heath' if health is less then 100.
*/

hook.Add("Think", "RPGod", function()

	if GetConVarNumber("RPGod") == 1 then

		if LocalPlayer():Health() < 100 then

			RunConsoleCommand("say","/buyhealth") // Spams the chat with this command.

		end

	end

end)



/*
Name:
	 #####                   #####
	#     # ###### #####    #     #  ####  #       ####  #    # #####   ####
	#       #        #      #       #    # #      #    # #    # #    # #
	 #####  #####    #      #       #    # #      #    # #    # #    #  ####
	      # #        #      #       #    # #      #    # #    # #####       #
	#     # #        #      #     # #    # #      #    # #    # #   #  #    #
	 #####  ######   #       #####   ####  ######  ####   ####  #    #  ####

Purpose:
		Differentiates Players and NPCs.
*/

function SetColors(e)

local ply, class, model = LocalPlayer(), e:GetClass(), e:GetModel()
local col

	if ( e:IsPlayer() ) then
		col = Color( 255, 0, 0, 255 ) // Players Colour

	elseif ( e:Health() ) then
		col = Color( 0, 255, 0, 255 ) // Healths Colour

	elseif ( e:IsNPC() ) then
		col = Color( 0, 255, 0, 20 ) // NPCs Colour

	else

		col = Color( 255, 255, 255, 255 ) // Default Colour

	end

return col

end



/*
Name:
	 #####
	#     # #    #   ##   #    #  ####
	#       #    #  #  #  ##  ## #
	#       ###### #    # # ## #  ####
	#       #    # ###### #    #      #
	#     # #    # #    # #    # #    #
	 #####  #    # #    # #    #  ####

Purpose:
		Shows players location through objects.
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



/*
Name:
	 #####
	#     # #       ####  #    #
	#       #      #    # #    #
	#  #### #      #    # #    #
	#     # #      #    # # ## #
	#     # #      #    # ##  ##
	 #####  ######  ####  #    #

Purpose:
		Shows players location through objects with a glow.
*/

hook.Add("HUDPaint", "L4DGlow", function()

	for k,v in pairs(player.GetAll()) do

		if(ESPCheck(v) && GetConVarNumber("Glow") == 1) then

			effects.halo.Add({v}, team.GetColor(v:Team()), 2, 2, 2, true, true)

		end

	end

end)



/*
Name:					Under Development
 #######
	#    #    # # #####  #####  #####  ###### #####   ####   ####  #    #
	#    #    # # #    # #    # #    # #      #    # #      #    # ##   #
	#    ###### # #    # #    # #    # #####  #    #  ####  #    # # #  #
    #    #    # # #####  #    # #####  #      #####       # #    # #  # #
	#    #    # # #   #  #    # #      #      #   #  #    # #    # #   ##
	#    #    # # #    # #####  #      ###### #    #  ####   ####  #    #

Purpose:
		Changes the view to either First or Third person.
*/

hook.Add("Think", "TPerson", function()

	if(GetConVarNumber("TPerson") == 1) then

		RunConsoleCommand("thirdperson")

	elseif(GetConVarNumber("TPerson") == 0) then

		RunConsoleCommand("firstperson")

	end

end)



/*
Name:
      #    #####    ###      ######                                                #####
	 ##   #     #  #   #     #     # ######  ####  #####  ###### ######  ####     #     # #####  # #    #
	# #   #     # #     #    #     # #      #    # #    # #      #      #         #       #    # # ##   #
      #    #####  #     #    #     # #####  #      #    # #####  #####   ####      #####  #    # # # #  #
      #   #     # #     #    #     # #      #  ### #####  #      #           #          # #####  # #  # #
      #   #     #  #   #     #     # #      #    # #   #  #      #      #    #    #     # #      # #   ##
	#####  #####    ###      ######  ######  ####  #    # ###### ######  ####      #####  #      # #    #

Purpose:
		Makes you spin 180 degrees.
*/

local ply = LocalPlayer()

function Spin180()

	aim1 = ply:GetAimVector():Angle()
	ply:SetEyeAngles(aim1 - Angle(0, 180, 0))

end

concommand.Add("Spin180", Spin180)



/*
Name: 						   Under Development
 #######                                        #######
	#    #####    ##   # #####  ####  #####     #       # #    # #####  ###### #####
    #    #    #  #  #  #   #   #    # #    #    #       # ##   # #    # #      #    #
    #    #    # #    # #   #   #    # #    #    #####   # # #  # #    # #####  #    #
    #    #####  ###### #   #   #    # #####     #       # #  # # #    # #      #####
    #    #   #  #    # #   #   #    # #   #     #       # #   ## #    # #      #   #
    #    #    # #    # #   #    ####  #    #    #       # #    # #####  ###### #    #

Purpose:
		Finding traitors just got alot easier.
*/

function Fullbright()

	if GetConVarNumber("Fullbright") == 1 then

		GetConVar("mat_fullbright"):SetValue(1)

	else

		GetConVar("mat_fullbright"):SetValue(0)

	end

end

hook.Add("Think", "Fullbright", Fullbright)



/*
Name:
	   #                            #
	  # #   #    # ##### #         # #   # #    #
	 #   #  ##   #   #   #        #   #  # ##  ##
	#     # # #  #   #   # ##### #     # # # ## #
	####### #  # #   #   #       ####### # #    #
	#     # #   ##   #   #       #     # # #    #
	#     # #    #   #   #       #     # # #    #

Purpose:
		Screws up the hitboxes, stops aimbotters from killing you as easily.
*/

function AntiAim()

	if GetConVarNumber("AntiAim") == 1 then

		for k, v in pairs(player.GetAll()) do

			if LocalPlayer():Alive() and v:Alive() then

					vdis = (v:GetPos() - LocalPlayer():GetPos()):Length()

			else

					vdis = nil

			end


			if (vdis != nil) and (vdis <= 10000) and IsVisible( v ) and LocalPlayer():Alive() and input.IsKeyDown(KEY_C) then

				local ply = LocalPlayer()

				local head = v:LookupBone("ValveBiped.Bip01_Head1")

				local headpos,headang = v:GetBonePosition(head)

				ply:SetEyeAngles((headpos - ply:GetShootPos()):Angle())

			end

		end

	end

end

hook.Add("Think", "AntiAim", AntiAim)



/*
Name: 				   Under Development
	 #####                                 #     #
	#     # #####  ###### ###### #####     #     #   ##    ####  #    #
	#       #    # #      #      #    #    #     #  #  #  #    # #   #
	 #####  #    # #####  #####  #    #    ####### #    # #      ####
          # #####  #      #      #    #    #     # ###### #      #  #
	#     # #      #      #      #    #    #     # #    # #    # #   #
	 #####  #      ###### ###### #####     #     # #    #  ####  #    #


Purpose:
		Makes you go fast. Faster.
*/

----------------
require('cvar3')
----------------

CreateClientConVar("Speedhack", 3.5)


local Speed = GetConVarNumber("Speedhack")

concommand.Add( "+Speedhack", function( p, c, a )

        --GetConVar('sv_cheats'):SetValue(1)

        GetConVar('host_timescale'):SetValue( Speed )

end )

concommand.Add( "-Speedhack", function( p, c, a )

        --GetConVar('sv_cheats'):SetValue(0)

        GetConVar('host_timescale'):SetValue( 1 )

end )



/*
Name:
	 #####                            #####                                                                                             #
	#     # #    #  ####  #    #     #     # #####  ######  ####  #####   ##   #####  ####  #####   ####       ##   #    # #####       # #   #####  #    # # #    #  ####
	#       #    # #    # #    #     #       #    # #      #    #   #    #  #    #   #    # #    # #          #  #  ##   # #    #     #   #  #    # ##  ## # ##   # #
	 #####  ###### #    # #    #      #####  #    # #####  #        #   #    #   #   #    # #    #  ####     #    # # #  # #    #    #     # #    # # ## # # # #  #  ####
          # #    # #    # # ## #           # #####  #      #        #   ######   #   #    # #####       #    ###### #  # # #    #    ####### #    # #    # # #  # #      #
	#     # #    # #    # ##  ##     #     # #      #      #    #   #   #    #   #   #    # #   #  #    #    #    # #   ## #    #    #     # #    # #    # # #   ## #    #
	 #####  #    #  ####  #    #      #####  #      ######  ####    #   #    #   #    ####  #    #  ####     #    # #    # #####     #     # #####  #    # # #    #  ####

Purpose:
		Warns the player if somebody is spectating you or if an admind has joined the server.
*/

TH.spectators				= {}
TH.admins					= {}

function ShowNotifi()

	for k, v in pairs(player.GetAll()) do

		if (IsValid(v:GetObserverTarget()) and v:GetObserverTarget():IsPlayer() and v:GetObserverTarget() == LocalPlayer()) then

			if(not table.HasValue(TH.spectators, v)) then
				table.insert(TH.spectators, v);

				if GetConVarNumber("ShowSpec") == 1 then

					RunConsoleCommand("say"..v:Nick().." is now spectating you!")
					surface.PlaySound("buttons/blip1.wav")

				end

			end

		end

	end

	for k, v in pairs(TH.spectators) do

		if (not IsValid(v) or not IsValid(v:GetObserverTarget()) or not v:GetObserverTarget():IsPlayer() or (v:GetObserverTarget() ~= LocalPlayer())) then
			table.remove(TH.spectators, k);

			if GetConVarNumber("ShowSpec") == 1 then

				RunConsoleCommand("say"..v:Nick().." is no longer spectating you!")

			end

		end

	end

	if GetConVarNumber("ShowAdmins") == 1 then

		for k, v in pairs(player.GetAll()) do

			if (v:IsAdmin() and not table.HasValue(TH.admins, v)) then

				table.insert(TH.admins, v);
				RunConsoleCommand("say","Admin [" .. v:Nick() .. "] has joined!")
				surface.PlaySound("buttons/blip1.wav");

			end


		end
	end

end

hook.Add("Think", "ShowNotifi", ShowNotifi)


/*
Name:
	  #####                                                               #     #         #####
	#     # #      # ###### #    # #####        ####  # #####  ######    ##    #  ####  #     # #      # #####
	#       #      # #      ##   #   #         #      # #    # #         # #   # #    # #       #      # #    #
	#       #      # #####  # #  #   #   #####  ####  # #    # #####     #  #  # #    # #       #      # #    #
	#       #      # #      #  # #   #              # # #    # #         #   # # #    # #       #      # #####
	#     # #      # #      #   ##   #         #    # # #    # #         #    ## #    # #     # #      # #
	 #####  ###### # ###### #    #   #          ####  # #####  ######    #     #  ####   #####  ###### # #

Purpose:
		Allows you to fly around the map like a bird (Cannot kill people in this mode).
*/

local NC = {}

NC.Enabled = false
NC.ViewOrigin = Vector( 0, 0, 0 )
NC.ViewAngle = Angle( 0, 0, 0 )
NC.Velocity = Vector( 0, 0, 0 )

function NC.CalcView( ply, origin, angles, fov )

	if ( !NC.Enabled ) then return end

		if ( NC.SetView ) then

			NC.ViewOrigin = origin
			NC.ViewAngle = angles
			NC.SetView = false
	end

	return { origin = NC.ViewOrigin, angles = NC.ViewAngle }

end

hook.Add( "CalcView", "ClientNoClip", NC.CalcView )

function NC.CreateMove( cmd )

	if ( !NC.Enabled ) then return end

		local time = FrameTime()
		NC.ViewOrigin = NC.ViewOrigin + ( NC.Velocity * time )
		NC.Velocity = NC.Velocity * 0.95

		local sensitivity = 0.022
		NC.ViewAngle.p = math.Clamp( NC.ViewAngle.p + ( cmd:GetMouseY() * sensitivity ), -89, 89 )
		NC.ViewAngle.y = NC.ViewAngle.y + ( cmd:GetMouseX() * -1 * sensitivity )

		local add = Vector( 0, 0, 0 )
		local ang = NC.ViewAngle
		if ( cmd:KeyDown( IN_FORWARD ) ) then add = add + ang:Forward() end
		if ( cmd:KeyDown( IN_BACK ) ) then add = add - ang:Forward() end
		if ( cmd:KeyDown( IN_MOVERIGHT ) ) then add = add + ang:Right() end
		if ( cmd:KeyDown( IN_MOVELEFT ) ) then add = add - ang:Right() end
		if ( cmd:KeyDown( IN_JUMP ) ) then add = add + ang:Up() end
		if ( cmd:KeyDown( IN_DUCK ) ) then add = add - ang:Up() end


		add = add:GetNormal() * time * 3500
		if ( cmd:KeyDown( IN_SPEED ) ) then add = add * 3 end

		NC.Velocity = NC.Velocity + add

		if ( NC.LockView == true ) then
			NC.LockView = cmd:GetViewAngles()
		end

		if ( NC.LockView ) then
			cmd:SetViewAngles( NC.LockView )
		end

		cmd:SetForwardMove( 0 )
		cmd:SetSideMove( 0 )
		cmd:SetUpMove( 0 )
end

hook.Add( "CreateMove", "ClientNoClip", NC.CreateMove )

function NC.Toggle()

	NC.Enabled = !NC.Enabled
	NC.LockView = NC.Enabled
	NC.SetView = true

	local status = { [ true ] = "On", [ false ] = "Off" }
	chat.AddText(Color(255,255,255,255), "Clientside No-Clip: ".. status[ NC.Enabled ] )

end

concommand.Add( "NC_Toggle", NC.Toggle )
concommand.Add( "NC_Pos", function() print( NC.ViewOrigin ) end )



/*
Name:
	#######                                                              #####
	#       #        ##    ####  #    # #      #  ####  #    # #####    #     # #####    ##   #    # #    # ###### #####
	#       #       #  #  #      #    # #      # #    # #    #   #      #       #    #  #  #  ##  ## ##  ## #      #    #
	#####   #      #    #  ####  ###### #      # #      ######   #       #####  #    # #    # # ## # # ## # #####  #    #
	#       #      ######      # #    # #      # #  ### #    #   #            # #####  ###### #    # #    # #      #####
	#       #      #    # #    # #    # #      # #    # #    #   #      #     # #      #    # #    # #    # #      #   #
	#       ###### #    #  ####  #    # ###### #  ####  #    #   #       #####  #      #    # #    # #    # ###### #    #

Purpose:
		Annoys players.
*/

function FlashlightSpam()

	if GetConVarNumber("FlashlightSpam") == 1 then

		RunConsoleCommand("impulse", "100")

	end

end

hook.Add("Think", "FlashlightSpam", FlashlightSpam)



/*
Name:				Under Development
	#     #           ######
	##    #  ####     #     # ######  ####   ####  # #
	# #   # #    #    #     # #      #    # #    # # #
	#  #  # #    #    ######  #####  #      #    # # #
	#   # # #    #    #   #   #      #      #    # # #
	#    ## #    #    #    #  #      #    # #    # # #
	#     #  ####     #     # ######  ####   ####  # ######

Purpose:
		Accurate bullets, no recoil.
*/

function NoRecoil()

	if GetConVarNumber("NoRecoil") == 1 then

		if LocalPlayer():GetActiveWeapon().Primary then

			LocalPlayer():GetActiveWeapon().Primary.Recoil = 0

	else

		if LocalPlayer():GetActiveWeapon().Secondary then

			LocalPlayer():GetActiveWeapon().Secondary.Recoil = 0

		end

		end

	end

end

hook.Add("Think", "NoRecoil", NoRecoil)



/*
Name:
	#     #
	##   ## ###### #    # #    #
	# # # # #      ##   # #    #
	#  #  # #####  # #  # #    #
	#     # #      #  # # #    #
	#     # #      #   ## #    #
	#     # ###### #    #  ####

Purpose:
		Simple menu; uses checkboxes (Ticked = On | Un-Ticked = Off)
*/

function Menu()

local DermaPanel = vgui.Create( "DFrame" )
DermaPanel:SetPos( 250,250 )
DermaPanel:SetSize( 350, 210 )
DermaPanel:SetTitle( "                                    :: 0x19a Hack Menu ::" )
DermaPanel:SetVisible( true )
DermaPanel:SetDraggable( true )
DermaPanel:ShowCloseButton( true )
DermaPanel:MakePopup()
DermaPanel.Paint = function()
    surface.SetDrawColor( 50, 50, 50, 150 )
    surface.DrawRect( 0, 0, DermaPanel:GetWide(), DermaPanel:GetTall() )
end

/* Aimbot Menu */
local SomeCollapsibleCategory = vgui.Create("DCollapsibleCategory", DermaPanel)
SomeCollapsibleCategory:SetPos( 10,30 )
SomeCollapsibleCategory:SetSize( 110, 50 )
SomeCollapsibleCategory:SetExpanded( 1 )
SomeCollapsibleCategory:SetLabel( " Aimbot " )

CategoryList = vgui.Create( "DPanelList" )
CategoryList:SetAutoSize( true )
CategoryList:SetSpacing( 5 )
CategoryList:EnableHorizontal( false )
CategoryList:EnableVerticalScrollbar( true )

SomeCollapsibleCategory:SetContents( CategoryList )

    local CategoryContentOne = vgui.Create( "DCheckBoxLabel" )
    CategoryContentOne:SetText( "Aimbot" )
    CategoryContentOne:SetConVar( "Aimbot" )
    CategoryContentOne:SizeToContents()
CategoryList:AddItem( CategoryContentOne )

    local CategoryContentTwo = vgui.Create( "DCheckBoxLabel" )
    CategoryContentTwo:SetText( "Aimbot On Shoot" )
    CategoryContentTwo:SetConVar( "Aimbot_Onshoot" )
    CategoryContentTwo:SizeToContents()
CategoryList:AddItem( CategoryContentTwo )

    local CategoryContentThree = vgui.Create( "DCheckBoxLabel" )
    CategoryContentThree:SetText( "In Fov" )
    CategoryContentThree:SetConVar( "Aimbot_Infov" )
    CategoryContentThree:SizeToContents()
CategoryList:AddItem( CategoryContentThree )

    local CategoryContentFour = vgui.Create( "DCheckBoxLabel" )
    CategoryContentFour:SetText( "Triggerbot" )
    CategoryContentFour:SetConVar( "Triggerbot" )
    CategoryContentFour:SizeToContents()
CategoryList:AddItem( CategoryContentFour )

    local CategoryContentFive = vgui.Create( "DCheckBoxLabel" )
    CategoryContentFive:SetText( "No Recoil" )
    CategoryContentFive:SetConVar( "NoRecoil" )
    CategoryContentFive:SizeToContents()
CategoryList:AddItem( CategoryContentFive )

    local CategoryContentSix = vgui.Create( "DCheckBoxLabel" )
    CategoryContentSix:SetText( "Auto Reload" )
    CategoryContentSix:SetConVar( "AutoReload" )
    CategoryContentSix:SizeToContents()
CategoryList:AddItem( CategoryContentSix )

    local CategoryContentSeven = vgui.Create( "DCheckBoxLabel" )
    CategoryContentSeven:SetText( "Anti-Aim" )
    CategoryContentSeven:SetConVar( "AntiAim" )
    CategoryContentSeven:SizeToContents()
CategoryList:AddItem( CategoryContentSeven )



/* Visual Menu */
local SomeCollapsibleCategory = vgui.Create("DCollapsibleCategory", DermaPanel)
SomeCollapsibleCategory:SetPos( 125,30 )
SomeCollapsibleCategory:SetSize( 100, 50 )
SomeCollapsibleCategory:SetExpanded( 1 )
SomeCollapsibleCategory:SetLabel( " Visual " )

CategoryList = vgui.Create( "DPanelList" )
CategoryList:SetAutoSize( true )
CategoryList:SetSpacing( 5 )
CategoryList:EnableHorizontal( true )
CategoryList:EnableVerticalScrollbar( false )

SomeCollapsibleCategory:SetContents( CategoryList )

    local CategoryContentOneOne = vgui.Create( "DCheckBoxLabel" )
    CategoryContentOneOne:SetText( "ESP Info" )
    CategoryContentOneOne:SetConVar( "ESP" )
    CategoryContentOneOne:SizeToContents()
CategoryList:AddItem( CategoryContentOneOne )

    local CategoryContentTwoTwo = vgui.Create( "DCheckBoxLabel" )
    CategoryContentTwoTwo:SetText( "ESP Box" )
    CategoryContentTwoTwo:SetConVar( "ESPBox" )
    CategoryContentTwoTwo:SizeToContents()
CategoryList:AddItem( CategoryContentTwoTwo )

    local CategoryContentThreeThree = vgui.Create( "DCheckBoxLabel" )
    CategoryContentThreeThree:SetText( "Chams" )
    CategoryContentThreeThree:SetConVar( "Chams" )
    CategoryContentThreeThree:SizeToContents()
CategoryList:AddItem( CategoryContentThreeThree )

    local CategoryContentFourFour = vgui.Create( "DCheckBoxLabel" )
    CategoryContentFourFour:SetText( "Glow" )
    CategoryContentFourFour:SetConVar( "Glow" )
    CategoryContentFourFour:SizeToContents()
CategoryList:AddItem( CategoryContentFourFour )

    local CategoryContentFiveFive = vgui.Create( "DCheckBoxLabel" )
    CategoryContentFiveFive:SetText( "Tracer" )
    CategoryContentFiveFive:SetConVar( "Tracer" )
    CategoryContentFiveFive:SizeToContents()
CategoryList:AddItem( CategoryContentFiveFive )

    local CategoryContentSixSix= vgui.Create( "DCheckBoxLabel" )
    CategoryContentSixSix:SetText( "Tracer Team" )
    CategoryContentSixSix:SetConVar( "TracerTeam" )
    CategoryContentSixSix:SizeToContents()
CategoryList:AddItem( CategoryContentSixSix )

    local CategoryContentSevenSeven= vgui.Create( "DCheckBoxLabel" )
    CategoryContentSevenSeven:SetText( "Tracer Highlight" )
    CategoryContentSevenSeven:SetConVar( "TracerHighlight" )
    CategoryContentSevenSeven:SizeToContents()
CategoryList:AddItem( CategoryContentSevenSeven )

    local CategoryContentEightEight= vgui.Create( "DCheckBoxLabel" )
    CategoryContentEightEight:SetText( "Fullbright" )
    CategoryContentEightEight:SetConVar( "Fullbright" )
    CategoryContentEightEight:SizeToContents()
CategoryList:AddItem( CategoryContentEightEight )



/* Misc Menu */
local SomeCollapsibleCategory = vgui.Create("DCollapsibleCategory", DermaPanel)
SomeCollapsibleCategory:SetPos( 230,30 )
SomeCollapsibleCategory:SetSize( 113, 50 )
SomeCollapsibleCategory:SetExpanded( 1 )
SomeCollapsibleCategory:SetLabel( " Misc " )

CategoryList = vgui.Create( "DPanelList" )
CategoryList:SetAutoSize( true )
CategoryList:SetSpacing( 5 )
CategoryList:EnableHorizontal( false )
CategoryList:EnableVerticalScrollbar( true )

SomeCollapsibleCategory:SetContents( CategoryList )

    local CategoryContentOneOneOne = vgui.Create( "DCheckBoxLabel" )
    CategoryContentOneOneOne:SetText( "Custom Crosshair" )
    CategoryContentOneOneOne:SetConVar( "CustCrosshair" )
    CategoryContentOneOneOne:SizeToContents()
CategoryList:AddItem( CategoryContentOneOneOne )

    local CategoryContentTwoTwoTwo = vgui.Create( "DCheckBoxLabel" )
    CategoryContentTwoTwoTwo:SetText( "Chat Spam" )
    CategoryContentTwoTwoTwo:SetConVar( "ChatSpam" )
    CategoryContentTwoTwoTwo:SizeToContents()
CategoryList:AddItem( CategoryContentTwoTwoTwo )

    local CategoryContentThreeThreeThree = vgui.Create( "DCheckBoxLabel" )
    CategoryContentThreeThreeThree:SetText( "Bunnyhop" )
    CategoryContentThreeThreeThree:SetConVar( "Bunnyhop" )
    CategoryContentThreeThreeThree:SizeToContents()
CategoryList:AddItem( CategoryContentThreeThreeThree )

    local CategoryContentFourFourFour = vgui.Create( "DCheckBoxLabel" )
    CategoryContentFourFourFour:SetText( "Flashlight Spam" )
    CategoryContentFourFourFour:SetConVar( "FlashlightSpam" )
    CategoryContentFourFourFour:SizeToContents()
CategoryList:AddItem( CategoryContentFourFourFour )

    local CategoryContentFiveFiveFive = vgui.Create( "DCheckBoxLabel" )
    CategoryContentFiveFiveFive:SetText( "Show Spectators" )
    CategoryContentFiveFiveFive:SetConVar( "ShowSpec" )
    CategoryContentFiveFiveFive:SizeToContents()
CategoryList:AddItem( CategoryContentFiveFiveFive )

    local CategoryContentSixSixSix = vgui.Create( "DCheckBoxLabel" )
    CategoryContentSixSixSix:SetText( "Show Admins" )
    CategoryContentSixSixSix:SetConVar( "ShowAdmins" )
    CategoryContentSixSixSix:SizeToContents()
CategoryList:AddItem( CategoryContentSixSixSix )

    local CategoryContentSevenSevenSeven = vgui.Create( "DCheckBoxLabel" )
    CategoryContentSevenSevenSeven:SetText( "Third Person" )
    CategoryContentSevenSevenSeven:SetConVar( "TPerson" )
    CategoryContentSevenSevenSeven:SizeToContents()
CategoryList:AddItem( CategoryContentSevenSevenSeven )

    local CategoryContentEightEightEight= vgui.Create( "DCheckBoxLabel" )
    CategoryContentEightEightEight:SetText( "Show Notifications" )
    CategoryContentEightEightEight:SetConVar( "ShowNotifications" )
    CategoryContentEightEightEight:SizeToContents()
CategoryList:AddItem( CategoryContentEightEightEight )

end

concommand.Add( "WIPMenu", Menu);



// Exploits; Hacks or other stuff that will need to be started/ finished.


/*
Name: 						Under Development
	   #                           #     #
	  # #   #    # #####  ####     #     # #####  #####    ##   ##### ###### #####
	 #   #  #    #   #   #    #    #     # #    # #    #  #  #    #   #      #    #
	#     # #    #   #   #    #    #     # #    # #    # #    #   #   #####  #    #
	####### #    #   #   #    #    #     # #####  #    # ######   #   #      #####
	#     # #    #   #   #    #    #     # #      #    # #    #   #   #      #   #
	#     #  ####    #    ####      #####  #      #####  #    #   #   ###### #    #


Purpose:
		A simple copy and paste and it'll be to the newest version.
*/

// Might just be pointless since it'll be private



/*
Name:  					     	Under Development
	######                       ######  ######     #     #
	#     #   ##   #####  #    # #     # #     #    #     #   ##    ####  #    #  ####
	#     #  #  #  #    # #   #  #     # #     #    #     #  #  #  #    # #   #  #
	#     # #    # #    # ####   ######  ######     ####### #    # #      ####    ####
	#     # ###### #####  #  #   #   #   #          #     # ###### #      #  #        #
	#     # #    # #   #  #   #  #    #  #          #     # #    # #    # #   #  #    #
	######  #    # #    # #    # #     # #          #     # #    #  ####  #    #  ####


Purpose:
		Annoy kids on DarkRP.
*/

/* DarkRP Name Changer */

local firstnames = {

"Christopher",
"Alexander",
"Frederick",
"Christian",
"Benjamin",
"Franklin",
"Nicholas",
"Salvador",
"Marshall",
"Lawrence",
"Jonathan",
"Mitchell",
"Clifton",
"Herbert",
"Darrell",
"Bradley",
"Francis",
"Jeffery",
"Johnnie",
"Derrick",
"Zachary",
"Matthew",
"Maurice",
"Jeffrey",
"Armano",
"Leonard",
"Stephen",
"Stanley",
"Antonio",
"Gregory",
"Charlie",
"Gilbert",
"Patrick",
"Phillip",
"Bernard",
"Russell",
"Charles",
"Chester",
"Douglas",
"Clinton",
"Micheal",
"Brandon",
"Richard",
"William",
"Michael",
"Freddie",
"Gabriel",
"Wallace",
"Samuel",
"Adrian",
"Gerald",
"Harvey",
"Arnold",
"Roland",
"Justin",
"Willie",
"Claude",
"Darryl",
"Albert",
"Arthur",
"Jessie",
"Javier",
"Jeremy",
"Mathew",
"Howard",
"Milton",
"Carlos",
"Leslie",
"Rafael",
"Tyrone",
"Darren",
"Victor",
"Martin",
"Lonnie",
"Walter",
"Isaac",
"Roger",
"Perry",
"James",
"Jason",
"Bryan",
"Danny",
"Henry",
"Jimmy",
"Kevin",
"Brent",
"Chris",
"Tyler",
"Shawn",
"Peter",
"Craig",
"Jesse",
"Daryl",
"Julio",
"Kelly",
"Ruben",
"Brett",
"Bobby",
"Angel",
"Edgar",
"Jerry",
"Jaime",
"Randy",
"Aaron",
"Louis",
"Steve",
"John",
"Cody",
"Kurt",
"Andy",
"Alex",
"Hugh",
"Bill",
"Kirk",
"Joel",
"Eric",
"Leon",
"Jose",
"Kyle",
"Seth",
"Gary",
"Chad",
"Jeff",
"Dean",
"Greg",
"Kent",
"Dale",
"Glen",
"Wade",
"Mike",
"Sam"
}

local lastnames = {
"Richardson",
"Williamson",
"Cunningham",
"Montgomery",
"Washington",
"Carpenter",
"Hernandez",
"Rodriguez",
"Fernandez",
"Robertson",
"Alexander",
"Rodriquez",
"Armstrong",
"Schneider",
"Patterson",
"Henderson",
"Gutierrez",
"Crawford",
"Mcdaniel",
"Gonzalez",
"Mitchell",
"Johnston",
"Marshall",
"Caldwell",
"Sullivan",
"Thompson",
"Franklin",
"Chandler",
"Gonzales",
"Lawrence",
"Robinson",
"Mcdonald",
"Hamilton",
"Jennings",
"Reynolds",
"Mckinney",
"Chambers",
"Harrison",
"Davidson",
"Morrison",
"Campbell",
"Stephens",
"Phillips",
"Fletcher",
"Williams",
"Richards",
"Santiago",
"Anderson",
"Martinez",
"Ferguson",
"Castillo",
"Peterson",
"Matthews",
"Stanley",
"Lambert",
"Carroll",
"Gardner",
"Wheeler",
"Wallace",
"Kennedy",
"Sanders",
"Mullins",
"Bradley",
"Frazier",
"Shelton",
"Ramirez",
"Gregory",
"Simmons",
"Gilbert",
"Vasquez",
"Watkins",
"Russell",
"Leonard",
"Mendoza",
"Roberts",
"Douglas",
"Daniels",
"Holland",
"Schmidt",
"Hoffman",
"Jenkins",
"Johnson",
"Jackson",
"Walters",
"Jimenez",
"Griffin",
"Carlson",
"Coleman",
"Spencer",
"Stevens",
"Garrett",
"Barrett",
"Pearson",
"Perkins",
"Alvarez",
"Elliott",
"Simpson",
"Nichols",
"Freeman",
"Guzman",
"Keller",
"Arnold",
"Parker",
"Peters",
"Brewer",
"Sutton",
"Graves",
"Morris",
"Barker",
"Munoz",
"Owens",
"Garza",
"Olson",
"Lewis",
"Ellis",
"Dixon",
"Davis",
"Lucas",
"Hayes",
"Brown",
"Ortiz",
"Welch",
"Mccoy",
"Bates",
"Clark",
"Lyons",
"Craig",
"Ramos",
"Scott",
"Reyes",
"Silva",
"Perez",
"Myers",
"Weber",
"Price",
"Banks",
"Mason",
"Terry",
"White",
"Stone",
"Baker",
"Allen",
"Walsh",
"Perry",
"Payne",
"Green",
"Black",
"Woods",
"Hicks",
"Burns",
"Riley",
"Curry",
"Young",
"Burke",
"Adams",
"Lopez",
"Parks",
"Evans",
"Grant",
"Watts",
"Miles",
"Smith",
"Jones",
"Meyer",
"Mills",
"Cruz",
"Hunt",
"Ford",
"Lane",
"Ross",
"Hill",
"Carr",
"Hall",
"Diaz",
"Cole",
"Ryan",
"Gray",
"Ruiz",
"Ward",
"Rice",
"Kim",
"Lee",
"Fox",
"Ray",
"May",
"Cox",
"Day"
}
concommand.Add( "RPNameChanger" , function()
	LocalPlayer():ConCommand("say /rpname " ..table.Random(firstnames).. " " .. table.Random(lastnames))
end )



/*
Name: 						   Under Development
 #######                                        #######
	#    #####    ##   # #####  ####  #####     #       # #    # #####  ###### #####
    #    #    #  #  #  #   #   #    # #    #    #       # ##   # #    # #      #    #
    #    #    # #    # #   #   #    # #    #    #####   # # #  # #    # #####  #    #
    #    #####  ###### #   #   #    # #####     #       # #  # # #    # #      #####
    #    #   #  #    # #   #   #    # #   #     #       # #   ## #    # #      #   #
    #    #    # #    # #   #    ####  #    #    #       # #    # #####  ###### #    #

Purpose:
		Finding traitors just got alot easier.
*/

// Might be pointless becuase I never play Trouble in Terrorist Town. (TTT)



// TEST 2
--[[
local RemoveSkybox			    = CreateConVar("RemoveSkybox", 0, true, false)

function RemoveSkyBox()

	if GetConVarNumber("RemoveSkybox") == 1 then

		GetConVar("gl_clear"):SetValue(1)
		GetConVar("r_drawskybox"):SetValue(0)
		GetConVar("r_3dsky"):SetValue(0)

	else

		GetConVar("gl_clear"):SetValue(0)
		GetConVar("r_drawskybox"):SetValue(1)
		GetConVar("r_3dsky"):SetValue(1)

	end

end

hook.Add("Think", "RemoveSkybox", RemoveSkybox)
]]

/* ESP Weapon */
// Currently Buggy

			// Weapon the Player is holding
--			if (vdis != nil) and (vdis <= 10000) and v:Alive() then
--				local Position = ( v:GetPos() + Vector( 0, 0, 35 ) ):ToScreen()
--				draw.DrawText(v:GetActiveWeapon():GetClass(), "ESPFont", Position.x, Position.y, Color(255,255,255), 1)
--			end


// TEST 1

local Cap = math.cos(math.rad(45))
local Offset = Vector(0, 0, 32)
local Trace = {}

function Draw()

	local Time = os.time() - 1
	local Witnesses = 0
	local BeingWitnessed = true

	if Time < os.time() then
		Time = os.time() + .5
		Witnesses = 0
		BeingWitnessed = false

		for k, pla in pairs(player.GetAll()) do

			if pla:IsValid() and pla != LocalPlayer() then

				Trace.start  = LocalPlayer():EyePos() + Offset
				Trace.endpos = pla:EyePos() + Offset
				Trace.filter = {pla, LocalPlayer()}
				TraceRes = util.TraceLine(Trace)

				if !TraceRes.Hit then

					if (pla:EyeAngles():Forward():Dot((LocalPlayer():EyePos() - pla:EyePos())) > Cap) then

						Witnesses = Witnesses + 1
						BeingWitnessed = true

					end

				end

			end

		end

	end

		surface.SetFont("Logo_Small")

		if BeingWitnessed then

			surface.SetTextColor(255, 0, 0, 255)

		else

			surface.SetTextColor(0, 255, 0, 255)

		end

	local Text = "Witnesses: "..tostring(Witnesses)
	local Width, Height = surface.GetTextSize(Text)

	surface.SetDrawColor(80, 80, 80, 0)
	surface.DrawRect(ScrW()/2 - (Width/2 + 24), 4, Width + 28, Height + 8)
        surface.DrawOutlinedRect(ScrW()/2 - (Width/2 + 24), 4, Width + 28, Height + 8)

	surface.DrawTexturedRect(ScrW()/2 - (Width/2 + 20), 8, 16, 16)
	surface.SetTextPos(ScrW()/2 - Width/2, 8)
	surface.DrawText(Text)

end

hook.Add("HUDPaint", "WitnessesBox", Draw)


// LENNY ESP
/*
CreateClientConVar("lenny_esp", 0, true, false)
CreateClientConVar("ESPWep", 1, true, false)

local playeraim = Vector(100,100,100):ToScreen()

local function wallhack()



		if GetConVarNumber("lenny_esp") == 1 then

				for k, v in pairs (player.GetAll()) do


					if LocalPlayer():Alive() and v:Alive() then
						vdis = (v:GetPos() - LocalPlayer():GetPos()):Length()
					else
						vdis = nil
					end


					local plypos = (v:GetPos() + Vector(0,0,100)):ToScreen()
					if v:IsAdmin() or v:IsSuperAdmin() then
						draw.DrawText("" ..v:Name().. "[Admin]", "Trebuchet18", plypos.x, plypos.y, Color(220,60,90,255), 1)

					elseif v:GetFriendStatus() == "friend" then
						draw.DrawText("" ..v:Name().. "[Friend]", "Trebuchet18", plypos.x, plypos.y, Color(120,100,50,255), 1)


					else
						draw.DrawText(v:Name(), "Trebuchet18", plypos.x, plypos.y, Color(255,255,255), 1)
					end

					if GetConVarNumber("ESPWep") == 1 then
						if (vdis != nil) and (vdis <= 10000) and v:Alive() then
							draw.DrawText(v:GetActiveWeapon():GetClass(), "ESPFont", plypos.x, plypos.y + 10, Color(255,255,255), 1)
						end
					end
				end

		end
end


hook.Add("HUDPaint", "ESP", wallhack)