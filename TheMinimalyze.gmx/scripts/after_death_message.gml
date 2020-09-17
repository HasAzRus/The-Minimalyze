///fly_text(text, color, x, y, speed, timer, font);
text = argument0;
color = argument1;
_x = argument2;
_y = argument3;
font = ru;

text_out_inst = instance_create(_x, _y, o_after_death_message);

ini_open('init.ini')
localized_text = ini_read_string(global.language, text, text);
ini_close();

with(text_out_inst)
{
    text = other.localized_text;
    text_color = other.color;
    font = other.font;
}
