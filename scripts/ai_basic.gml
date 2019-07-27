var collision = collision_circle(x,y,sprite_width/2,obj_worldObject,false,true)
if collision != noone {
    // move away from object
    x += lengthdir_x(1,-point_direction(x,y,collision.x,collision.y));
    y += lengthdir_y(1,-point_direction(x,y,collision.x,collision.y));
}
    
if target == noone {
    if hp > 0 {
        // if an enemy pokemon is present
        target = collision_circle(x,y,8,obj_trainer,false,true);
        // move towards town hall
        if instance_exists(obj_townHall) {
            x += lengthdir_x(0.5,point_direction(x,y,obj_townHall.x,obj_townHall.y));
            y += lengthdir_y(0.5,point_direction(x,y,obj_townHall.x,obj_townHall.y));
        }
        // if colliding with a target take HP away from it
        var inst; 
        inst = collision_rectangle(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, obj_building, false, true); 
        if inst != noone {
            with (inst) hp -= 2; 
        } 
    }
} else {
    // mon is in battle
    if hp > 0 {
        if irandom(10) != 6 {
            target.hp -= 2;
        }
        if target.hp <= 0
            target=noone; 
    }
}
