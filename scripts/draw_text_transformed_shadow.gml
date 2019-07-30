///draw_text_transformed_shadow(x,y,string,xscale,yscale,angle);

// get current alpha and colour values
var lalpha = draw_get_alpha()
var lcol = draw_get_color();
// set new colour and alpha values
draw_set_alpha(lalpha/2);
draw_set_color(c_black);
// draw shadow
draw_text_transformed(argument0+argument3,argument1+argument4,argument2,argument3,argument4,argument5);
// reset colour and alpha
draw_set_color(lcol);
draw_set_alpha(lalpha);
// draw the text.. duh
draw_text_transformed(argument0,argument1,argument2,argument3,argument4,argument5);
