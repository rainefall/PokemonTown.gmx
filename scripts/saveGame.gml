gameManager.saveFile[? "money"] = townData.money;
gameManager.saveFile[? "playtime"] += get_timer() - gameManager.timer_offset;
ds_map_secure_save(gameManager.saveFile, gameManager.saveFile[? "savename"] + ".pktsav");
animatePause = 0;
