///throw_weapon_manager   
if throw_inst_count <= 0
{
    if dynamites > 0
    {
        throw_weapon = 1;
    }
    else if grenades > 0
    {
        throw_weapon = 2;
    }
    else if molotova > 0
    {
        throw_weapon = 3;
    }
    else if mines > 0
    {
        throw_weapon = 4;
    }
    else throw_weapon = 0;
}

if throw_weapon != 0
{
    if key_dynamite && dynamites > 0 throw_weapon = 1; // переключение на диманита
    
    if key_grenade && grenades > 0 throw_weapon = 2; // Переключение на гранату
    
    if key_molotova && molotova > 0 throw_weapon = 3; //Переключение на койтель Молотова
    
    if key_laser_mine && mines > 0 throw_weapon = 4; //Переключение на мину
}

//Throw Grenades and more

//dynamite
if throw_weapon == 1
{
    throw_inst_count = dynamites;
    if key_throw && dynamites > 0
    {
        dynamites -= 1;
        dynamite = instance_create(x + lengthdir_x(6, weap_dir), y + lengthdir_y(6, weap_dir), o_dynamite);
        with(dynamite)
        {
            motion_add(other.weap_dir, 2);
        }    
    }
}
//grenade
if throw_weapon == 2
{
    throw_inst_count = grenades;
    if key_throw && grenades > 0
    {
        grenades -= 1;
        grenade = instance_create(x + lengthdir_x(6, weap_dir), y + lengthdir_y(6, weap_dir), o_grenade);
        with(grenade)
        {
            motion_add(other.weap_dir, 2);
        }    
    }
}

//Molotova
if throw_weapon == 3
{
    throw_inst_count = molotova;
    if key_throw && molotova > 0
    {
        molotova -= 1;
        molotov = instance_create(x + lengthdir_x(6, weap_dir), y + lengthdir_y(6, weap_dir), o_molotova);
        with(molotov)
        {
            motion_add(other.weap_dir, 2);
        }    
    }
}
//Mine
if throw_weapon == 4
{
    throw_inst_count = mines;
    if key_throw && mines > 0
    {
        mines -= 1;
        mine = instance_create(x, y, o_mine);
        with(mine)
        {
            image_angle = other.weap_dir;
        }    
    }
}
