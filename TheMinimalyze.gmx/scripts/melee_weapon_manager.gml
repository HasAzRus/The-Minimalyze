///melee_weapon_manager

//Melee Weapon
//if set_weapon != 0
//{
    if melee_weapon == 1
    {
        if key_fire3 && !dont_punch
        {
            audio_play_sound(snd_knife1, sp, false);
            dont_punch = true;
            alarm[0] = 8;
            knife = instance_create(x + lengthdir_x(4, weap_dir), y + lengthdir_y(4, weap_dir), o_knife);
            with(knife)
            {
                //image_xscale = other.image_xscale;
                depth = other.depth;
                image_yscale = image_yscale * other.image_xscale;
                image_angle = other.weap_dir;
            }
        }

    }
//}
//else
//{        
//    if key_fire && !dont_punch
//        {
//            audio_play_sound(snd_knife1, sp, false);
//            dont_punch = true;
//            alarm[0] = 8;
//            knife = instance_create(x + lengthdir_x(4, weap_dir), y + lengthdir_y(4, weap_dir), o_knife);
//            with(knife)
//            {
//                //image_xscale = other.image_xscale;
//                depth = other.depth;
//                image_yscale = image_yscale * other.image_xscale;
//                image_angle = other.weap_dir;
//            }
//        }
//}

