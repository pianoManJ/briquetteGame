/// @description controls Briquette movement
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump_pressed = keyboard_check_pressed(ord("J"));
key_jump = keyboard_check(ord("J"));
key_break = keyboard_check(ord("K"));

//Left Movement
if(key_left && !key_right){
	if(key_break && grounded && x_spd < 0){
		x_spd += 0.25;
	}else{
		x_spd -= acceleration;
	}
	if(x_spd < -1*speed_cap){
		x_spd = -1 * speed_cap;
	}
}

//Right Movement
else if(key_right && !key_left){
	if(key_break && grounded && x_spd>0){
		x_spd -= 0.25;
	}else{
		x_spd += acceleration;
	}
	if(x_spd > speed_cap){
		x_spd = speed_cap;
	}
//No lateral movement
}else{
	if (x_spd > 0) {
		if(x_spd - 1 < 0){
			x_spd = 0;
		}else{
			x_spd -= 1;
		}
	}else if(x_spd < 0){
		if(x_spd + 1 > 0){
			x_spd = 0;
		}else{
			x_spd += 1;
		}
	}
}

//y speed calculations
if(key_jump_pressed && grounded){
	jumping = true;
	alarm_set(0, 20);
}
else if(key_jump && jumping){
	y_spd = -10;
}else{
	alarm[0] = -1;
	jumping = false;
	if(y_spd >= grav){
		y_spd += grav;
	}else{
		y_spd = grav;
	}
}

//grounded check
if(place_meeting(x, y+1, wall)){
	grounded = true;
}else{
	grounded = false;
}

if(place_meeting(x+x_spd, y, wall)){  //apply speed to x position variable
	var x_small = x;
	while(!place_meeting(x_small+sign(x_spd), y, wall)){
		x_small += 1 * (x_spd/abs(x_spd));
	}
	x = x_small;
	x_spd = 0;
}
x += x_spd;


if(place_meeting(x, y+y_spd, wall)){
	var y_small = y;
	while(!(place_meeting(x, y_small+sign(y_spd), wall))){
		y_small += 1 * (y_spd/abs(y_spd));
	}
	y = y_small;
	y_spd = 0;
}else{
	y += y_spd;
}

//Calculating Heat
if(key_break && grounded){
	hGuage.heat += (abs(x_spd)*0.10);
}