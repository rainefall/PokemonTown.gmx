saveFile = ds_map_secure_load(argument0);

if (saveFile[? "worldtype"] == "forest") {
    room_set_background_colour(rm_game, $5CDE52, true);
} else if (saveFile[? "worldtype"] == "winter") {
    room_set_background_colour(rm_game, $FEFEFE, true);
} else if (saveFile[? "worldtype"] == "mountain") {
    room_set_background_colour(rm_game, $6684AD, true);
}

// generate terrain
/* very slow, don't use
terrainmap = surface_create(80,80);
if surface_exists(terrainmap) {
    surface_set_target(terrainmap);
    draw_background(asset_get_index("tmap_"+saveFile[? "worldtype"]),0,0);
    for (var yy = 0; i < 80; yy++) {
        for (var xx = 0; i < 80; xx++) {
            var treepoint = colour_get_green(surface_getpixel(terrainmap,xx,yy));
            if treepoint == 255 {
                room_instance_add(rm_game,xx*16,yy*16,obj_tree);
            }
        }
    }
    surface_reset_target();
}
*/
return saveFile;
