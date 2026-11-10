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
ink         = noone;
skip        = noone;
dir = 1;
//arrays
colission=[obj_chao_plataforma]
//prefix

#endregion

#region metódos
pega_input=function(){
    left=keyboard_check(ord("A"))
    right=keyboard_check(ord("D"))
    jump=keyboard_check(ord("W"))
}
checa_chao=function(){
    chao=place_meeting(x,y+1,colission)
}
aplica_velocidade=function(){
    velh=(right-left)*max_velh
    if !chao velv+=grav
    else velv=0
    if chao and jump velv=-max_velv
}
mov=function(){
    move_and_collide(velh,vspeed,colission,24)
    move_and_collide(0,velv,colission,24)
}
#endregion

#region máquina de estados

#endregion