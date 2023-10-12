
//Variables para el dibujo del rectangulo

	x1 = 32*2;
	x2 = 32*((room_width/32) - 2); //((room_width/32) - 2)
	y1 = room_height - (32*8);
	y2 = room_height - 32;

//Variables para el dialogo

	int_count = 0;	//"Contador"
	int_text = 0;	//Numero del texto en el momento
	int_vel = 0.5;	//Velocidad a la que se escribe el dialogo, solo pueden ser numero como 0.1 , 0.5 , 1

	//Matriz de textos
	str_text[int_text] = "Hey. Has estado ocupado \n¿a que si?";	
	str_text[1] = "Bueno, tengo una pregunta \npara ti: ¿Crees que incluso la \npeor persona puede cambiar?";
	str_text[2] = "¿Que todo el mundo puede \ncambiar si lo intenta?";
	str_text[3] = "Hehehehe. Vale. Aqui tengo\nuna mejor pregunta:";
	str_text[4] = "";
	str_text[5] = "¿Quieres pasar un mal rato?";

	//Para el sprite	
	
	img_face = 0;	//Subimagen del sprite