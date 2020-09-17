///save_data();
ini_open('data.ini');

ini_write_real('inventory', 'life', life);
ini_write_real('inventory', 'ammo', ammo);
ini_write_real('inventory', 'stock_ammo', stock_ammo);
ini_write_real('inventory', 'holders', holders);

ini_write_real('inventory', 'set_weapon', set_weapon);
ini_write_real('inventory', 'grenade', grenade);
ini_write_real('inventory', 'dynamites', dynamites);
ini_write_real('inventory', 'molotovo', molotova);

ini_write_real('inventory', 'money', global.money);

ini_close();
