/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 3CD8B861
/// @DnDArgument : "obj" "O_Joueur"
/// @DnDSaveInfo : "obj" "O_Joueur"
var l3CD8B861_0 = false;l3CD8B861_0 = instance_exists(O_Joueur);if(l3CD8B861_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 6F2D9464
	/// @DnDParent : 3CD8B861
	/// @DnDArgument : "direction" "point_direction(x,y,O_Joueur.x,O_Joueur.y)"
	direction = point_direction(x,y,O_Joueur.x,O_Joueur.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 13FC5143
	/// @DnDParent : 3CD8B861
	/// @DnDArgument : "speed" "custom_speed"
	speed = custom_speed;}