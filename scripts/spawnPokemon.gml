/// spawnPokemon(name,x,y)
var pkdat = gameManager.pokedata[? argument0];
var inst = instance_create(argument1,argument2,obj_poke);
inst.data = pkdat;
with inst {
    maxhp = data[? "hp"];
    hp = maxhp;
    ai = asset_get_index("ai_" + data[? "ai"]);
}
