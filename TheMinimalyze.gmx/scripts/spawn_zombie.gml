///spawn_zombie(x, y)
_x = argument0;
_y = argument1;

zombie_inst[0] = o_zombie;
zombie_inst[1] = o_zombie_vomit;
zombie_inst[2] = o_zombie_fast;
zombie_inst[3] = o_zombie_bomb;
zombie_inst[4] = o_zombie_punchman;
zombie_inst[5] = o_zombie_broken;

index = 0;

scores = global.scores;

if(scores >= 0 && scores < 3000)
{
    index = 0;
    instance_create(_x, _y, zombie_inst[index]);
}
else if(scores >= 3000 && scores <= 5000)
{
    index = irandom_range(0.0, 1.0);
    instance_create(_x, _y, zombie_inst[round(index)]);
}
else if(scores > 5000 && scores <= 10000)
{
    index = random_range(0.0, 3.0);
    instance_create(_x, _y, zombie_inst[round(index)])
}
else if(scores > 10000)
{
    index = random_range(0.0, 5.0);
    instance_create(_x, _y, zombie_inst[round(index)])
}
