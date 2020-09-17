///pack(state, obj)
state = argument0;
obj = argument1;

randomize();

switch(state)
{
    case 0: with(obj)
            {
                //close = true;
                opened = false;
                freeze = true;
                alarm[0] = 24 * time_amount;
            }
            break;
    case 1: with(obj)
            {
                open = true;
                opened = true;
                index = rndm(amount);
                
                if(global.scores - amount > 0) global.scores -= amount;
                else if(global.scores - amount <= 0) global.scores = 0;
                
                amount += 50;
                time_amount += 2;
                
                alarm[1] = room_speed * 5;
                break;
            }
}
