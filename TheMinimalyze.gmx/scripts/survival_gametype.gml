game = instance_nearest(x, y, o_game);
global.game_type = 1;

if(game != noone)
{
    game.alarm[1] = room_speed * 4;
    game.alarm[2] = room_speed * 32;
}
