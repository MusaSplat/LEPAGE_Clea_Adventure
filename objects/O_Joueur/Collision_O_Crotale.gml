/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4676AA86
/// @DnDArgument : "var" "invicible"
/// @DnDArgument : "value" "false"
if(invicible == false){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B27C32F
	/// @DnDParent : 4676AA86
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "hp"
	hp = -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 06899654
	/// @DnDParent : 4676AA86
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "invicible"
	invicible = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3707CDBB
	/// @DnDParent : 4676AA86
	/// @DnDArgument : "steps" "200"
	alarm_set(0, 200);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B257983
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3D75C0BA
	/// @DnDParent : 0B257983
	instance_destroy();}