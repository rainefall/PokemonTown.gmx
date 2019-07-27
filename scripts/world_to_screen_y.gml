///Converts coordinates from world space to screen space (x,y)

xx = argument0;
yy = argument1;

if instance_exists(obj_camera) {
    rad = sqrt(sqr(xx-obj_camera.x)+sqr(yy-obj_camera.y));
    return(lengthdir_y(rad,obj_camera.angle + point_direction(obj_camera.x,obj_camera.y,xx,yy))* 1/obj_camera.z);
} else {
    return 0;
}
