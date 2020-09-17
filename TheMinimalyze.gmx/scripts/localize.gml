///localize(local_string)
local_string = argument0;
//ini_file_name = argument1;

result = "";

ini_open('init.ini');
result = ini_read_string(global.language, local_string, local_string);
ini_close();

return result;
