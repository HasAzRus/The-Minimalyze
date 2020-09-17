///ammo_box_drop();
randomize();
index = irandom(2);

weapons_inst[0] = o_pistol;
weapons_inst[1] = o_gun;
weapons_inst[2] = o_uzi;
weapons_inst[3] = o_ak47;
weapons_inst[4] = o_chainsaw;
weapons_inst[5] = o_machinegun;
weapons_inst[6] = o_mp5;
//weapons_inst[7] = o_flamethrower;

if(index == 1)
{
    inst = instance_create(x, y, o_armor_pickup);
}
else
{
    inst = instance_create(x, y, weapons_inst[irandom(6)]);
}

