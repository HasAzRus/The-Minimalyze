///create_blood()
repeat(10)
{
    bld_dir = other.direction;
    bld = instance_create(x, y, o_blood_part2); 
    with(bld)
    {
        motion_add(other.bld_dir, 1);
    } 
}
