/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 03F6AC6F
/// @DnDComment : 
/// @DnDInput : 2
/// @DnDArgument : "funcName" "Sr_CallDialogue"
/// @DnDArgument : "arg" "text"
/// @DnDArgument : "arg_1" "name"
function Sr_CallDialogue(text, name) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 354D48D4
	/// @DnDInput : 3
	/// @DnDParent : 03F6AC6F
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "text"
	/// @DnDArgument : "expr_2" "name"
	/// @DnDArgument : "var" "O_Dialogue.show"
	/// @DnDArgument : "var_1" "O_Dialogue.text_content"
	/// @DnDArgument : "var_2" "O_DialogueName.text_content"
	O_Dialogue.show = true;
	O_Dialogue.text_content = text;
	O_DialogueName.text_content = name;}