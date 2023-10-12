
if transition == true {
    image_alpha -=.05;
    
    if image_alpha == 0 {
        transition = false;
        image_index ++;
    }
}

if transition == false && image_alpha < 1 {
    image_alpha += .05;
    
    if image_alpha == .9
        TextBox.next_m = true;
}
