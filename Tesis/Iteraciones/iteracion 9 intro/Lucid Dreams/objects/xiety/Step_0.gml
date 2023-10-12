//IA
//actuacion 

#region //persecucion 

if (distance_to_object(Moxi_movimiento)< 50){
	
	if (point_direction(x,y,Moxi_movimiento.x, Moxi_movimiento.y)> 0 && point_direction(x,y,Moxi_movimiento.x, Moxi_movimiento.y)< 180 ){
	
		move_towards_point(Moxi_movimiento.x, Moxi_movimiento.y, 1)
		
	}

}


#endregion

#region //movimiento

if(direccion=1){
			sprite_index=Xiety_der;
			
		}else{	
			sprite_index=Xiety_izq;
	
		}
	
	
#endregion 

#region //gravedad

if place_free(x, y+1){

	gravity=1;

}else{
	gravity=0;
}


#endregion

#region //colision

if not place_free(x+4,y){

	hspeed=izq;
	direccion=0;
}
if not place_free(x-4,y){

	hspeed=der;
	direccion=1;
}


#endregion

#region //definir direccion
/*
if hspeed=der{

	direccion=1
}
if hspeed=izq{
	direccion=0
}
*/
#endregion
