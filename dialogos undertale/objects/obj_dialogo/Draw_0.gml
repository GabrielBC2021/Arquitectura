
//Dibujar la caja

	draw_set_color(c_white)
	draw_rectangle(x1 - 5,y1 - 5,x2 + 5,y2 + 5, false)
	draw_set_color(c_black)
	draw_rectangle(x1,y1,x2,y2,false)

//Dibujar el texto
	draw_set_color(c_white)
	draw_set_font(fnt_sans)
	draw_text(x1 + 32*6,y1 + 32*1.5,"*")
	draw_text(x1 + 32*7, y1 + 32*1.5, string_copy(str_text[int_text],0,int_count))
	
//Dibujar el sprite

	draw_sprite_ext(spr_sans_face,img_face,x1 + 32, y1 + 64,3,3,0,c_white,1)
