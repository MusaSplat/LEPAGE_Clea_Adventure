/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BEE500E
/// @DnDArgument : "var" "invicible"
/// @DnDArgument : "value" "false"
if(invicible == false){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 634AFCB0
	/// @DnDParent : 3BEE500E
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "hp"
	hp = -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55D52267
	/// @DnDParent : 3BEE500E
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "invicible"
	invicible = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7E11C6CE
	/// @DnDParent : 3BEE500E
	/// @DnDArgument : "steps" "160"
	alarm_set(0, 160);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7644BED9
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6B7CC1F4
	/// @DnDParent : 7644BED9
	instance_destroy();}