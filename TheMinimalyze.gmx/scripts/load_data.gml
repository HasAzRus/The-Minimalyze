///load_data();
ini_open('data.ini');

life = ini_read_real('inventory', 'life', 36);
ammo = ini_read_real('inventory', 'ammo', 16);
stock_ammo = ini_read_real('inventory', 'stock_ammo', 0);
holders = ini_read_real('inventory', 'holders', 0);

set_weapon = ini_read_real('inventory', 'set_weapon', 0);
grenade = ini_read_real('inventory', 'grenade', 0);
dynamites = ini_read_real('inventory', 'dynamites', 0);
molotova = ini_read_real('inventory', 'molotovo', 0);

global.money = ini_read_real('inventory', 'money', 100);

ini_close();
