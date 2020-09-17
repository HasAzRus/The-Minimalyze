///Ak47

    spd = 1;
    if key_alt_fire && !grabbed && ammo > 0
    {
        shooting = true;
        ammo -= 1;
        audio_play_sound(choose(snd_shoot1, snd_shoot2), sp, false);
        muzzle = instance_create(x + lengthdir_x(6, weap_dir), y + lengthdir_y(6, weap_dir), o_muzzle_flash_part);
        muzzle1 = instance_create(x + lengthdir_x(6, weap_dir), y + lengthdir_y(6, weap_dir), o_muzzle_part);        
        bullet = instance_create(x + lengthdir_x(6, weap_dir), y + lengthdir_y(6, weap_dir), o_bullet);
        stock = instance_create(x, y, o_bullet_used);
        with(stock)
        {
            dir *= image_xscale;
        }
        with(bullet)
        {
            damage = 3;
            motion_add(other.weap_dir - choose(-1, 1), 4);
            image_angle = direction;        
        }
        
        //bullet_used = instance_create(x, y, o_bullet_used);
    }
    else if key_alt_fire && key_alt_fire2 && !grabbed && ammo > 0
    {
        shooting = true;
        ammo -= 1;
        audio_play_sound(choose(snd_shoot1, snd_shoot2), sp, false);
        muzzle = instance_create(x + lengthdir_x(6, weap_dir), y + lengthdir_y(6, weap_dir), o_muzzle_flash_part);
        muzzle1 = instance_create(x + lengthdir_x(6, weap_dir), y + lengthdir_y(6, weap_dir), o_muzzle_part);        
        bullet = instance_create(x + lengthdir_x(6, weap_dir), y + lengthdir_y(6, weap_dir), o_bullet);
        stock = instance_create(x, y, o_bullet_used);
        with(stock)
        {
            if(image_xscale == 1)
                dir = 180;
            else if(image_xscale == -1)
                dir = 0;
        }
        with(bullet)
        {
            damage = 4;
            motion_add(other.weap_dir, 4 * other.alt_fire_spd);
            image_angle = direction;        
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
            used_weap = instance_create(x, y, o_ak47_used);
            with(used_weap)
            {
                throwed = true;
                motion_add(other.weap_dir, 2);
            }
        }
        else if ammo > 0
        {
            set_weapon = 0;
            weap = instance_create(x - lengthdir_x(weap_drop_distance, weap_dir), y - lengthdir_y(weap_drop_distance, weap_dir), o_ak47);
            with(weap)
            {
                ammo = other.ammo;
                stock_ammo += other.stock_ammo;
            }
        }
    }
