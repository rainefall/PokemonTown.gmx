///Convert coordinates from screen space to world space (x,y)

_x = argument0;
_y = argument1;

xx = _x - view_wview[0]/2;
yy = _y - view_hview[0]/2;

rad = sqrt(sqr(xx)+sqr(yy))*obj_camera.z;
dir = obj_camera.angle - point_direction(view_wview[0]/2,view_hview[0]/2,_x,_y);

return obj_camera.y - lengthdir_y(rad,dir);
