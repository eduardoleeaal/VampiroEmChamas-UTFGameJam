/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if instance_exists(obj_hero){
	switch global.life {
		case 4:
		draw_sprite(spr_life, 4, 1850, 10);
		draw_sprite(spr_life, 3, 1800, 10);
		draw_sprite(spr_life, 2, 1750, 10);
		draw_sprite(spr_life, 1, 1700, 10);
		break;
		case 3:
		draw_sprite(spr_life, 3, 1850, 10);
		draw_sprite(spr_life, 2, 1800, 10);
		draw_sprite(spr_life, 1, 1750, 10);
		break;
		case 2:
		draw_sprite(spr_life, 2, 1850, 10);
		draw_sprite(spr_life, 1, 1800, 10);
		break;
		case 1:
		draw_sprite(spr_life, 1, 1850, 10);
		break;
		case 0:
		audio_stop_sound(snd_msc_jogo);
		instance_destroy(obj_hero);
		break;
	}

}