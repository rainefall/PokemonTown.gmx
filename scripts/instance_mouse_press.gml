///instance_mouse_press(mouse button)
if mouse_check_button_pressed(argument0) {
    mx = window_views_mouse_get_x();
    my = window_views_mouse_get_y()
    if position_meeting(screen_to_world_x(mx,my), screen_to_world_y(mx,my), self)
        return true;
} else {
    return false;
}
