///fly_text(text, color, x, y, speed, timer);
text = argument0;
color = argument1;
_x = argument2;
_y = argument3;
spd = argument4;
timer = argument5;
font = ru;

ini_open('init.ini')
localized_text = ini_read_string(global.language, text, text);
ini_close();

text_out_inst = instance_create(_x, _y, o_fly_text);

with(text_out_inst)
{
    text_out = other.localized_text;
    text_color = other.color;
    fly_speed = other.spd/10;
    timer = other.timer; 
    font = other.font;
}
