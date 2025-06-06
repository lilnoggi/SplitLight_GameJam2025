extends Node

# the main gamestates
enum GAMESTATE {MENU, PLAY, PAUSE, DIALOG}


var current_state: GAMESTATE


func _ready():
	current_state = GAMESTATE.MENU


func change_state(new_state: GAMESTATE):
	match new_state:
		GAMESTATE.MENU:
			Engine.time_scale = 0
		GAMESTATE.PLAY:
			Engine.time_scale = 1
		GAMESTATE.PAUSE:
			Engine.time_scale = 0
		GAMESTATE.DIALOG:
			Engine.time_scale = 0


	current_state = new_state