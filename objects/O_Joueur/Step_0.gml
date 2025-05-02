/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Device_Count
/// @DnDVersion : 1
/// @DnDHash : 5C3ECF70
/// @DnDArgument : "var" "connectedGamepad"
/// @DnDArgument : "var_temp" "1"
var l5C3ECF70_0 = gamepad_get_device_count();var l5C3ECF70_1 = 0;for(var l5C3ECF70_2 = 0; l5C3ECF70_2 < l5C3ECF70_0; ++l5C3ECF70_2) {	if(gamepad_is_connected(l5C3ECF70_2)) { ++l5C3ECF70_1; }}var connectedGamepad = l5C3ECF70_1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A9D28C8
/// @DnDArgument : "var" "connectedGamepad"
/// @DnDArgument : "op" "2"
if(connectedGamepad > 0){	/// @DnDAction : YoYo Games.Gamepad.Set_Gamepad_Axis_Deadzone
	/// @DnDVersion : 1
	/// @DnDHash : 183F7B2E
	/// @DnDParent : 1A9D28C8
	/// @DnDArgument : "deadzone" "0.8"
	gamepad_set_axis_deadzone(0, 0.8);

	/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
	/// @DnDVersion : 1.1
	/// @DnDHash : 79D621FC
	/// @DnDParent : 1A9D28C8
	/// @DnDArgument : "var" "axisH"
	/// @DnDArgument : "var_temp" "1"
	var axisH = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;

	/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
	/// @DnDVersion : 1.1
	/// @DnDHash : 6D2A1386
	/// @DnDParent : 1A9D28C8
	/// @DnDArgument : "var" "axisV"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "axis" "gp_axislv"
	var axisV = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislv) : 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71487560
	/// @DnDInput : 2
	/// @DnDParent : 1A9D28C8
	/// @DnDArgument : "expr" "sign(axisH)"
	/// @DnDArgument : "expr_1" "sign(axisV)"
	/// @DnDArgument : "var" "dirX"
	/// @DnDArgument : "var_1" "dirY"
	dirX = sign(axisH);
	dirY = sign(axisV);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4581BDF3
else{	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 281072AB
	/// @DnDParent : 4581BDF3
	/// @DnDArgument : "key" "vk_left"
	/// @DnDArgument : "not" "1"
	var l281072AB_0;l281072AB_0 = keyboard_check(vk_left);if (!l281072AB_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 5D13431D
		/// @DnDParent : 281072AB
		/// @DnDArgument : "key" "vk_up"
		/// @DnDArgument : "not" "1"
		var l5D13431D_0;l5D13431D_0 = keyboard_check(vk_up);if (!l5D13431D_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 74C625A3
			/// @DnDParent : 5D13431D
			/// @DnDArgument : "key" "vk_right"
			/// @DnDArgument : "not" "1"
			var l74C625A3_0;l74C625A3_0 = keyboard_check(vk_right);if (!l74C625A3_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
				/// @DnDVersion : 1
				/// @DnDHash : 7089295D
				/// @DnDParent : 74C625A3
				/// @DnDArgument : "key" "vk_down"
				/// @DnDArgument : "not" "1"
				var l7089295D_0;l7089295D_0 = keyboard_check(vk_down);if (!l7089295D_0){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 350C80AE
					/// @DnDInput : 2
					/// @DnDParent : 7089295D
					/// @DnDArgument : "var" "dirX"
					/// @DnDArgument : "var_1" "dirY"
					dirX = 0;
					dirY = 0;}}}}}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 4E9C9402
/// @DnDArgument : "var" "isKeyPressed"
/// @DnDArgument : "value" "false"
var isKeyPressed = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4A31D703
/// @DnDInput : 2
/// @DnDArgument : "var" "dir_x"
/// @DnDArgument : "var_1" "dir_y"
dir_x = 0;
dir_y = 0;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2C2E7D69
/// @DnDArgument : "key" "vk_left"
var l2C2E7D69_0;l2C2E7D69_0 = keyboard_check(vk_left);if (l2C2E7D69_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FA07943
	/// @DnDInput : 2
	/// @DnDParent : 2C2E7D69
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "-1"
	/// @DnDArgument : "var" "isKeyPressed"
	/// @DnDArgument : "var_1" "dir_x"
	isKeyPressed = true;
	dir_x = -1;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 49F8D364
	/// @DnDParent : 2C2E7D69
	/// @DnDArgument : "spriteind" "S_Joueur_Gauche"
	/// @DnDSaveInfo : "spriteind" "S_Joueur_Gauche"
	sprite_index = S_Joueur_Gauche;
	image_index = 0;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2EA1A472
/// @DnDArgument : "key" "vk_up"
var l2EA1A472_0;l2EA1A472_0 = keyboard_check(vk_up);if (l2EA1A472_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F3C01A6
	/// @DnDInput : 2
	/// @DnDParent : 2EA1A472
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "-1"
	/// @DnDArgument : "var" "isKeyPressed"
	/// @DnDArgument : "var_1" "dir_y"
	isKeyPressed = true;
	dir_y = -1;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1C8C4AA9
	/// @DnDParent : 2EA1A472
	/// @DnDArgument : "spriteind" "S_Joueur_Dos"
	/// @DnDSaveInfo : "spriteind" "S_Joueur_Dos"
	sprite_index = S_Joueur_Dos;
	image_index = 0;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 711ABD21
/// @DnDArgument : "key" "vk_right"
var l711ABD21_0;l711ABD21_0 = keyboard_check(vk_right);if (l711ABD21_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1507D8CF
	/// @DnDInput : 2
	/// @DnDParent : 711ABD21
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "isKeyPressed"
	/// @DnDArgument : "var_1" "dir_x"
	isKeyPressed = true;
	dir_x = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 476A4A68
	/// @DnDParent : 711ABD21
	/// @DnDArgument : "spriteind" "S_Joueur_Droite"
	/// @DnDSaveInfo : "spriteind" "S_Joueur_Droite"
	sprite_index = S_Joueur_Droite;
	image_index = 0;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7316F66F
/// @DnDArgument : "key" "vk_down"
var l7316F66F_0;l7316F66F_0 = keyboard_check(vk_down);if (l7316F66F_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B0AC1DD
	/// @DnDInput : 2
	/// @DnDParent : 7316F66F
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "isKeyPressed"
	/// @DnDArgument : "var_1" "dir_y"
	isKeyPressed = true;
	dir_y = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 45A897A7
	/// @DnDParent : 7316F66F
	/// @DnDArgument : "spriteind" "S_Joueur_Face"
	/// @DnDSaveInfo : "spriteind" "S_Joueur_Face"
	sprite_index = S_Joueur_Face;
	image_index = 0;}

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 13DFCC54
/// @DnDArgument : "direction" "point_direction(0,0,dir_x,dir_y)"
direction = point_direction(0,0,dir_x,dir_y);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4CE024ED
/// @DnDArgument : "var" "isKeyPressed"
/// @DnDArgument : "value" "true"
if(isKeyPressed == true){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1EB23BDB
	/// @DnDParent : 4CE024ED
	/// @DnDArgument : "speed" "6"
	speed = 6;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 039F10F1
else{	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0327AEF3
	/// @DnDParent : 039F10F1
	speed = 0;}