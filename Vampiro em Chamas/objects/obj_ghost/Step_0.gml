/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
distancia_min = 100;
if instance_exists(obj_hero) {
	// direction = point_direction(x, y, obj_hero.x, obj_hero.y);
	if place_meeting(x, y, obj_hero) {
		global.life --;
		audio_play_sound(snd_damage_in_player, 1, false);
		instance_destroy(id);	
	}
	
	
	var _dist = point_distance(x, y, obj_hero.x, obj_hero.y);
		
	if(_dist < distancia_min){
		//Indo na direção do player
		var _dir = point_direction(x, y, obj_hero.x, obj_hero.y);
		direction = _dir;
	}
	
	if place_meeting(x, y, obj_wall) {
		if direc == 1 { // Indo pra esquerda
			hspeed = 0.7;
			direc = 0;
			image_xscale = -1;
		} else if direc == 0 { // Indo pra direita
			hspeed = -0.7;
			direc = 1;
			image_xscale = 1;
		}
		direction *= -1;
	}
	
	if hspeed < 0 
	{
		image_xscale = 1;
	} else {
		image_xscale = -1;
	}
	
}
