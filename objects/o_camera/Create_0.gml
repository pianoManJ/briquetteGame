/// @description

#macro RES_W 1366
#macro RES_H 768
#macro RES_SCALE 1

#macro CAM_SMOOTH 0.1

view_enabled = true;
view_visible[0] = true;

camera = camera_create_view(0, 0, RES_W, RES_H);

view_set_camera(0, camera);

window_set_size(RES_W*RES_SCALE, RES_H*RES_SCALE);
surface_resize(application_surface, RES_W*RES_SCALE, RES_H * RES_SCALE);

