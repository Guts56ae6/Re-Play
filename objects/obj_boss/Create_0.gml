#region Vars
//Normal
vida=100
tempo=30
cd_invencivel=0
cd_invencivel_max=15
estado="idle"
cd_tiro=0
cd_tiro_max=15
//Arrays

//Prefix
eb_create_inicio_efeito_branco()
inicia_efeito_mola()

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
maquina_estado=function(){
    switch (estado) {
    	case "idle":{
            estado=choose("tiro1",)
            break;
        }
        case "tiro1":{
            var _dir=irandom(360)
            repeat (2) {
                _dir+=22.5
                var _tiro=instance_create_layer(x,y,"tiros",obj_tiro_boss);
                _tiro.direction=_dir
            }
            estado="idle"
            break;
        }
    }
}
#endregion