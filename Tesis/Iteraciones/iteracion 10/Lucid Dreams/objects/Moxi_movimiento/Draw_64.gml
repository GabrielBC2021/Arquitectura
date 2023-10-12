//dibujamos el corazon

//dibujamos el fondo de los corazones
draw_sprite_ext(corazon1,health,32,32,4,4,0,c_white,1);


//dibujamos el borde
if(health>0){
	draw_sprite_ext(corazon1,0,32,32,4,4,0,c_white,1);
}else {
	
	draw_sprite_ext(corazon1,4,32,32,4,4,0,c_white,1);

}
 