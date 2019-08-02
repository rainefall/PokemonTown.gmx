// set town data
townData.money=gameManager.saveFile[? "money"];
townData.employed=gameManager.saveFile[? "employed"];
townData.trainers=gameManager.saveFile[? "trainers"];
townData.level=gameManager.saveFile[? "level"];
townData.experience=gameManager.saveFile[? "experience"];
townData.money=gameManager.saveFile[? "money"];

gameManager.state = gameManager.saveFile[? "state"];
gameManager.alarm[0] = irandom_range(room_speed*120,room_speed*300);

var objects = gameManager.saveFile[? "objects"];
for (var i = 0; i < ds_list_size(gameManager.saveFile[? "objects"]); i++) {
    var current_o = objects[| i];
    var inst = instance_create(current_o[? "x"], current_o[? "y"], obj_building);
    inst.data = gameManager.buildingdata[? current_o[? "type"]];
    inst.maxhp = inst.data[? "hp"];
    inst.hp = current_o[? "hp"];
    inst.direction = current_o[? "angle"];
    inst.sprite_index = asset_get_index("spr_"+current_o[? "type"]);
    if script_exists(asset_get_index("init_"+current_o[? "type"])) {
        with inst
            script_execute(asset_get_index("init_"+data[? "id"]));
    }
    if current_o[? "type"] == "townHall" {
        obj_camera.x = current_o[? "x"];
        obj_camera.y = current_o[? "y"];
        obj_camera.target_x = current_o[? "x"];
        obj_camera.target_y = current_o[? "y"];
    }
}

var spawners = gameManager.saveFile[? "spawners"];
for (var i = 0; i < ds_list_size(gameManager.saveFile[? "spawners"]); i++) {
    var current_s = spawners[| i];
    var sp = instance_create(current_s[? "x"], current_s[? "y"], obj_spawner);
    sp.pokemon = current_s[? "pokemon"];
    show_debug_message(sp.pokemon);
}
