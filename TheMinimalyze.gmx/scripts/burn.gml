///burn(time)

time = argument0;

if time > 0
{
    time -= 10;
    
    fire = instance_create(x + irandom_range(-4, 4), y + irandom_range(-4, 4), o_fire_part);
    life -= 0.2;
    
    if key_extinguish
    {
        time -= 20;
    } 
}
