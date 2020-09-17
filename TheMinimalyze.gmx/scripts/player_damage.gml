///player_damage(damage)
damage = argument0;
if(armor > 0)
{
    armor_health -= damage;
}
else 
{
    life -= damage;
}

fly_text("-" + string(damage), c_red, x, y, 1, room_speed);
