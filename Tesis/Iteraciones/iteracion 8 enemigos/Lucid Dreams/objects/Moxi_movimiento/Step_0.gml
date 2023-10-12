//direccion del sprite
var direccion= keyboard_check(vk_right) - keyboard_check(vk_left);
var salt= keyboard_check_pressed(vk_up);


#region //verificar si esta en el aire 

if vspeed>0{
		caer=true;
	}else{
		caer=false;}


if vspeed<0{
		arriba=true;
	}else{
		arriba=false;}

#endregion

#region//verificacion de sprites

if !keyboard_key{
	if (caer==true){//sprites de caida
		if(sprite_index==Moxi_MovIzq || sprite_index==Moxi_MovParadoIzq){
			sprite_index=Moxi_MovSaltoIzq;
		}else{
			sprite_index=Moxi_MovSaltoDer;
		}
	}else if arriba{//sprites de salto
		if(sprite_index==Moxi_MovIzq || sprite_index==Moxi_MovParadoIzq){
			sprite_index=Moxi_MovSaltoIzq;
		}else{
			sprite_index=Moxi_MovSaltoDer;
		}
	}	
}

#endregion

#region//salto

if (salt and !place_free(x,y+1)){//limitamos los saltos
	//sprite_index= Moxi_salto_der;
	vspeed=-salto;
}

#endregion
			
#region //movimiento del personaje
//movimiento del sprite

if (direccion !=0 ){
	
			if(direccion == 1 && place_free(x+vel,y))//direccion en el origen=0 sin movimiento.
				{
					x+= vel;//velocidad
					
				if (caer==true){//sprites de caida
						if(sprite_index==Moxi_MovIzq || sprite_index==Moxi_MovParadoIzq){
							sprite_index=Moxi_MovSaltoIzq;
							
						}else{
							sprite_index=Moxi_MovSaltoDer;
						}
					}else if arriba{//sprites de salto
						if(sprite_index==Moxi_MovIzq || sprite_index==Moxi_MovParadoIzq){
							sprite_index=Moxi_MovSaltoIzq;
			
						}else{
							sprite_index=Moxi_MovSaltoDer;
						}
					}else{
						sprite_index=Moxi_MovDer;//imagen de movimiento
						
						
					}
				
		
				}else if(direccion ==-1 && place_free(x-vel,y)){
					x-= vel;//velocidad
					
					if (caer==true){//sprites de caida
						if(sprite_index==Moxi_MovDer || sprite_index==Moxi_MovParado){
							sprite_index=Moxi_MovSaltoDer;
						}else{
							sprite_index=Moxi_MovSaltoIzq;
						}
					}else if arriba{//sprites de salto
						if(sprite_index==Moxi_MovDer || sprite_index==Moxi_MovParado){
							sprite_index=Moxi_MovSaltoDer;
						}else{
							sprite_index=Moxi_MovSaltoIzq;
						}
					}else{
						sprite_index=Moxi_MovIzq;//imagen de movimiento
						
						
					}
				
					
				}		
			
}else{
	
	if(direccion== 0 and sprite_index==Moxi_MovDer)
		{
			sprite_index=Moxi_MovParado;
			
		}else if (direccion ==0 and sprite_index==Moxi_MovIzq){
			
			sprite_index=Moxi_MovParadoIzq;
		}
}

#endregion

#region//velocidad de caida

if(place_free(x,y+1)){ // verificar si hay espacio libre un pixel hacia abajo
	//en el aire
	
	gravity=2;//fuerza de la gravedad
	
}else {
	gravity=0;
	//en el piso
}

if (vspeed>=2){ //la velocidad va incrementando y limitamos
	vspeed=2;//limite max de la velocidad
}
#endregion

