/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3ED05755
/// @DnDComment : // Les actifs du script ont changé pour v2.3.0 Voir$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
/// @DnDArgument : "funcName" "ReduceLife"
/// @DnDArgument : "arg" "amount"
function ReduceLife(amount) {	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4497515F
	/// @DnDParent : 3ED05755
	/// @DnDArgument : "var" "O_LifeManager.Isinvisible"
	/// @DnDArgument : "value" "false"
	if(O_LifeManager.Isinvisible == false){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4EF0B3CA
		/// @DnDInput : 2
		/// @DnDParent : 4497515F
		/// @DnDArgument : "expr" "-amount"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "O_LifeManager.playerLife"
		/// @DnDArgument : "var_1" "O_LifeManager.Isinvisible"
		O_LifeManager.playerLife += -amount;
		O_LifeManager.Isinvisible = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 51D55627
		/// @DnDApplyTo : {O_LifeManager}
		/// @DnDParent : 4497515F
		with(O_LifeManager) {
		alarm_set(0, 30);
		
		}}}