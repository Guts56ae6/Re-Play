function inicia_efeito_mola(){
	xscale=1
	yscale=1
}
function efeito_mola(_xscale=1,_yscale=1){
	xscale=_xscale
	yscale=_yscale
}
function retorna_mola(qtd){
	xscale=lerp(xscale,1,qtd)
	yscale=lerp(yscale,1,qtd)
}
function desenha_efeito_mola(){
	draw_sprite_ext(sprite_index,image_index,x,y,xscale,yscale,image_angle,image_blend,image_alpha)
}