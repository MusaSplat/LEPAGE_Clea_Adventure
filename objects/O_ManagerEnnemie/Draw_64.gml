/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 78E4B2D3
/// @DnDArgument : "color" "$FFB6FF5E"
draw_set_colour($FFB6FF5E & $ffffff);
var l78E4B2D3_0=($FFB6FF5E >> 24);
draw_set_alpha(l78E4B2D3_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 26763706
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Hp""
/// @DnDArgument : "var" "hp"
draw_text(x + 0, y + 0, string("Hp") + string(hp));