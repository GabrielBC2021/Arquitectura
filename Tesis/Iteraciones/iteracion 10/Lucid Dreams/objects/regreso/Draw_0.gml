//posicionamiento del menu

x=304;
y=167;

// dibujar el menu


//dibujar el texto
draw_set_font(fntPausa);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//coloreamos las opciones
for(var i=0; i< op_length; i++){

	var _c= c_white;
	if (pos == i){
		_c= c_yellow;
	}
	
	draw_text_color(x+op_border, y+op_border + op_space*i, option[i], _c, _c,_c, _c,1);
}



