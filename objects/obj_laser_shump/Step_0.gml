if alarm<=30{
    image_angle+=angl
    angl+=add
}
if !instance_exists(obj_boss_shump){
    instance_destroy()
}