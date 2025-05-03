/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D5AD2C7
/// @DnDArgument : "var" "invicible"
/// @DnDArgument : "value" "false"
if(invicible == false){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79998DB4
	/// @DnDParent : 0D5AD2C7
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "hp"
	hp = -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16A375E6
	/// @DnDParent : 0D5AD2C7
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "invicible"
	invicible = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 123B26C6
	/// @DnDParent : 0D5AD2C7
	/// @DnDArgument : "steps" "160"
	alarm_set(0, 160);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2204D95B
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5A6C9BD0
	/// @DnDParent : 2204D95B
	instance_destroy();}