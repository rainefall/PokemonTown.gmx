///initSettings()
settings = ds_map_create()
settings[? "shadows"] = true;
settings[? "bgmvol"] = 0;
settings[? "sfxvol"] = 100;
ds_map_secure_save(settings, working_directory+"settings.dat");
