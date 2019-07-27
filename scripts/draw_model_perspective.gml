///draw_model_perspective(index,x,y,angle,scale,alpha)

var screen_x = argument1 - view_wview[0]/2;
var screen_y = argument2 - view_hview[0]/2;
var scale = argument4;
var screen_dir = obj_camera.angle - argument3;

for (var i =0; i < sprite_get_number(argument0); i++) {
    // "Lighting" (makes lower layers darker because it looks better)
    var color = make_colour_rgb(128 + 128*(i/sprite_get_number(argument0)),128 + 128*(i/sprite_get_number(argument0)),128 + 128*(i/sprite_get_number(argument0)));
    draw_sprite_ext(argument0, i, view_wview[0]/2 + screen_x * (i/256/obj_camera.z+1), view_hview[0]/2 + (screen_y-i/8) * (i/256/obj_camera.z+1) - i/(2*obj_camera.z),scale * (i/sprite_get_number(argument0) + VANISHINGPOINT)/2 * 1/obj_camera.z,scale * (i/sprite_get_number(argument0) + VANISHINGPOINT)/2 * 1/obj_camera.z,screen_dir,color,argument5)
}
