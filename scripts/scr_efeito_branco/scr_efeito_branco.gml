function eb_create_inicio_efeito_branco(){
	tomei_dano=false
}
function eb_metododano_timer_efeito_branco(tempo=5){
	tomei_dano=tempo
}
function eb_step_contador_efeito_branco(){
	if tomei_dano>0 tomei_dano--
}
function  eb_draw_final_efeito_branco(){
	if tomei_dano{
		#region shader
		shader_set(sh_white)
		#endregion
		#region se desenhando
		draw_self()
		#endregion
		#region resetando shader
		shader_reset()
		#endregion
	}
	#region se desenhando
	else draw_self()
	#endregion
	}
#endregion