/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if instance_exists(id) {
	if place_meeting(x, y, obj_wall) {
		if direc == 1 { // Indo pra esquerda
			hspeed = 3;
			direc = 0;
			image_xscale = -1;
		} else if direc == 0 { // Indo pra direita
			hspeed = -3;
			direc = 1;
			image_xscale = 1;
		}
	}
	if place_meeting(x, y, obj_hero) {
		global.life --;
		audio_play_sound(snd_damage_in_player, 1, false);
		instance_destroy(id);	
	}
}