#region Vars
//normal
vida=100
cd_invencivel=0
cd_invencivel_max=15
//arrays

//prefix
eb_create_inicio_efeito_branco()
inicia_efeito_mola()

#endregion

#region Métodos
dano=function(){
    if cd_invencivel<=0{
        vida--
        eb_metododano_timer_efeito_branco(5)
        efeito_mola(1.3,0.8)
        cd_invencivel=cd_invencivel_max
        audio_play_sound(snfx_damage_boss_shump,0,false)
    }
}
#endregion

#region Máquina de estados

#endregion