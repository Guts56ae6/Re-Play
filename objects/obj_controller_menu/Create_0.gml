#region variaveis
//arrays
menu=["Jogar","Sair",];
//comuns
atual=0;
margem=30
#endregion
#region controla menu
controla_menu=function(){
	#region movimentando o menu
	if keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")) {
		atual--;
		audio_play_sound(sfx_zap,0,0);
		margem=0;
	}
	if keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")) {
		atual++;
		audio_play_sound(sfx_zap,0,0);
		margem=0;
	}
	atual=clamp(atual,0,(array_length(menu)-1));
	#endregion
	#region indo para o jogo
	if keyboard_check_pressed(vk_enter){
		switch (atual) {
			case 0:create_tras(1)
				break;
			case 1:create_tras(2)
				break;
		}
		audio_play_sound(sfx_twoTone,0,0)
	}
	#endregion

#region resetando a margem
margem=lerp(margem,30,.1)
#endregion
}
#endregion
#region desenha menu
desenha_menu=function(){
	#region desenhando menu
	//setando
	var gui_height=display_get_gui_height();
	var aumento=0;
	var alturatext=string_height("I")
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	for (var i = 0; i < array_length(menu); i++) {
		var cor=c_white;
		var movimento=0
		if i==atual {
			cor=c_red
			movimento=margem
		}
		draw_set_colour(cor);
		draw_set_font(fnt_menu)
		draw_text(movimento,(gui_height/2+(25+alturatext)*i)-100,menu[i]);
	};
	//reset
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_colour(-1);
	draw_set_font(-1);
	#endregion
	}
#endregion