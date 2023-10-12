//IA
//actuacion 

#region //persecucion 

if (distance_to_object(Moxi_movimiento)< 40)//distancia entre los dos objetos
{
	//margen de vision
	if (point_direction(x,y,Moxi_movimiento.x, Moxi_movimiento.y)> 0 && point_direction(x,y,Moxi_movimiento.x, Moxi_movimiento.y)< 360 ){
	
	//movimiento del enemigo
		move_towards_point(Moxi_movimiento.x, Moxi_movimiento.y, .7);	
	}

}

#endregion

#region //colision

//cambios de direccion si hay un obstaculo
if not place_free(x+4,y){

	hspeed=izq;
	direccion=0;
}
if not place_free(x-4,y){

	hspeed=der;
	direccion=.7;
}
#endregion

