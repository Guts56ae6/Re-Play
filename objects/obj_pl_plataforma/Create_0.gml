#region Vars
//normals
velh        = 0;
max_velh    = 5;
velv        = 0;
max_velv    = 8;
chao        = false;
teto        = false;
grav        = 0.2;
right       = noone;
left        = noone;
jump        = noone;
skip        = noone;
dir = 1;
teto=noone;
interact=noone;
item=0
encosto=false
encosto_id=noone
//arrays
colission=[obj_chao_plataforma]
//prefix

#endregion

#region metódos
pega_input=function(){
    left=keyboard_check(ord("A"))
    right=keyboard_check(ord("D"))
    jump=keyboard_check(ord("W"))
    interact=keyboard_check_pressed(vk_space)
}
checa_chao=function(){
    chao=place_meeting(x,y+1,colission)
}
aplica_velocidade=function(){
    velh=(right-left)*max_velh
    if !chao velv+=grav
    else velv=0
    if chao and jump velv=-max_velv
    teto = place_meeting(x, y - 1, colission);
    if (teto && velv < 0) {
        velv = 0;
    }
    chao = place_meeting(x, y + 1, colission);
    if (chao && velv > 0) {
        velv = 0;
    }
    encosto=place_meeting(x,y,obj_item_plataforma)
    if encosto{
        encosto_id=instance_place(x,y,obj_item_plataforma)
    }

}
mov=function(){
    move_and_collide(velh,vspeed,colission,24)
    move_and_collide(0,velv,colission,24)
}
#endregion
pega_item=function(){
    if encosto and interact{
        item++
        instance_destroy(encosto_id)
    }
}

#region máquina de estados

#endregion