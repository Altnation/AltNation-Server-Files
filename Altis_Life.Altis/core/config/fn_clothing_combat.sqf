/*
	This is the AltNation Clothing store for the military base
	version 1.0
	coded by ReVzItsDaveo
	description military clothing 
	file: fn_clothing_combat
*/

private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Combat Clothing Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_B_CombatUniform_mcam_tshirt",nil,5000],
			["U_B_HeliPilotCoveralls",nil,7500],
			["U_B_CombatUniform_mcam",nil,11500],
			["U_B_PilotCoveralls",nil,17500],
			["U_B_CTRG_2",nil,15000],
			["U_B_survival_uniform",15340],
			["U_B_GhillieSuit",nil,50000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_PilotHelmetFighter_B",nil,850],
			["H_CrewHelmetHeli_B",nil,850],
			["H_Booniehat_mcamo",nil,800],
			["H_HelmetB",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_Bandanna_camo",nil,650]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,12500],
			["V_TacVest_oli",nil,12500],
			["V_TacVest_blk",nil,12500],
			["V_PlateCarrierL_CTRG",nil,15000],
			["V_PlateCarrierH_CTRG",nil,15000],
			["V_PlateCarrier1_rgr",nil,15000],
			["V_PlateCarrier_Kerry",nil,15000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000],
			["B_Carryall_oucamo",nil,5000]
		];
	};
};