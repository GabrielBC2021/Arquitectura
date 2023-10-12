//movimiento de fondo


//declaramos nuestra variable
var lejano=layer_get_id("arboles_fondo_noche");
var stars=layer_get_id("estrellas");
var fondoo=layer_get_id("estalacnitasFon");
var arbolesDia= layer_get_id("arbolesFO");


// (valor que deseamos mover,  movimiento que hará en X, velocidad)
layer_x(lejano, lerp(0, camera_get_view_x(view_camera[0]), 0.5)  );
layer_x(stars, lerp(0,camera_get_view_x(view_camera[0]), 0.4)     );
layer_x(fondoo, lerp(0, camera_get_view_x(view_camera[0]), 0.5)  );
layer_x(arbolesDia,lerp(0, camera_get_view_x(view_camera[0]), 0.5) );

