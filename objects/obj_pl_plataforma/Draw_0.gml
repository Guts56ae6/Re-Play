draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if encosto{
    draw_text(x,(y-sprite_height)-10,"Press space")
}
if item>=1 and !encosto{
    draw_text(x,(y-sprite_height)-10,"item: "+string(item))
}