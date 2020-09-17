///check_and_set_path(rnd_x, rnd_y)
rnd_x = argument0;
rnd_y = argument1;

if(!collision_circle(rnd_x, rnd_y, 30, o_zombies, 0, 0))
{
    target_x = rnd_x;
    target_y = rnd_y;
}
else
{
    check_and_set_path(rnd_x, rnd_y);
}

