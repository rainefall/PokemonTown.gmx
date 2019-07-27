var collision = collision_circle(x,y,sprite_width/2,obj_worldObject,false,true)
if collision != noone {
    // move away from object
    x += lengthdir_x(1,-point_direction(x,y,collision.x,collision.y));
    y += lengthdir_y(1,-point_direction(x,y,collision.x,collision.y));
}
    
if target != obj_trainer {
    if hp > 0 {
        target = collision_circle(x,y,8,obj_trainer,false,true);
        if target == noone
            target = instance_nearest(x,y,obj_building)
        // move towards target
        if instance_exists(target) {
            mp_potential_step_object(target.x,target.y,0.5,obj_worldObject);
            //x += lengthdir_x(0.5,point_direction(x,y,target.x,target.y));
            //y += lengthdir_y(0.5,point_direction(x,y,target.x,target.y));
        }
        // if colliding with a target take HP away from it
        var inst; 
        inst = collision_rectangle(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, target, false, true); 
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
