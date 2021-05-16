/// @description set up game states
// You can write your code in this editor
enum gamestate
{
GAME_START, GAME_PLAY, GAME_WIN, GAME_OVER
}

center_y = window_get_height()/2;
center_x = window_get_width()/2;

current_gamestate = gamestate.GAME_START;
player_inactive = false;