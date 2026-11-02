#region Vars
//Normal
vida=100
tempo=30
cd_invencivel=0
cd_invencivel_max=15
//Arrays

//Prefix
eb_create_inicio_efeito_branco()
inicia_efeito_mola()
alarm[0]=tempo
#endregion
#region Metódos
dano=function(){
    if cd_invencivel<=0{
        vida--
        eb_metododano_timer_efeito_branco(5)
        efeito_mola(1.3,0.8)
        cd_invencivel=cd_invencivel_max
        instance_destroy(other)
    }
}

#endregion