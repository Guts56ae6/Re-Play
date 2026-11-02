#region Vars
//normal
vell=5
cd_tiro=0
cd_tiro_max=10
//arrays

//prefix
inicia_efeito_mola()
#endregion
#region Metódos
move=function(){
    var _up=keyboard_check(ord("W"))
    var _left=keyboard_check(ord("A"))
    var _down=keyboard_check(ord("S"))
    var _right=keyboard_check(ord("D"))
    x+=(_right-_left)*vell
    y+=(_down-_up)*vell
    x=clamp(x,0+sprite_width/2,room_width-sprite_width/2)
    y=clamp(y,0+sprite_height/2,room_height-sprite_height/2)
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
#endregion