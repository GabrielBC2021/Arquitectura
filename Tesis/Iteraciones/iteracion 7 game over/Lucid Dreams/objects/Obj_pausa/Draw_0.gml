if(pausa){
	if(!surface_exists(pausaSurface)){
	
		//pantallazo del juego
		pausaSurface= surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
		surface_set_target(pausaSurface);
		draw_surface(application_surface,0,0);
		surface_reset_target();
		
		instance_deactivate_all(true);
		
	}
	
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0, 1366, 213, false);
	
#region //dibujar menu

//posicionamiento del menu

x=camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2- width/2;
y=camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2- height/2;

// dibujar el menu

draw_sprite_ext(sprite_index ,image_index , x, y, width/sprite_width, height/sprite_height,0,c_white,1);

//dibujar el texto
draw_set_font(fntPausa);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

/*
for(var i=0; i< op_length; i++){

	var _c= c_white;
	if (pos == i){
		_c= c_yellow;
	}
}*/	
	draw_text_color(x+op_border, y+op_space, option[0], c_white, c_white,c_white,c_white,1);

#endregion

}
