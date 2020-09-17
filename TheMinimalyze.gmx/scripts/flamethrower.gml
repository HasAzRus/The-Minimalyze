///Flamethrower()

    spd = 0.8;
    if key_alt_fire && !grabbed && ammo> 0
    {
        shooting = true;
        ammo -= 0.2;
        muzzle = instance_create(x + lengthdir_x(6, weap_dir), y + lengthdir_y(6, weap_dir), o_muzzle_flash_part);
        muzzle1 = instance_create(x + lengthdir_x(6, weap_dir), y + lengthdir_y(6, weap_dir), o_muzzle_part);     
        flame = instance_create(x + lengthdir_x(8, weap_dir), y + lengthdir_y(8, weap_dir), o_flamethrower_fire);       
        with(flame)
        {
            image_xscale = other.image_xscale;
            image_angle = other.weap_dir;
            motion_add(other.weap_dir + irandom_range(-4, 4), 3);
        }
        //bullet_used = instance_create(x, y, o_bullet_used);
    }
    else
    {
        shooting = false;
    }
    
    if key_weap_drop
    {
        audio_play_sound(snd_take1, sp, false);
        if ammo <= 0 && stock_ammo <= 0
        {
            set_weapon = 0;
            used_weap = instance_create(x, y, o_flamethrower_used);
            with(used_weap)
            {
                throwed = true;
                motion_add(other.weap_dir, 2);
            }
        }
        else if ammo > 0
        {
            set_weapon = 0;
            weap = instance_create(x - lengthdir_x(weap_drop_distance, weap_dir), y - lengthdir_y(weap_drop_distance, weap_dir), o_flamethrower);
            with(weap)
            {
                ammo = other.ammo;
                stock_ammo += other.stock_ammo;
            }
        }
    }
