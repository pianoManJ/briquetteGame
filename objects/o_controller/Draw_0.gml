/// @description Insert description here
// You can write your code in this editor
trueCenterX = camera_get_view_x(o_camera.camera)+center_x;
trueCenterY = camera_get_view_y(o_camera.camera)+center_y;
switch(room_get_name(room)){
	case "level1":
		if(current_gamestate = gamestate.GAME_START){
			draw_set_font(Title_Font);
			draw_set_halign(fa_center);
			draw_text(center_x, center_y, "Briquette");
			draw_set_font(directions_font);
			draw_text(center_x, center_y+40, "Press ENTER or RETURN");
			
		}else if(current_gamestate = gamestate.GAME_PLAY){
			draw_set_font(directions_font);
			draw_set_halign(fa_left);
			draw_text(160, 420, "Move left and right using the 'A' and 'D' keys");
			draw_text(830, 420, "Press 'J' to Jump");
			draw_text(1116, 420, "Hold 'J' to increase jump height");
			draw_text(4095, 288, "Rest at the fire to build heat.\nWhen the heat guage is filled, you gain a Charge.");
			draw_text(4830, 546, "Light the grill to beat the level.\nTo ignite, press 'H'");
		}else if(current_gamestate = gamestate.GAME_WIN){
			draw_set_font(Title_Font);
			draw_set_halign(fa_center);
			draw_text(trueCenterX, trueCenterY, "FLAMIN!");
			draw_set_font(directions_font);
			draw_text(trueCenterX, trueCenterY+40, "Next Level: ENTER or RETURN");
		}
		break;
}