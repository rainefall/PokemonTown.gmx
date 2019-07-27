/// spawnPokemon(name,x,y)
var pkdat = gameManager.pokedata[? argument0];
var inst = instance_create(argument1,argument2,obj_poke);
with inst {
    maxhp = pkdat[? "hp"];
    hp = maxhp;
    ai = asset_get_index("ai_" + pkdat[? "ai"]);
}
