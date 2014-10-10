#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",0],
						["hgun_P07_F",nil,0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["muzzle_snds_L",nil,0],
						["FirstAidKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["16Rnd_9x21_Mag",nil,0]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000],
						["U_Rangemaster",nil,10]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 1): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MX_Black_F",nil,0],
						["arifle_MXM_Black_F",nil,0],
						["MineDetector",nil,0],
						["arifle_SDAR_F",nil,0],
						["acc_flashlight",nil,0],
						["optic_Holosight",nil,0],
						["optic_Arco",nil,0],
						["muzzle_snds_H",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["30Rnd_65x39_caseless_mag_Tracer","Rubber Bullets",0],
						["20Rnd_556x45_UW_mag",nil,0],
						["SmokeShellBlue","Tear Gas",0]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["arifle_MXC_Black_F",nil,0],
						["arifle_MX_SW_Black_F",nil,0],
						["srifle_LRR_LRPS_F",nil,60000],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["optic_Arco",nil,0],
						["optic_DMS",nil,0],
						["optic_LRPS",nil,0],
						["muzzle_snds_H",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["30Rnd_65x39_caseless_mag_Tracer","Rubber Bullets",0],
						["100Rnd_65x39_caseless_mag",nil,0],
						["100Rnd_65x39_caseless_mag_Tracer",nil,0],
						["7Rnd_408_Mag",nil,0],
						["MiniGrenade","Flashbang",0],
						["SmokeShellBlue","Tear Gas",0]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,50000],
						["srifle_EBR_F",nil,85000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["20Rnd_762x51_Mag",nil,300],
						["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
 	{
 		switch(true) do
		{
 			case (playerSide != civilian): {"You are not a civilian!"};
 			default
 			{
 				["Hideout Armament",
 					[
 						["hgun_Rook40_F",nil,1500],
 						["hgun_Pistol_heavy_02_F",nil,2500],
 						["hgun_ACPC2_F",nil,4500],
 						["hgun_PDW2000_F",nil,9500],
 						["optic_ACO_grn_smg",nil,950],
 						["V_Rangemaster_belt",nil,1900],
 						["16Rnd_9x21_Mag",nil,25],
 						["9Rnd_45ACP_Mag",nil,45],
 						["6Rnd_45ACP_Cylinder",nil,50],
 						["30Rnd_9x21_Mag",nil,75],
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,50000],
						["srifle_EBR_F",nil,100000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["20Rnd_762x51_Mag",nil,300],
						["30Rnd_65x39_caseless_green",nil,275]
 					]
 				];
 			};
 		};
 	};
	
	case "combat":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian Please Leave!!"};
			case (!license_civ_combat): {"You do not have the Combat License please leave!!"};
			default
			{
				["Combat Weapons Shop",
					[
						["hgun_Rook40_F",nil,5000],
						["hgun_ACPC2_F",nil,7500],
						["SMG_02_F",nil,15000],
						["arifle_MXC_F",nil,30000],
						["arifle_MX_F",nil,35000],
						["arifle_MX_SW_F",nil,60000],
						["arifle_MXM_F",nil,65000],
						["optic_Arco",nil,3500],
						["optic_ACO_grn",nil,1500],
						["optic_SOS",nil,5000],
						["optic_tws",nil,7500],
						["NLAW_F",nil,6000],
						["16Rnd_9x21_Mag",nil,150],
						["30Rnd_9x21_Mag",nil,250],
						["9Rnd_45ACP_Mag",nil,100],
						["30Rnd_65x39_caseless_mag",nil,800],
						["100Rnd_65x39_caseless_mag",nil,1200]
					]
				];
			};
		};
	};
	
	case "don1":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!!!"};
			case (!license_civ_don1): {"You are not a Donator!!!"};
			default
			{
				["Donator tier 1",
					[
						["hgun_Pistol_heavy_01_F",nil,750],
						["SMG_01_F",nil,30000],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["Rangefinder",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,25],
						["30Rnd_45ACP_Mag_SMG_01",nil,75]
					]
				];
			};
		};
	};
	
	case "don2":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!!!"};
			case (!license_civ_don2): {"You are not a Donator tier 2!!!"};
			default
			{
				["Donator Tier 2",
					[
						["hgun_Pistol_heavy_01_F",nil,750],
						["SMG_01_F",nil,30000],
						["arifle_TRG21_F",nil,30000],
						["arifle_Mk20_F",nil,30000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["Rangefinder",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,25],
						["30Rnd_45ACP_Mag_SMG_01",nil,75],
						["30Rnd_556x45_Stanag",nil,25]
					]
				];
			};	
		};
	};
	
	case "don3":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!!!"};
			case (!license_civ_don3): {"You are not a Donator tier 3!!!"};
			default
			{
				["Donator Tier 3",
					[
						["hgun_Pistol_heavy_01_F",nil,750],
						["SMG_01_F",nil,30000],
						["arifle_TRG21_F",nil,30000],
						["arifle_Mk20_F",nil,30000],
						["srifle_DMR_01_F",nil,75000],
						["arifle_MXM_F",nil,75000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_DMS",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["Rangefinder",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,25],
						["30Rnd_45ACP_Mag_SMG_01",nil,75],
						["30Rnd_556x45_Stanag",nil,25],
						["10Rnd_762x51_Mag",nil,175],
						["30Rnd_65x39_caseless_mag",nil,175]
					]
				];
			};
		};
	};
	
	case "don4":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!!!"};
			case (!license_civ_don4): {"You are not a Donator tier 4!!!"};
			default
			{
				["Donator Tier 4",
					[
						["hgun_Pistol_heavy_01_F",nil,750],
						["SMG_01_F",nil,30000],
						["arifle_TRG21_F",nil,30000],
						["arifle_Mk20_F",nil,30000],
						["srifle_DMR_01_F",nil,75000],
						["arifle_MXM_F",nil,75000],
						["LMG_Mk200_F",nil,250000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_DMS",nil,750],
						["optic_NVS",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["Rangefinder",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,25],
						["30Rnd_45ACP_Mag_SMG_01",nil,75],
						["30Rnd_556x45_Stanag",nil,75],
						["10Rnd_762x51_Mag",nil,175],
						["30Rnd_65x39_caseless_mag",nil,175],
						["200Rnd_65x39_cased_Box",nil,50000]
					]
				];
			};
		};
	};
	
	case "don5":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!!!"};
			case (!license_civ_don5): {"You are not a Donator tier 5!!!"};
			default
			{
				["Donator Tier 5",
					[
						["hgun_Pistol_heavy_01_F",nil,750],
						["SMG_01_F",nil,30000],
						["arifle_TRG21_F",nil,30000],
						["arifle_Mk20_F",nil,30000],
						["srifle_DMR_01_F",nil,75000],
						["arifle_MXM_Black_F",nil,75000],
						["LMG_Mk200_F",nil,250000],
						["LMG_Zafir_F",nil,275000],
						["launch_O_Titan_short_F",nil,300000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,750],
						["optic_DMS",nil,750],
						["optic_NVS",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["Rangefinder",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,25],
						["30Rnd_45ACP_Mag_SMG_01",nil,75],
						["30Rnd_556x45_Stanag",nil,75],
						["10Rnd_762x51_Mag",nil,175],
						["30Rnd_65x39_caseless_mag",nil,175],
						["200Rnd_65x39_cased_Box",nil,50000],
						["150Rnd_762x51_Box",nil,45000],
						["Titan_AP",nil,20000],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["SMG_01_F",nil,20000],
						["Rangefinder",nil,600],
						["NVGoggles_INDEP",nil,2000],
						["optic_Arco",nil,2000],
						["optic_MRCO",nil,2500],
						["11Rnd_45ACP_Mag",nil,150],
						["30Rnd_45ACP_Mag_SMG_01",nil,300]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};

	case "gasstore":
	{
		["Altis Gas Station Store",
			[
				["ToolKit",nil,250],
				["FirstAidKit",nil,150]
			]
		];
	};
};