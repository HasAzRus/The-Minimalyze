///zombie_miner_attack
if !dont_punch && !attack
{               
    dont_punch = true;
    attack = true;
    alarm[0] = 7;
    knife = instance_create(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), o_zombie_knife);
    with(knife)
    {
                                //image_xscale = other.image_xscale;
        depth = other.depth;
        image_yscale = image_yscale * other.image_xscale;
        image_angle = other.dir;
    }
}
