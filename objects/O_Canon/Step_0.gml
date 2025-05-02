/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 44AED8B2
var l44AED8B2_0;l44AED8B2_0 = mouse_check_button_pressed(mb_left);if (l44AED8B2_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 39BC9BE0
	/// @DnDParent : 44AED8B2
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "O_Baton"
	/// @DnDArgument : "layer" ""Joueur""
	/// @DnDSaveInfo : "objectid" "O_Baton"
	instance_create_layer(x + 0, y + 0, "Joueur", O_Baton);}