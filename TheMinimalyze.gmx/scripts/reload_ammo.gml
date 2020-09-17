///reload_ammo
var increase_ammo;

audio_play_sound(snd_take1, sp, false);

increase_ammo = max_ammo - ammo;

if stock_ammo > increase_ammo
{
    stock_ammo -= increase_ammo;
    ammo += increase_ammo;
}
else
{
    ammo += stock_ammo; 
    stock_ammo = 0;
}

