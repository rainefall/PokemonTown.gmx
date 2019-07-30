/// playBGM(index,[loop])

if (argument_count > 1) {
    loop = argument[1];
} else {
    loop = true; // loop by default
}

stopBGM();
if audio_exists(argument[0]){
    gameManager.currentSong = audio_play_sound(argument[0], 0, loop);
    audio_sound_gain(gameManager.currentSong, gameManager.settings[? "bgmvol"]/100, 0);
} else {
    show_error("Error: Audio file " + argument[0] + " does not exist.", false);
}
