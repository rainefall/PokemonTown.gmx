if active {
    if target == noone || !instance_exists(target) {
        target = instance_nearest(x,y,obj_poke)
        if !collision_circle(x,y,96,target,false,true)
            target = noone;
        if !collision_circle(x,y,8,mydojo,false,true) {
            if cooldown > 0 {
                cooldown -= 1;
            } else {
                target = mydojo
                cooldown = 120;
            }
        }
    } else {
        // if there's a nearer target somehow
        if target != instance_nearest(x,y,obj_poke) && instance_nearest(x,y,obj_poke) != noone
            target = instance_nearest(x,y,obj_poke);
        // if we're not near our target
        if !collision_circle(x,y,8,target,false,true){
            // move towards target
            mp_potential_step_object(target.x,target.y,1,obj_worldObject);
            //x += lengthdir_x(1,point_direction(x,y,target.x,target.y));
            //y += lengthdir_y(1,point_direction(x,y,target.x,target.y));
        } else {
            if target == mydojo {
                target = noone;
            } else {
                // "battle"
                if irandom(10) != 6 {
                    target.hp -= 2;
                }
            }
        }
    }
} else {
    if !collision_circle(x,y,16,mydojo,false,true) {
        mp_potential_step_object(mydojo.x,mydojo.y,1,obj_worldObject);
        //x += lengthdir_x(1,point_direction(x,y,mydojo.x,mydojo.y));
        //y += lengthdir_y(1,point_direction(x,y,mydojo.x,mydojo.y));
    } else {
        if hp < maxhp {
            hp += 2;
        } else {
            hp = maxhp;
            active = true;
        }
    }
}
