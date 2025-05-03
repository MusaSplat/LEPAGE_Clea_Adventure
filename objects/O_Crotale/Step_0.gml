/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1573F33E
/// @DnDArgument : "obj" "O_Joueur"
/// @DnDSaveInfo : "obj" "O_Joueur"
var l1573F33E_0 = false;l1573F33E_0 = instance_exists(O_Joueur);if(l1573F33E_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 0BF6E527
	/// @DnDParent : 1573F33E
	/// @DnDArgument : "direction" "point_direction(x,y,O_Joueur.x,O_Joueur.y)"
	direction = point_direction(x,y,O_Joueur.x,O_Joueur.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5A5259F3
	/// @DnDParent : 1573F33E
	/// @DnDArgument : "speed" "custom_speed"
	speed = custom_speed;}