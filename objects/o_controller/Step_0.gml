/// @description Insert description here
// You can write your code in this editor

key_enter = keyboard_check_pressed(vk_space);

switch current_gamestate {
	case gamestate.GAME_START:
		game_paused = true;
	case gamestate.GAME_PLAY:
		game_paused = false;
	case gamestate.GAME_WIN:
		game_paused = true;
	case gamestate.GAME_OVER:
		game_paused = true;
	default:
		game_paused = true;
}

if(game_paused){
	instance_deactivate_object(briquette);
}else{
	instance_activate_object(briquette);
}

if(key_enter){
	if(current_gamestate = gamestate.GAME_START){
		current_gamestate = gamestate.GAME_PLAY;
	}else if(current_gamestate = gamestate.GAME_OVER){
		current_gamestate = gamestate.GAME_START;
		room_restart();
	}
}