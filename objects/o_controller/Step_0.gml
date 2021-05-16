/// @description Insert description here
// You can write your code in this editor

key_enter = keyboard_check_pressed(vk_enter);

switch (current_gamestate) {
	case gamestate.GAME_START:
		game_paused = true;
		break;
	case gamestate.GAME_PLAY:
		game_paused = false;
		break;
	case gamestate.GAME_WIN:
		game_paused = true;
		break;
	case gamestate.GAME_OVER:
		game_paused = true;
		break;
	default:
		game_paused = true;
		break;
}

if(game_paused){
	instance_deactivate_object(briquette);
}else{
	instance_activate_object(briquette);
}

if(key_enter){
	show_debug_message("enter_was_pressed")
	switch (current_gamestate) {
		case gamestate.GAME_START:
			show_debug_message("game start");
			break;
		case gamestate.GAME_PLAY:
			show_debug_message("game play");
			break;
		case gamestate.GAME_WIN:
			show_debug_message("game win");
			break;
		case gamestate.GAME_OVER:
			show_debug_message("game over");
			break;
		default:
			show_debug_message("default");
			break;
	}
	if(current_gamestate == gamestate.GAME_START){
		current_gamestate = gamestate.GAME_PLAY;
	}else if(current_gamestate == gamestate.GAME_OVER){
		current_gamestate = gamestate.GAME_START;
		room_restart();
	}
}