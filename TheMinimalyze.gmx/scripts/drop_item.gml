///drop_item
randomize();
index = irandom(10);

weapons_inst[0] = o_pistol;
weapons_inst[1] = o_gun;
weapons_inst[2] = o_uzi;
weapons_inst[3] = o_ak47;
weapons_inst[4] = o_chainsaw;
weapons_inst[5] = o_machinegun;

throw_weapon_inst[0] = o_grenade_pickup;
throw_weapon_inst[1] = o_molotova_pickup;
throw_weapon_inst[2] = o_dynamite_pickup;
throw_weapon_inst[3] = o_mine_pickup;

//if(index == 1)
//{
//    a = irandom_range(0, 5);
//    instance_create(x, y, weapons_inst[a]);
//}

if(index == 2)
{
    instance_create(x, y, o_health_pickup);
}
else if(index == 3)
{
    a = irandom_range(0, 3);
    instance_create(x, y, throw_weapon_inst[a]);
}
else
{
    instance_create(x, y, o_ammo_pickup);
}

