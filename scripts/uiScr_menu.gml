// ARE YOU SURE ABOUT THAT
if iamsureaboutthat {
    gameManager.selection = noone;
    gameManager.buildingMenuActive = false;
    room_goto(rm_titleScreen);
} else {
    animatePause = 0
    areyousureaboutthat = true;
}
