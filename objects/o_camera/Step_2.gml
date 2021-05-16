/// @description Insert description here
var camX = camera_get_view_x(camera);
var camY = camera_get_view_y(camera);
var targetX;
var targetY;
if (instance_exists(briquette)){
	targetX = briquette.x - RES_W/2;
	targetY = briquette.y - RES_H/2;
}else{
	targetX = camX;
	targetY = camY;
}

targetX = clamp(targetX, 0, room_width - RES_W);
targetY = clamp(targetY, 0, room_height - RES_H);

camX = lerp(camX, targetX, CAM_SMOOTH);
camY = lerp(camY, targetY, CAM_SMOOTH);

camera_set_view_pos(camera, camX, camY);
