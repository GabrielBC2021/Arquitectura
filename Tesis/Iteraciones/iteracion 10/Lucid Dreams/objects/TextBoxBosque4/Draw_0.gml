

draw_sprite_ext(cuadroText,1,1000,20,1.5,1,0,c_white,1);
draw_set_font(fntPausa);
draw_set_color(c_white);
draw_text(1025, 35, string_copy(str_text[int_text],0,int_count));

instance_activate_object(Z);
