/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 58EA60D6
/// @DnDArgument : "expr" "show == true"
if(show == true){	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 296A5D71
	/// @DnDParent : 58EA60D6
	draw_self();

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 69FFC4EA
	/// @DnDParent : 58EA60D6
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 45D11951
	/// @DnDParent : 58EA60D6
	/// @DnDArgument : "font" "font"
	draw_set_font(font);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 35D7D704
	/// @DnDParent : 58EA60D6
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l35D7D704_0=($FF000000 >> 24);
	draw_set_alpha(l35D7D704_0 / $ff);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 27C06404
	/// @DnDInput : 5
	/// @DnDParent : 58EA60D6
	/// @DnDArgument : "function" "draw_text_ext"
	/// @DnDArgument : "arg" "x+decalageX"
	/// @DnDArgument : "arg_1" "y+decalageY"
	/// @DnDArgument : "arg_2" "text_content"
	/// @DnDArgument : "arg_3" "15"
	/// @DnDArgument : "arg_4" "image_xscale*64-10"
	draw_text_ext(x+decalageX, y+decalageY, text_content, 15, image_xscale*64-10);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 6272FF4E
	/// @DnDParent : 58EA60D6
	draw_set_colour($FFFFFFFF & $ffffff);
	var l6272FF4E_0=($FFFFFFFF >> 24);
	draw_set_alpha(l6272FF4E_0 / $ff);}