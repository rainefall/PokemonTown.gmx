/// spawnPokemon(name,x,y)
var pkdat = gameManager.pokedata[? argument0];
var inst = instance_create(argument1,argument2,obj_poke);
inst.data = pkdat;
with inst {
    maxhp = data[? "hp"];
    hp = maxhp;
    ai = asset_get_index("ai_" + data[? "ai"]);
    if sprite_exists(asset_get_index("spr_"+argument0)) {
        sprite_index = asset_get_index("spr_"+argument0);
        image_xscale = 0.25;
        image_yscale = 0.25;
    }
}
