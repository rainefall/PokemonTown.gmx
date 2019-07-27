///get_instance_mouse_over(obj)
mx = window_views_mouse_get_x();
my = window_views_mouse_get_y()
return instance_position(screen_to_world_x(mx,my), screen_to_world_y(mx,my), argument0);
