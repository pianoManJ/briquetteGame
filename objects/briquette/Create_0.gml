/// @description establish variables
// You can write your code in this editor
acceleration = 1;
x_spd = 0; //left: - right: +
y_spd = 0; //up: - down: +
speed_cap = 20;
grav = 1;

grounded = true; //jumping checks
jumping = false;

//create heat guage instance
hGuage = instance_create_layer(50, 50, "ui_layer", heat_guage);