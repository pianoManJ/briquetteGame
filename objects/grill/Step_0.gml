/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y, flame)){
	if(!grill_lit){
		instance_create_layer(x, y-140, "briquette_layer", rest_fire);
		grill_lit = true;
	}
	with(o_controller){
		current_gamestate = gamestate.GAME_WIN;
	}
}