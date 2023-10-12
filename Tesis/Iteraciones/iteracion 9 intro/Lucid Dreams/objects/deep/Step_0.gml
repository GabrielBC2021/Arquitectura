//IA
//actuacion 

#region //persecucion 

if (distance_to_object(Moxi_movimiento)< 20){
	
	if (point_direction(x,y,Moxi_movimiento.x, Moxi_movimiento.y)> 0 && point_direction(x,y,Moxi_movimiento.x, Moxi_movimiento.y)< 360 ){
	
		move_towards_point(Moxi_movimiento.x, Moxi_movimiento.y, .7);	
	}

}

#endregion

#region //colision

if not place_free(x+4,y){

	hspeed=izq;
	direccion=0;
}
if not place_free(x-4,y){

	hspeed=der;
	direccion=.7;
}
#endregion

