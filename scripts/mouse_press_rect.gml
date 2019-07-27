///mouse_press_rect(index,x1,y1,x2,y2)
if window_mouse_get_x() >= argument1 && window_mouse_get_x() <= argument3 && window_mouse_get_y() >= argument2 && window_mouse_get_y() <= argument4 && mouse_check_button_pressed(argument0){
    return true;
} else {
    return false;
}
