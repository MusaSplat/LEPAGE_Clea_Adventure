/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5B426A72
/// @DnDArgument : "obj" "O_Joueur"
/// @DnDSaveInfo : "obj" "O_Joueur"
var l5B426A72_0 = false;l5B426A72_0 = instance_exists(O_Joueur);if(l5B426A72_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51E5F360
	/// @DnDInput : 2
	/// @DnDParent : 5B426A72
	/// @DnDArgument : "expr" "O_Joueur.x"
	/// @DnDArgument : "expr_1" "O_Joueur.y"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = O_Joueur.x;
	y = O_Joueur.y;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 5595B2D0
	/// @DnDParent : 5B426A72
	/// @DnDArgument : "angle" "O_Joueur.image_angle"
	image_angle = O_Joueur.image_angle;}