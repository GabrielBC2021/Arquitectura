
draw_sprite(cuadroText, 1,80,30);

draw_sprite_ext(cuadroText,1,71,19,1.3,1,0,c_white,1);
draw_set_font(fntPausa);
draw_set_color(c_white);
draw_text(90, 30, string_copy(str_text[int_text],0,int_count));
