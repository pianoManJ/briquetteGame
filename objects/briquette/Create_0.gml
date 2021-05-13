/// @description establish variables
// You can write your code in this editor
acceleration = 1;
ground_accel = 1;
air_accel = 0.25;
x_spd = 0; //left: - right: +
y_spd = 0; //up: - down: +
speed_cap = 10;
grav = 1;


airboost = false;
groundboost = false;
grounded = true; //jumping checks
jumping = false;

//create heat guage instance
hGuage = instance_create_layer(128, 610, "ui_layer", heat_guage);