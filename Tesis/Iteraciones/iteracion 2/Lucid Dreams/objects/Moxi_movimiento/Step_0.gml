//direccion del sprite
var direccion= keyboard_check(vk_right) - keyboard_check(vk_left);
var salt= keyboard_check_pressed(vk_space);


#region//salto

if (salt and !place_free(x,y+1)){//limitamos a un salto
			sprite_index=Moxi_salto_der;
			vspeed=-salto;
			}
	
#endregion
			
#region//movimiento del personaje
//movimiento del sprite
if (direccion !=0){
	
			if(direccion == 1)//direccion en el origen=0 sin movimiento.
				{
					x+= direccion*1.5;//velocidad
					sprite_index = Moxi_mov_der;//imagen de movimiento
		
				}else if(direccion ==-1){
					x+= direccion*1.5;//velocidad
					sprite_index = Moxi_mov_izq;//imagen de movimiento
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

