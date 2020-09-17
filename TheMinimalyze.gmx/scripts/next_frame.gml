///next_frame(frame_label);
frame_label = argument0;

camera = instance_nearest(x, y, o_main_menu_camera);

if camera != noone
{
    switch(frame_label)
    {
        case "begin": camera.x = view_wview/2; break;
        case "story": camera.x = 160 + view_wview/2; break;
    }
}
