#region Vars
//Normal
vida=100
tempo=60
cd_invencivel=0
cd_invencivel_max=15
cd_tiro=0
cd_tiro_max=tempo
vida_delay=vida
acabo=false
//Arrays

//Prefix
eb_create_inicio_efeito_branco()
inicia_efeito_mola()
laser_id = noone;
laser_criado = false;
alarm[0]=tempo
#endregion
#region Metódos
dano=function(){
    if cd_invencivel<=0{
        vida--
        eb_metododano_timer_efeito_branco(5)
        efeito_mola(1.3,0.8)
        cd_invencivel=cd_invencivel_max
        audio_play_sound(snfx_damage_boss,0,false)
    }
    if vida<=0{
        instance_destroy()
    }
}

#endregion
#region estados
estado_parado=function(){
    estado=estado_rajada_continua
}
estado_rajada=function(){
    var _dir=0
    repeat (12) {
        var _tiro=instance_create_layer(x,y,"tiros",obj_tiro_boss)
        _dir+=30
        _tiro.direction=_dir
    }
    estado=estado_parado
}
estado_laser=function(){
    
}

#endregion
#region controle

estado=estado_parado
#endregion