///blur_screen(density);
density = argument0;

blur_surf = instance_create(view_xview, view_yview, o_blur_surf);

with(blur_surf)
{
    density = other.density;
}
