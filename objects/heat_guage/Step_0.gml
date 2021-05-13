/// @description
// You can write your code in this editor
if(heat >= maxheat){
	heat = 0;
	if(!(player_charges.charge_count == player_charges.max_charge)){
		player_charges.charge_count ++;
	}
}