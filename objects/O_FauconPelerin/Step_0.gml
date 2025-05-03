/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0BB480BA
/// @DnDArgument : "obj" "O_Joueur"
/// @DnDSaveInfo : "obj" "O_Joueur"
var l0BB480BA_0 = false;l0BB480BA_0 = instance_exists(O_Joueur);if(l0BB480BA_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 4AD7168E
	/// @DnDParent : 0BB480BA
	/// @DnDArgument : "direction" "point_direction(x,y,O_Joueur.x,O_Joueur.y)"
	direction = point_direction(x,y,O_Joueur.x,O_Joueur.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5FD68F4B
	/// @DnDParent : 0BB480BA
	/// @DnDArgument : "speed" "custom_speed"
	speed = custom_speed;}