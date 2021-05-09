/// @description controls Briquette movement
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);

if(key_left && !key_right){
	x_spd -= acceleration;
	if(x_spd < -1*speed_cap){
		x_spd = -1 * speed_cap;
	}
}
else if(key_right & !key_left){
	x_spd += acceleration;
	if(x_spd > speed_cap){
		x_spd = speed_cap;
	}
}
else{ //no lateral movement
	if (x_spd > 0) {
		x_spd -= 1;
	}else if(x_spd < 0){
		x_spd += 1;
	}
}

//y speed calculations
if(key_jump){
	y_spd = -3;
}else{
	y_spd += grav;
}

x += x_spd; //apply speed to x position variable
y += y_spd; //apply speed to y position variable
