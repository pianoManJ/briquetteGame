/// @description Insert description here
// You can write your code in this editor

for (var i=1; i <= max_charge; i++){
	if(i <= charge_count){
		draw_sprite(charge_spr, 1, (x+(i-1)*charge_width), y);
	}else{
		draw_sprite(charge_spr, 0, (x+(i-1)*charge_width), y);
	}
}