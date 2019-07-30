/// createWorld(filename)

saveFile = json_decode('
{
    "state":0,
    "gamemode": 0,
    "playtime": 0,
    "employed": 0,
    "trainers": 0,
    "level": 1,
    "experience": 0,
    "money": 1000,
    "savename": "",
    "worldtype":"forest",
    "objects": [
        {
            "id": 0,
            "type": "townHall",
            "x": 512,
            "y": 512,
            "hp": 1000,
            "angle": 0
        },
        {
            "id": 2,
            "type": "houseSmall",
            "x": 512,
            "y": 480,
            "hp": 100,
            "angle": 0
        }
    ],
    "spawners":[
        {
            "x":128,
            "y":256,
            "pokemon":[
                "graveler",
                "geodude"
            ]
        }
    ]
}')

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
saveFile[? "savename"] = argument0;
return saveFile;
