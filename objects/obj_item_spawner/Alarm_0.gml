var _x=irandom_range(32,1248)
instance_create_layer(_x,-276,"items",obj_item_plataforma)
if obj_pl_plataforma.item>=3{
    control=false
}
else{
    alarm[0]=tempo*5
}