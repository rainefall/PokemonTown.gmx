///draw_model(index,x,y,angle,scale)

for (var i =0; i < sprite_get_number(argument0); i++) {
    // "Lighting" (makes lower layers darker because it looks better)
    var color = make_colour_rgb(128 + 128*(i/sprite_get_number(argument0)),128 + 128*(i/sprite_get_number(argument0)),128 + 128*(i/sprite_get_number(argument0)));
    draw_sprite_ext(argument0, i, argument1, argument2-i/8 - i*argument4,argument4 * (i/sprite_get_number(argument0) + VANISHINGPOINT)/2,argument4 * (i/sprite_get_number(argument0) + VANISHINGPOINT)/2,argument3,color,image_alpha)
}
