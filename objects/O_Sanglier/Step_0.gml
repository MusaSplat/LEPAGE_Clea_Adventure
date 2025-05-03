/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 31DD2E51
/// @DnDArgument : "obj" "O_Joueur"
/// @DnDSaveInfo : "obj" "O_Joueur"
var l31DD2E51_0 = false;l31DD2E51_0 = instance_exists(O_Joueur);if(l31DD2E51_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 4EC75FB9
	/// @DnDParent : 31DD2E51
	/// @DnDArgument : "direction" "point_direction(x,y,O_Joueur.x,O_Joueur.y)"
	direction = point_direction(x,y,O_Joueur.x,O_Joueur.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 645C7FEE
	/// @DnDParent : 31DD2E51
	/// @DnDArgument : "speed" "custom_speed"
	speed = custom_speed;}