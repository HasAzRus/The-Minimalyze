///sibt(target)
//_self = argument0;
target = argument0;

self_x = x;
self_y = y;

target_x = target.x;
target_y = target.y;

_sibt = collision_line(self_x, self_y, target_x, target_y, o_solid, 0, 0);

if _sibt return true;
else return false;

