#region Vars
//Normal
vida=100
tempo=60
cd_invencivel=0
cd_invencivel_max=15
vida_delay=vida
acabo=false
estado="parado"
//Arrays

//Prefix
eb_create_inicio_efeito_branco()
inicia_efeito_mola()
laser_id = noone;
laser_criado = false;
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
troca_sprite=function(spr){
	if sprite_index!=spr{
		sprite_index=spr;
		image_index=0;
    };
}
maquina_de_estados=function(){
    switch (estado) {
    	case "parado":{
            troca_sprite(spr_boss_idle)
            acabo=false
            estado="aguardo"
            alarm[0]=60
            break;
        }
        case "rajada":{
            troca_sprite(spr_boss_tiro)
            var _dir=irandom_range(222,228)
            repeat (7) {
            	var _tiro=instance_create_layer(x,y,"tiros",obj_tiro_boss)
                _tiro.direction=_dir
                _dir+=15
            }
            if image_index>=30{
                estado="parado"
            }
            break;
        }
        case "laser":{
            screenshake(30)
            if obj_controller_screen_shake.tremendo==false{
                instance_create_layer(x,128,"tiros",obj_laser)
            }
            estado="aguardo laser"
            break;
        }
        case "pre laser":{
            troca_sprite(spr_boss_laser)
            break;
        }
    }
}
#endregion
