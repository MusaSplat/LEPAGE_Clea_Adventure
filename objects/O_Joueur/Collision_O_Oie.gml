/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E2D9606
/// @DnDArgument : "var" "invicible"
/// @DnDArgument : "value" "false"
if(invicible == false){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C95B91D
	/// @DnDParent : 7E2D9606
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "hp"
	hp = -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30D1E283
	/// @DnDParent : 7E2D9606
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "invicible"
	invicible = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 02286F0F
	/// @DnDParent : 7E2D9606
	/// @DnDArgument : "steps" "160"
	alarm_set(0, 160);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 189A86CC
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4E5DFC32
	/// @DnDParent : 189A86CC
	instance_destroy();}