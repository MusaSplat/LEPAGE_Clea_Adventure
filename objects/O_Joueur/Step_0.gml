/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 16736F72
/// @DnDArgument : "x" "dirX*64"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "dirY*64"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target" ""
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

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1383A749
/// @DnDArgument : "key" "vk_left"
/// @DnDArgument : "not" "1"
var l1383A749_0;l1383A749_0 = keyboard_check(vk_left);if (!l1383A749_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 780B86E3
	/// @DnDParent : 1383A749
	/// @DnDArgument : "key" "vk_up"
	/// @DnDArgument : "not" "1"
	var l780B86E3_0;l780B86E3_0 = keyboard_check(vk_up);if (!l780B86E3_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 42EEE7C0
		/// @DnDParent : 780B86E3
		/// @DnDArgument : "key" "vk_right"
		/// @DnDArgument : "not" "1"
		var l42EEE7C0_0;l42EEE7C0_0 = keyboard_check(vk_right);if (!l42EEE7C0_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 5A130760
			/// @DnDParent : 42EEE7C0
			/// @DnDArgument : "key" "vk_down"
			/// @DnDArgument : "not" "1"
			var l5A130760_0;l5A130760_0 = keyboard_check(vk_down);if (!l5A130760_0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1202D8F4
				/// @DnDInput : 2
				/// @DnDParent : 5A130760
				/// @DnDArgument : "var" "dirX"
				/// @DnDArgument : "var_1" "dirY"
				dirX = 0;
				dirY = 0;}}}}