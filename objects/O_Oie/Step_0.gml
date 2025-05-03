/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5E66E64D
/// @DnDArgument : "obj" "O_Joueur"
/// @DnDSaveInfo : "obj" "O_Joueur"
var l5E66E64D_0 = false;l5E66E64D_0 = instance_exists(O_Joueur);if(l5E66E64D_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 294C3F2B
	/// @DnDParent : 5E66E64D
	/// @DnDArgument : "direction" "point_direction(x,y,O_Joueur.x,O_Joueur.y)"
	direction = point_direction(x,y,O_Joueur.x,O_Joueur.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 62A20AF6
	/// @DnDParent : 5E66E64D
	/// @DnDArgument : "speed" "custom_speed"
	speed = custom_speed;}