
if(health >3){ health=3;}

if(health <0){ health =0;}

//dibujamos el fondo de los corazones

draw_sprite_ext(corazon1,health,32,32,4,4,0,c_white,1);

//dibujamos el borde

draw_sprite_ext(corazon1,0,32,32,4,4,0,c_white,1);
 
 