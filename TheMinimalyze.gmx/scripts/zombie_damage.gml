///zombie_damage(damage)
damage = argument0;

life -= damage;

fly_text("-" + string(damage), c_red, x + random_range(-2, 2), y + random_range(-2, 2), 1, room_speed);


