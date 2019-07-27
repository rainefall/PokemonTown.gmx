if hp > 0 {
    if ds_exists(trainers,ds_type_list) {
        if employmentSlots > ds_list_size(trainers) {
            if townData.employed < townData.population {
                townData.employed += 1
                townData.trainers += 1
                var inst;
                inst = instance_create(x,y+8,obj_trainer);
                with inst {
                    mydojo = other;
                    ds_list_add(other.trainers,self);
                }
                employmentSlots -= 1;
            }
        }
    }
}
