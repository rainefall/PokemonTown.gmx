// if we're not near our target
if active {
    if instance_exists(target) {
        if !collision_circle(x,y,8,target,false,true){
            // move towards target
            mp_potential_step_object(target.x,target.y,1,obj_worldObject);
            //x += lengthdir_x(1,point_direction(x,y,target.x,target.y));
            //y += lengthdir_y(1,point_direction(x,y,target.x,target.y));
        } else {
            if x != target.x && y != target.y {
                // move towards target
                mp_potential_step_object(target.x,target.y,1,obj_worldObject);
            } else {
                if target == mydojo {
                    target = noone;
                } else if target.object_index == obj_target {
                    instance_destroy(target);
                } else {
                    // "battle"
                    if irandom(10) != 6 {
                        target.hp -= 2;
                    }
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

