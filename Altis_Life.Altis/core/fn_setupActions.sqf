/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Gather Cocaine
		life_actions = life_actions + [player addAction["Gather Cocaine",life_fnc_gatherAction,["cocaine",1],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "cocaine_1") < 150) && (vehicle player == player) && (life_carryWeight + (["cocaine"] call life_fnc_itemWeight)) <= life_maxWeight ']];
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		life_actions = life_actions + [player addAction["Activate Suicide Vest",life_fnc_suicideBomb,"",0,false,false,"",'
		vest player == "V_HarnessOGL_brn" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
	};
	
	case west: 
	{
		case west:
	{
		life_actions = life_actions + [player addAction["Cop Enter as Driver",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Cop Enter as Passenger",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5 && (!(cursorTarget isKindOf "B_Heli_Attack_01_F"))']]; 
		life_actions = life_actions + [player addAction["Cop Enter as Commander",life_fnc_copEnter,"commander",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5 && ((cursorTarget isKindOf "B_Heli_Attack_01_F")||(cursorTarget isKindOf "B_Heli_Transport_01_F")||(cursorTarget isKindOf "B_MRAP_01_hmg_F"))']]; 
		life_actions = life_actions + [player addAction["Exit",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']]; 
		//Seize PlayerWeapons
		life_actions = life_actions + [player addAction["Waffe beschlagnahmen",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
	};
    life_actions = life_actions + [player addAction["Seize Weapons",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
	};
};