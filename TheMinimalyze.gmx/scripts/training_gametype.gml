///training_gametype()
game = instance_nearest(x, y, o_game);
player = instance_nearest(x, y, o_player);

if(player != noone)
{
    player.can_view = false;
    player.can_move = false;
    player.can_attack = false;
}
if(game != noone)
{
    game.show_hp = false;
}
global.game_type = 2;
