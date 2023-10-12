//numero de las opciones del menu
op_length= array_length(option);

#region //movimiento en menu

arriba= keyboard_check_pressed(vk_up);
abajo=keyboard_check_pressed(vk_down);

pos += abajo- arriba;
if (pos>= op_length){

	pos=0;
}

if (pos < 0){

	pos= op_length-1;
}
#endregion

#region //acciones del menu

aceptar= keyboard_check_pressed(vk_enter);

	if(aceptar){
		
switch(pos){
	//iniciar
		case 0: 
	
		//							(nombre de la secuencia, tamaño, tamaño, efecto)
	 fadeInn = layer_sequence_create("fade",room_width/2, room_height/2,fadeIn);
		
		break;
	//controles
		case 1: fadeInnn = layer_sequence_create("fade",room_width/2, room_height/2,fadeIn);
		
		break;
		
	//salir del juego
		case 2:game_end();
		break;
	
		}
	}
#endregion


