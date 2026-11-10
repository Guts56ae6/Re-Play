
retorna_mola(0.1)
eb_step_contador_efeito_branco()
cd_invencivel--
vida_delay=lerp(vida_delay,vida,0.1)
maquina_de_estados()
if estado=="pre laser" and image_index>=14 and acabo=false and sprite_index==spr_boss_laser_shump{
    image_index=14
    estado="laser"
}
if (estado == "chegou") {
    vida = lerp(vida, max_vida, 0.1);

    // Quando a vida estiver quase cheia, ajusta ao máximo e inicia o alarme.
    if (vida >= max_vida - 0.1) {
        vida = max_vida;
        audio_play_sound(snd_boss_shump,1,1)
        estado = "parado";
        alarm[0] = 60;
    }
}