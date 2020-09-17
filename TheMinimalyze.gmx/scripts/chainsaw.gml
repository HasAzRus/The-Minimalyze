///Chainsaw()

    spd = 0.8;
    if key_alt_fire && !grabbed && ammo> 0
    {
        audio_play_sound(choose(snd_chainsaw1, snd_chainsaw2, snd_chainsaw3), sp, false);
        shooting = true;
        ammo -= 0.2;
        saw = instance_create(x + lengthdir_x(8, weap_dir), y + lengthdir_y(8, weap_dir), o_chainsaw_damage);       
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
            used_weap = instance_create(x, y, o_chainsaw_used);
            with(used_weap)
            {
                throwed = true;
                motion_add(other.weap_dir, 2);
            }
        }
        else if ammo > 0
        {
            set_weapon = 0;
            weap = instance_create(x - lengthdir_x(weap_drop_distance, weap_dir), y - lengthdir_y(weap_drop_distance, weap_dir), o_chainsaw);
            with(weap)
            {
                ammo = other.ammo;
                stock_ammo += other.stock_ammo;
            }
        }
    }
