#region Vars
//normal
vida=3
vell=5
cd_tiro=0
cd_tiro_max=10
cd_invencivel=0
cd_invencivel_max=30
velh=0
velv=0
//arrays

//prefix
inicia_efeito_mola()
eb_create_inicio_efeito_branco()
#endregion
#region Metódos
move=function(){
    var _up=keyboard_check(ord("W"))
    var _left=keyboard_check(ord("A"))
    var _down=keyboard_check(ord("S"))
    var _right=keyboard_check(ord("D"))
    velh=0
    velv=0
    velh+=(_right-_left)*vell
    velv+=(_down-_up)*vell
    x=clamp(x,0+sprite_width/2,room_width-sprite_width/2)
    y=clamp(y,0+sprite_height/2,room_height-sprite_height/2)
    move_and_collide(velh,velv,obj_colision)
}
tiro=function(){
    var _tiro=keyboard_check(vk_space)
    if _tiro==true and cd_tiro<=0{
        instance_create_layer(x,y,"tiros",obj_tiro)
        cd_tiro=cd_tiro_max
        efeito_mola(0.8,1.2)
    }
    cd_tiro--
    
}
dano=function(){
    if cd_invencivel<=0{
        vida--
        eb_metododano_timer_efeito_branco(5)
        screenshake(5)
        cd_invencivel=cd_invencivel_max
    }
}
#endregion