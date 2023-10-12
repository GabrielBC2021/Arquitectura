//direccion del sprite
var direccion= keyboard_check(vk_right) - keyboard_check(vk_left);
var salt= keyboard_check_pressed(vk_up);


#region //verificar en el aire

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
		if(sprite_index== Moxi_mov_izq || sprite_index== Moxi_parado_izq){
			sprite_index= Moxi_salto_izq;
		}else{
			sprite_index= Moxi_salto_der;
		}
	}else if arriba{//sprites de salto
		if(sprite_index== Moxi_mov_der || sprite_index== Moxi_parado){
			sprite_index= Moxi_salto_der;
		}else{
			sprite_index= Moxi_salto_izq ;
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
						if(sprite_index== Moxi_mov_izq || sprite_index== Moxi_parado_izq){
							sprite_index= Moxi_salto_izq;
						}else{
							sprite_index= Moxi_salto_der;
						}
					}else if arriba{//sprites de salto
						if(sprite_index== Moxi_mov_izq || sprite_index== Moxi_parado_izq){
							sprite_index= Moxi_salto_izq;
						}else{
							sprite_index= Moxi_salto_der;
						}
					}else{
						sprite_index = Moxi_mov_der;//imagen de movimiento
					}
				
		
				}else if(direccion ==-1 && place_free(x-vel,y)){
					x-= vel;//velocidad
					
					if (caer==true){//sprites de caida
						if(sprite_index== Moxi_mov_der || sprite_index== Moxi_parado){
							sprite_index= Moxi_salto_der;
						}else{
							sprite_index= Moxi_salto_izq;
						}
					}else if arriba{//sprites de salto
						if(sprite_index== Moxi_mov_der || sprite_index== Moxi_parado){
							sprite_index= Moxi_salto_der;
						}else{
							sprite_index= Moxi_salto_izq;
						}
					}else{
						sprite_index = Moxi_mov_izq;//imagen de movimiento
					}
				
					
				}		
			
}else{
	
	if(direccion== 0 and sprite_index== Moxi_mov_der)
		{
			sprite_index=Moxi_parado;
			
		}else if (direccion ==0 and sprite_index== Moxi_mov_izq){
			
			sprite_index=Moxi_parado_izq
		}
}

#endregion

#region//velocidad de caida

if(place_free(x,y+1)){
	gravity=2;
}else {
	gravity=0;
}

if (vspeed>=2){
	vspeed=2;
}
#endregion


