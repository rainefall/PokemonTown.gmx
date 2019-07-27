///instance_mouse_over
mx = window_views_mouse_get_x();
my = window_views_mouse_get_y();
if position_meeting(screen_to_world_x(mx,my), screen_to_world_y(mx,my), self) {
    return true;
} else {
    return false;
}
