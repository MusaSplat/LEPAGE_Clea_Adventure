/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 14EDA4FD
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "obj" "O_ActionDetection"
/// @DnDSaveInfo : "obj" "O_ActionDetection"
var l14EDA4FD_0 = collision_point(x + 0, y + 0, O_ActionDetection, true, 1);if((l14EDA4FD_0)){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 679A0B7F
	/// @DnDParent : 14EDA4FD
	var l679A0B7F_0;l679A0B7F_0 = keyboard_check_pressed(vk_space);if (l679A0B7F_0){	/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 5748B274
		/// @DnDParent : 679A0B7F
		event_user(0);}}