/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

t_mil-= 1
if t_mil=-1 // reduz segundos 1  por 1
{
t_mil=9
t_sec-=1
}

if t_sec=-1 // reduz minuto por 1
{
t_sec=59
t_min-=1
}

// qnd chegar em zero
if !(t_sec=0&&t_min=0&&t_mil=0){
alarm[0]=6
}
else{
audio_play_sound(snd_jumpscare, 1, false);
room_goto(rm_loss);
}
