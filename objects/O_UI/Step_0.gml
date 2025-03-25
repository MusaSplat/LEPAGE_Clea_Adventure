/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 79BCD286
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
/// @DnDArgument : "obj" "id"
/// @DnDArgument : "notme" "0"
var l79BCD286_0 = collision_point(mouse_x, mouse_y, id, true, 0);if((l79BCD286_0)){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6DA5F0A6
	/// @DnDParent : 79BCD286
	/// @DnDArgument : "colour" "merge_color(image_blend, button_selection_color,0.07)"
	/// @DnDArgument : "alpha" "false"
	image_blend = merge_color(image_blend, button_selection_color,0.07) & $ffffff;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3F061D4D
else{	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 686D70D6
	/// @DnDParent : 3F061D4D
	/// @DnDArgument : "colour" "merge_color(image_blend, c_white,0.07)"
	/// @DnDArgument : "alpha" "false"
	image_blend = merge_color(image_blend, c_white,0.07) & $ffffff;}