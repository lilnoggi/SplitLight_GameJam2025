extends Node

enum GAMESTATE {MENU, PLAY, PAUSE}
var current_state: GAMESTATE


func _ready():
	current_state = GAMESTATE.MENU
