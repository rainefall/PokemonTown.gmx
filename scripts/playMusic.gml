/// playMusic(index)

stopMusic();
if audio_exists(argument0){
    gameManager.currentSong = audio_play_sound(argument0, 0, true);
} else {
    show_error("Error: Audio file " + argument0 + " does not exist.", false);
}
