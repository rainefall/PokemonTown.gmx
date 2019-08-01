if gameManager.state = gamestate_build {
    if moneycounter >= room_speed/2 {
        townData.money++;
        moneycounter=0;
    } else {
        moneycounter++;
    }
}
