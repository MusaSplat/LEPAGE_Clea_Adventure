/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76207C39
/// @DnDArgument : "var" "textindex"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "array_length(texts)"
if(textindex >= array_length(texts)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 603D332F
	/// @DnDParent : 76207C39
	/// @DnDArgument : "var" "textindex"
	textindex = 0;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 50E65811
	/// @DnDParent : 76207C39
	/// @DnDArgument : "script" "Sr_CloseDialogue"
	/// @DnDSaveInfo : "script" "Sr_CloseDialogue"
	script_execute(Sr_CloseDialogue);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 74D8A59C
else{	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 7D67FBFB
	/// @DnDInput : 2
	/// @DnDParent : 74D8A59C
	/// @DnDArgument : "script" "Sr_CallDialogue"
	/// @DnDArgument : "arg" "texts[textindex]"
	/// @DnDArgument : "arg_1" "name_png"
	/// @DnDSaveInfo : "script" "Sr_CallDialogue"
	script_execute(Sr_CallDialogue, texts[textindex], name_png);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49476928
	/// @DnDParent : 74D8A59C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "textindex"
	textindex += 1;}