
tempo=temp;
instance_deactivate_object(Z);

if(cajaText == noone){

	var dialogo= instance_create_layer(x, y, "pausa",TextBoxBosque3);
	
	cajaText = dialogo.id;
	dialogo.img_face = 1;
	
}