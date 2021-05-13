/// @description Insert description here
// You can write your code in this editor
draw_text(x, y+15, "Heat Gauge");
draw_text(x, y, heat);
var mercury_stretch = heat/maxheat;
draw_sprite_stretched(heat_merc, 1, x, y, 128, -320*mercury_stretch);
draw_sprite_stretched(heat_gauge_spr, 1, x, y-320, 128, 320);