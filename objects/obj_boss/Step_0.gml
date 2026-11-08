
retorna_mola(0.1)
eb_step_contador_efeito_branco()
cd_invencivel--
vida_delay=lerp(vida_delay,vida,0.1)
maquina_de_estados()
if estado=="pre laser" and image_index>=14 and acabo=false and sprite_index==spr_boss_laser{
    image_index=14
    estado="laser"
}
show_debug_message(estado)