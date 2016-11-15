----------------
require("cvar3")
----------------

/* Sv_Allowcslua and Sv_cheats Bypasser */

GetConVar("sv_allowcslua"):SetFlags(0)
GetConVar("sv_cheats"):SetFlags(0)
GetConVar("sv_allowcslua"):SetValue(1)
GetConVar("sv_cheats"):SetValue(1)

if CLIENT and GetConVarNumber("sv_allowcslua") == 1 then

	chat.AddText(Color(255,0,0,255), "Bypass Suceeded")

end



/* Lua Anti-Cheat Bypasser */

hook.Add( "Think", tostring( math.random( 100, 100000 ) ), ThinkHook )

for i = 100, 100000 do

	hook.Remove( "Think", tostring( i ) );

end



/* Anti-Cheat Bypasser */

timer.Create( "AntiCheatTimer", 20, 0, function()

	net.Start( "AntCheatCheck" )

		net.WriteBit(GetConVarNumber( "sv_allowcslua" )>0)

	net.SendToServer()

end)

timer.Destroy( "AntiCheatTimer" )



/* ConVar Spoofer */

local OriginalGetConVarNumber = GetConVarNumber;

function GetConVarNumber( name )

	if ( name == "sv_allowcslua" ) then

		return 0;

	else

		return OriginalGetConVarNumber( name );

	end

end