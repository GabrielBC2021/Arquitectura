
//Variables para controlar la caja de dialogo

	var key_z, key_x;
	
	key_z = keyboard_check_pressed(ord("Z"));
	key_x = keyboard_check_pressed(ord("X"));

//Logica de la caja de dialogo

	//Efecto de escritura del dialogo
	
	if (int_count < string_length(str_text[int_text])){
		int_count += int_vel;	//Si el "contador" es menor al total de caracteres del texto en el momento, al "contador" se le va sumando caracteres segun la velocidad que necesitemos.
		//audio_play_sound(snd_letter,0,false);
	}
	
	//Pasar al siguiente cuadro
	
	if(key_z){
		if (int_text < array_length(str_text) - 1){					//Si el numero de dialogos es menor al total de dialogos menos uno.
			if(int_count == string_length(str_text[int_text])){		//Si el "contador" de caracteres es igual al total de caracteres del texto en el momento
				int_count = 0;										//Se reinicia el "contador"
				int_text += 1;	
				//Se avanza al siguiente dialogo		
			}
		}
		else room_goto(Bosque);									//Una vez terminado los dialogos, se borra el cuadro
	}
	
	//Omitir la escritura y completar el cuadro

	if(key_x){
		if(int_count < string_length(str_text[int_text])){			//Si el "contador" de caracteres es menor al total de caracteres del texto en el momento 
			int_count = string_length(str_text[int_text])			//Cabia el contador al total de caracteres para completar el texto.
		}
	}


//Huea improvisada de sonido

	if(int_count == 1) alarm[0] = 1;



  

