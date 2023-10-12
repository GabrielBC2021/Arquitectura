
tempo=temp;

if(cajaText == noone){

	var dialogo= instance_create_layer(x, y, "bloques",TextBoxBosque);
	
	cajaText = dialogo.id;
	dialogo.img_face = 1;
	
}