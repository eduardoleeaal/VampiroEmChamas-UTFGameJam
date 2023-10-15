/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Pare a música da tela inicial
var nome_cena_atual = room_get_name(room);

if (nome_cena_atual != cena_atual)
{
    cena_atual = nome_cena_atual;
    
    if (audio_is_playing(snd_msc_inicio))
    {
        audio_stop_sound(snd_msc_inicio);
    }
    
    if (cena_atual == "room_inicial")
    {
        som_tema_atual = snd_msc_inicio; 
        audio_play_sound(som_tema_atual, 1, true); 
    }
	else if (cena_atual == "room_jogo")
    {
        som_tema_atual = snd_msc_jogo; 
        audio_play_sound(snd_msc_jogo, 1, true); 
    }
}






