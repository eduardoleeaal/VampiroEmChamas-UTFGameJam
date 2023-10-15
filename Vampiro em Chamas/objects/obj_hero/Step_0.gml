/// @description Insert description here
// You can write your code in this editor


var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check_pressed(vk_space);
var _up2 = keyboard_check_pressed(ord("W"));

var _move = (_right - _left);

hsp = _move * velocidade;

vsp += gravt;

if(place_meeting(x, y + 1, obj_floor) and (_up or _up2)){
	vsp -= 6.5;
}

if(place_meeting(x + hsp, y, obj_floor)){
	while(!place_meeting(x + sign(hsp), y, obj_floor)){
		x += sign(hsp);	
	}
	
	hsp = 0;
}

x += hsp;

if(place_meeting(x, y + vsp, obj_floor)){
	while(!place_meeting(x, y + sign(vsp), obj_floor)){
		y += sign(vsp);	
	}
	
	vsp = 0;
}

y += vsp;



//Animação
if (!place_meeting(x, y+1, obj_floor)){
	sprite_index = spr_hero_jump;
	image_speed = 0;
	if(sign(vsp) > 0){
		image_index = 1;
	}
	else {
		image_index = 0;
	}
}
else{
	image_speed = 1;
	
	if(hsp == 0){
	sprite_index = spr_hero_idle;	
	}
	else{
		sprite_index = spr_hero_run;
	}
}

if(hsp != 0) image_xscale = sign(hsp);



//SOM PASSOS
var som_passo = snd_som_de_passos;

if  keyboard_check(ord("D")) || keyboard_check(ord("A"))
{
	if !audio_is_playing(snd_som_de_passos)
	{
		audio_play_sound(snd_som_de_passos, 1, false);
	}
}
else
{
    andando = false;
    
    if audio_is_playing(snd_som_de_passos)
    {
        audio_stop_sound(snd_som_de_passos);
    }
}


//SOM DE PULO
var pulo_pressionado = false;

if _up or _up2
{
    if place_meeting(x, y + 1, obj_floor)
    {
        audio_play_sound(snd_pulo, 1, false);
        pulo_pressionado = true;
        vspd = -8; 
    }
}

if _up or _up2
{
    pulo_pressionado = false;
}

if place_meeting(x, y + 1, obj_floor) 
{
    if (!pulo_pressionado)
    {
        audio_resume_sound(snd_som_de_passos);
    }
}
else
{
    audio_pause_sound(snd_som_de_passos);
}


