///game_over_timer(last_level)
//timer = argument0;

game_info = instance_nearest(x, y, o_game);

if game_info != noone
{
    with(game_info)
    {
        game_over = true;
        //application_surface_draw_enable(true);
//        alarm[0] = other.timer;
    }
}
