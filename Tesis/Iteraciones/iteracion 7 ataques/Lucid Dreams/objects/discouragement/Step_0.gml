//IA

//actuacion 


	if(hspeed==0){
	
		if(random(3) <1 && place_free(x-1,y)){ //izq
		
			sprite_index=dis_izq;
			hspeed=-v;
			vspeed=0;
			
		
		}
		
		if(random(3)<1 && place_free(x+1,y)){ //der
		
			sprite_index=dis;
			hspeed=v;
			vspeed=0;
			
		
		}
	
	}

