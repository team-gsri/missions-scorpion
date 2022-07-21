params ["_side", "_number"];

_this = [_side, _number, "Man"] call GSRI_fnc_classVehicleFactory;

_this set ["#Count", {
	count units (_this get "_side");
}];

_this set ["#Spawn", {
	params ["_geo", "_this"];
	private _group = [(_geo get "_home"), (_this get "_side"), 8] call BIS_fnc_spawnGroup;
	_group deleteGroupWhenEmpty true;
	[_crew, _geo] call (_geo get "+AddWaypoint");
}];

_this;