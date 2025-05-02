/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 54181142
/// @DnDArgument : "obj" "O_Joueur"
/// @DnDSaveInfo : "obj" "O_Joueur"
var l54181142_0 = false;l54181142_0 = instance_exists(O_Joueur);if(l54181142_0){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
	/// @DnDVersion : 1
	/// @DnDHash : 5A864384
	/// @DnDParent : 54181142
	/// @DnDArgument : "sprite" "S_Coeur"
	/// @DnDArgument : "number" "O_Joueur.hp"
	/// @DnDSaveInfo : "sprite" "S_Coeur"
	var l5A864384_0 = sprite_get_width(S_Coeur);var l5A864384_1 = 0;for(var l5A864384_2 = O_Joueur.hp; l5A864384_2 > 0; --l5A864384_2) {	draw_sprite(S_Coeur, 0, 0 + l5A864384_1, 0);	l5A864384_1 += l5A864384_0;}}