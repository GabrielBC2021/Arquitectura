

if transition == true {
    image_alpha -=.05; //oscurecimiento despacio
    
    if image_alpha == 0 {
        transition = false;
        image_index ++; //cambia de imagen
    }
}

if transition == false && image_alpha < 1 {
    image_alpha += .05; //va apareciendo la imagen
    
    if image_alpha == .9
        TextBox.next_m = true; //cambia de texto
}
