/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if instance_exists(obj_hero) {
	if place_meeting(x, y, obj_hero) {
		instance_destroy(obj_hero);
		audio_stop_sound(snd_msc_jogo);
	}
}
global.count ++;

if y == 125 {
	show_message("CHEGUEI");
}

if global.count == 300 {
	vspeed = -0.15;
}