


if (characters < message_length) { //Si la cantidad de caracteres actual es menor que la cantidad en el mensaje actual
    characters += increase; //Incrementar la velocidad
    message_draw = string_copy(message[message_current], 0, characters); //Copia el mensaje
    
    caracter = (string_char_at(message[message_current], characters)); //Qué caracter hay en el puntero
    
    next_m = false; //Cambiar al siguiente message[]
    ok = false;
    
    //Sonido de maquina de escribir (cuando hay espacios lo hace igual...

    if  (caracter != " ") {
        text = 0;
            audio_play_sound(snd_text, 20, 0);
    }
    
    if text < 1
        text += increase;
} 
	else { //Si el caracter actual es mayor que la cantidad en el mensaje actual
	    if alarm[0] = -1 && ok = false
	    {
	        alarm[0] = 60;
	        ok = true;
	    }
	    if next_m = true {
	        if (message_current < message_end) { //Si hay algún mensaje más para mostrar
	            next_m = false;
	            message_current += 1; //Incrementa el mensaje en 1
	            message_length = string_length(message[message_current]); //Obtener nueva longitud de los caracteres
	            characters = 0; //Establecer los caracteres de nuevo a 0
	            message_draw = ""; //Borrar el texto dibujado
	        }
	        else { //Si ya se leyeron todos los mensajes...
	            instance_destroy(); //destruye el objeto.
			
	        }
	    }
}

//Velocidad del texto
if (message_current == 1 && characters > 16){
    increase = 0.1; //Puntos suspensivos...
}else{
    increase = 0.5;
}

if(mensaje<5)
{
	mensaje +=1;
	
}else{
	instance_destroy();
}
