/*

	Updates player clothing by replacing vanilla by custom ones
        by Audacious

*/

private["_uniform","_backpack"];

///Uniform
////////////////

_uniform = uniform player;

switch(true) do
{
	case (playerSide == west && _uniform == "U_B_CombatUniform_mcam"):
	{
		if( (call life_coplevel) > 1) then
		{
			player setObjectTextureGlobal  [0, "textures\police_shirt.jpg"]; 
		}
		else
		{
			player setObjectTextureGlobal  [0, "textures\cadet_shirt.jpg"]; 
		};
		
		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
	