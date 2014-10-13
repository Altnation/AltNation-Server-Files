/*
	this is the cop enter script to allow the police to enter locked vehicles 
	this is to stop the police from unlocking vehicles and getting some troll steal it
	coded by: ReVzItsDaveo
	community: AltNation RPG
	Server: No 1 and 2
*/
if(playerSide != west) exitWith {};
private ["_position","_veh"];
_position = _this select 3;

switch (_position) do
{
	case "driver":
	{
		cursorTarget lock false;
		player action ["getInDriver", cursorTarget];
		cursorTarget lock true;
	};
	case "passenger":
	{
		cursorTarget lock false;
		player action ["getInCargo", cursorTarget];
		cursorTarget lock true;
	};
	case "gunner":
	{
		cursorTarget lock false;
		player action ["getIngunner", cursorTarget];
		cursorTarget lock true;
	};
	case "exit":
	{
		_veh = vehicle player;
		_veh lock false;
		player action ["getOut", _veh];
		_veh lock true;
	};
};