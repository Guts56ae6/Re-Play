#region Vars
//Normal
vida=100
tempo=60
cd_invencivel=0
cd_invencivel_max=15
estado="laser"
cd_tiro=0
cd_tiro_max=15
vida_delay=vida
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
}
maquina_estado = function() {
    switch (estado) {

        case "idle": {
            estado = "laser";
            break;
        }

        case "tiro1": {

            repeat (20) {
                var _tiro = instance_create_layer(
                    x, y, "tiros", obj_tiro_boss
                );

                _tiro.direction = irandom_range(225, 315);
            }

            estado = "idle";
            break;
        } 
        case "laser": {
        
            // Cria o laser apenas uma vez
            if (!laser_criado) {
        
                laser_id = instance_create_layer(
                    x, 130, "tiros", obj_laser
                );
        
                laser_criado = true;
        
                show_debug_message("Tentou criar o laser!");
                show_debug_message("ID: " + string(laser_id));
            }
        
            // Espera o laser ser destruído
            else if (!instance_exists(laser_id)) {
        
                laser_id = noone;
                laser_criado = false;
                estado = "idle";
        
            }
        
            break;
        }
    }
}
#endregion