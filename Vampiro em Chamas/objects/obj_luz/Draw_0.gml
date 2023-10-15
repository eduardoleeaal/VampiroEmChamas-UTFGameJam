/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(surface_exists(luz) and instance_exists(obj_hero)){
	surface_set_target(luz);
	
	draw_set_alpha(0.80);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	gpu_set_blendmode(bm_subtract);
	draw_circle(obj_hero.x, obj_hero.y, 70, false);
	gpu_set_blendmode(bm_normal);
	
	
	surface_reset_target();
	draw_surface(luz, 0, 0);
} else {
	luz = surface_create(room_width, room_height);	
}
