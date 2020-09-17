///new_game(level);
level = argument0;

global.restarted_level = level;
global.scores = 0;

ini_open('restarted_level.ini')
ini_write_real('level', 'last_level', level)
ini_close();

global.attempts += 1;

ini_open("attempts.ini")
ini_write_real("attempt" + string(global.attempts), "index", global.attempts);
ini_write_string("attempt" + string(global.attempts), "level", string(level));
ini_close();

room_goto(level);
