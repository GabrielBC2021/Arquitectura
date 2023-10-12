pausa= !pausa;

if (pausa){
/*
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
	//continuar
		case 0: //game_start();
		
		break;
	//salir del juego
		case 1:game_end();
		break;
	
		}
	}
#endregion
*/		
	
}else{

	surface_free(pausaSurface);
	instance_activate_all();

	}