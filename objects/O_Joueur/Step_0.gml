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

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 16736F72
/// @DnDArgument : "x" "dirX*64"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "dirY*64"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "O_Collision"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "O_Collision"
var l16736F72_0 = instance_place(x + dirX*64, y + dirY*64, [O_Collision]);if (!(l16736F72_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C78DD64
	/// @DnDParent : 16736F72
	/// @DnDArgument : "var" "isMoving"
	/// @DnDArgument : "value" "false"
	if(isMoving == false){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 51D74712
		/// @DnDInput : 3
		/// @DnDParent : 2C78DD64
		/// @DnDArgument : "expr" "dirX*64"
		/// @DnDArgument : "expr_1" "dirY*64"
		/// @DnDArgument : "expr_2" "true"
		/// @DnDArgument : "var" "targetX"
		/// @DnDArgument : "var_1" "targetY"
		/// @DnDArgument : "var_2" "isMoving"
		targetX = dirX*64;
		targetY = dirY*64;
		isMoving = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 0A8F4C1A
		/// @DnDParent : 2C78DD64
		/// @DnDArgument : "steps" "nOfFrameToChangeCase"
		alarm_set(0, nOfFrameToChangeCase);}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4287577A
/// @DnDArgument : "var" "isMoving"
/// @DnDArgument : "value" "true"
if(isMoving == true){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 085687A9
	/// @DnDInput : 2
	/// @DnDParent : 4287577A
	/// @DnDArgument : "expr" "targetX/nOfFrameToChangeCase"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "targetY/nOfFrameToChangeCase"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x += targetX/nOfFrameToChangeCase;
	y += targetY/nOfFrameToChangeCase;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FADF75C
/// @DnDArgument : "var" "dirX"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(dirX >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 28EC0173
	/// @DnDParent : 0FADF75C
	/// @DnDArgument : "spriteind" "S_Cadre64"
	/// @DnDSaveInfo : "spriteind" "S_Cadre64"
	sprite_index = S_Cadre64;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CE9A59D
	/// @DnDInput : 2
	/// @DnDParent : 0FADF75C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "champX"
	/// @DnDArgument : "var_1" "champY"
	champX = 1;
	champY = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 522EE88F
/// @DnDArgument : "var" "dirX"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "1"
if(dirX <= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 72470F72
	/// @DnDParent : 522EE88F
	/// @DnDArgument : "spriteind" "S_Cadre64"
	/// @DnDSaveInfo : "spriteind" "S_Cadre64"
	sprite_index = S_Cadre64;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0ACE6DCA
	/// @DnDInput : 2
	/// @DnDParent : 522EE88F
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "champX"
	/// @DnDArgument : "var_1" "champY"
	champX = -1;
	champY = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BF51FA6
/// @DnDArgument : "var" "dirY"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(dirY >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 055EED2F
	/// @DnDParent : 3BF51FA6
	/// @DnDArgument : "spriteind" "S_Cadre64"
	/// @DnDSaveInfo : "spriteind" "S_Cadre64"
	sprite_index = S_Cadre64;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C7CD296
	/// @DnDInput : 2
	/// @DnDParent : 3BF51FA6
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "champX"
	/// @DnDArgument : "var_1" "champY"
	champX = 0;
	champY = 1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7EF0289E
/// @DnDArgument : "var" "dirY"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "1"
if(dirY <= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4A6775A7
	/// @DnDParent : 7EF0289E
	/// @DnDArgument : "spriteind" "S_Cadre64"
	/// @DnDSaveInfo : "spriteind" "S_Cadre64"
	sprite_index = S_Cadre64;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C831438
	/// @DnDInput : 2
	/// @DnDParent : 7EF0289E
	/// @DnDArgument : "expr_1" "-1"
	/// @DnDArgument : "var" "champX"
	/// @DnDArgument : "var_1" "champY"
	champX = 0;
	champY = -1;}