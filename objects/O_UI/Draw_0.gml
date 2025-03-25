/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 2AF81738
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1213201A
/// @DnDArgument : "color" "button_text_color"
draw_set_colour(button_text_color & $ffffff);
var l1213201A_0=(button_text_color >> 24);
draw_set_alpha(l1213201A_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 4BA43C4A
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6096C2F8
/// @DnDArgument : "x" "image_xscale*16"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "image_yscale*16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "button_text"
draw_text(x + image_xscale*16, y + image_yscale*16, string(button_text) + "");

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2C6EB137
draw_set_colour($FFFFFFFF & $ffffff);
var l2C6EB137_0=($FFFFFFFF >> 24);
draw_set_alpha(l2C6EB137_0 / $ff);