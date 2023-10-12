//IA
//actuacion 

#region //movimiento
	if(direccion=1){
			sprite_index=dis;
			
		}else{	
			sprite_index=dis_izq;
	
		}
	
#endregion 

#region //colision

if not place_free(x+1,y){

	hspeed=izq;
	direccion=0;
}
if not place_free(x-1,y){

	hspeed=der;
	direccion=1;
}


#endregion

#region //definir direccion

if hspeed=der{

	direccion=1
}
if hspeed=izq{
	direccion=0
}
#endregion