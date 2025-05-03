/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4B884EB4
/// @DnDArgument : "var" "invicible"
/// @DnDArgument : "value" "false"
if(invicible == false){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 451259A7
	/// @DnDParent : 4B884EB4
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "hp"
	hp = -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7CA2ADBB
	/// @DnDParent : 4B884EB4
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "invicible"
	invicible = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 60DBEC86
	/// @DnDParent : 4B884EB4
	/// @DnDArgument : "steps" "160"
	alarm_set(0, 160);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57A80909
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 52F57168
	/// @DnDParent : 57A80909
	instance_destroy();}