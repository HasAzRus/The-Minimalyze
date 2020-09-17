///pack_pickup(index)
index = argument0;
//player = argument1;

if(index == 0)
{
    if set_weapon != 0
    {
        if(set_weapon != 1)
        {
            prev = instance_create(x + lengthdir_x(weap_drop_distance, -weap_dir), y + lengthdir_y(weap_drop_distance, -weap_dir), weapons_inst[set_weapon]);
            with(prev)
            {
                ammo = other.ammo;
                stock_ammo += other.stock_ammo;
            }
            
            set_weapon = 1;
                    
            ammo = 16;
            stock_ammo = 0;
        }
        else
        {
            ammo = 16;
            stock_ammo = 0;
        }
    }
    else
    {
        set_weapon = 1;
        
        ammo = 16;
        stock_ammo = 0;
    }
}
else if(index == 1)
{
    if set_weapon != 0
    {
        if(set_weapon != 2)
        {
            prev = instance_create(x + lengthdir_x(weap_drop_distance, -weap_dir), y + lengthdir_y(weap_drop_distance, -weap_dir), weapons_inst[set_weapon]);
            with(prev)
            {
                ammo = other.ammo;
                stock_ammo += other.stock_ammo;
            }
            
            set_weapon = 2;
                    
            ammo = 8;
            stock_ammo = 0;
        }
        else
        {
            ammo = 8;
            stock_ammo = 0;            
        }
    }
    else
    {
        set_weapon = 2;
            
        ammo = 8;
        stock_ammo = 0;
    }   
}
else if(index == 2)
{
    if set_weapon != 0
    {
        if(set_weapon != 3)
        {
            prev = instance_create(x + lengthdir_x(weap_drop_distance, -weap_dir), y + lengthdir_y(weap_drop_distance, -weap_dir), weapons_inst[set_weapon]);
            with(prev)
            {
                ammo = other.ammo;
                stock_ammo += other.stock_ammo;
            }
            
            set_weapon = 3;
                    
            ammo = 36;
            stock_ammo = 0;
        }
        else
        {
            ammo = 36;
            stock_ammo = 0;            
        }
    }
    else
    {
        set_weapon = 3;
        
        ammo = 36;
        stock_ammo = 0;
    }
}
else if(index == 3)
{
    if set_weapon != 0
    {
        if(set_weapon != 4)
        {
            prev = instance_create(x + lengthdir_x(weap_drop_distance, -weap_dir), y + lengthdir_y(weap_drop_distance, -weap_dir), weapons_inst[set_weapon]);
            with(prev)
            {
                ammo = other.ammo;
                stock_ammo += other.stock_ammo;
            }
            
            set_weapon = 4;
                    
            ammo = 48;
            stock_ammo = 0; 
        }
        else
        {
            ammo = 48;
            stock_ammo = 0;             
        }
    }
    else
    {
        set_weapon = 4;
        
        ammo = 48;
        stock_ammo = 0;
    } 
}
else if(index == 4)
{
    if set_weapon != 0
    {
        if(set_weapon != 6)
        {
            prev = instance_create(x + lengthdir_x(weap_drop_distance, -weap_dir), y + lengthdir_y(weap_drop_distance, -weap_dir), weapons_inst[set_weapon]);
            with(prev)
            {
                ammo = other.ammo;
                stock_ammo += other.stock_ammo;
            }
            
            set_weapon = 6;
                    
            ammo = 18;
            stock_ammo = 128;
        }
        else
        {
            ammo = 18;
            stock_ammo = 128;            
        }
    }
    else
    {
        set_weapon = 6;
        
        ammo = 18;
        stock_ammo = 128;
    } 
}
else if(index == 5)
{
    if set_weapon != 0
    {
        if(set_weapon != 5)
        {
            prev = instance_create(x + lengthdir_x(weap_drop_distance, -weap_dir), y + lengthdir_y(weap_drop_distance, -weap_dir), weapons_inst[set_weapon]);
            with(prev)
            {
                ammo = other.ammo;
                stock_ammo += other.stock_ammo;
            }
            
            set_weapon = 5;
                    
            ammo = 50;
            stock_ammo = 0;
        }
        else
        {
            ammo = 50;
            stock_ammo = 0;            
        }
    }
    else
    {
        set_weapon = 5;
        
        ammo = 50;
        stock_ammo = 0;
    } 
}
else if(index == 6)
{
    a = irandom_range(1, 3)
    if(armor == 0)
    {
        armor = a;
        if(a == 1) fly_text("helmet", c_white, x, y, 1, room_speed);
        else if(a == 2) fly_text("armor", c_white, x, y, 1, room_speed);
        else if(a == 3) fly_text("helmet&armor", c_white, x, y, 1, room_speed);
    }
    else if(armor == 1)
    {
        if(a == 2)
        {
            armor = 3;
            armor_health = 100;
            
            fly_text("armor", c_white, x, y, 1, room_speed);
        }
        else if(a == 1)
        {
            armor_health = 100;
        }
    }
    else if(armor == 2)
    {
        if(a == 1)
        {
            armor = 3;
            armor_health = 100;
            
            fly_text("helmet", c_white, x, y, 1, room_speed);
        }
        else if(a == 2)
        {
            armor_health = 100;
        }
    }
}
else if(index == 7)
{
    life = 100;   
}
else if(index == 8)
{
    if set_weapon != 0
    {
        if(set_weapon != 7)
        {
            prev = instance_create(x + lengthdir_x(weap_drop_distance, -weap_dir), y + lengthdir_y(weap_drop_distance, -weap_dir), weapons_inst[set_weapon]);
            with(prev)
            {
                ammo = other.ammo;
                stock_ammo += other.stock_ammo;
            }
            
            set_weapon = 7;
                    
            ammo = 40;
            stock_ammo = 0;
        }
        else
        {
            ammo = 40;
            stock_ammo = 0;            
        }
    }
    else
    {
        set_weapon = 7;
        
        ammo = 40;
        stock_ammo = 0;
    }
}
else if(index == 9)
{
    if set_weapon != 0
    {
        if(set_weapon != 8)
        {
            prev = instance_create(x + lengthdir_x(weap_drop_distance, -weap_dir), y + lengthdir_y(weap_drop_distance, -weap_dir), weapons_inst[set_weapon]);
            with(prev)
            {
                ammo = other.ammo;
                stock_ammo += other.stock_ammo;
            }
            
            set_weapon = 8;
                    
            ammo = 100;
            stock_ammo = 0;
        }
        else
        {
            ammo = 100;
            stock_ammo = 0;        
        }
    }
    else
    {
        set_weapon = 8;
        
        ammo = 100;
        stock_ammo = 0;
    } 
}
