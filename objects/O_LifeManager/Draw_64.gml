/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 7FE3A1BE
/// @DnDArgument : "sprite" "S_Coeur"
/// @DnDArgument : "number" "playerLife"
/// @DnDSaveInfo : "sprite" "S_Coeur"
var l7FE3A1BE_0 = sprite_get_width(S_Coeur);var l7FE3A1BE_1 = 0;for(var l7FE3A1BE_2 = playerLife; l7FE3A1BE_2 > 0; --l7FE3A1BE_2) {	draw_sprite(S_Coeur, 0, 0 + l7FE3A1BE_1, 0);	l7FE3A1BE_1 += l7FE3A1BE_0;}