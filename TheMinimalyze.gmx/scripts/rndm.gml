///rndm()
amount = argument0;
randomize();
a = 0;

if(amount > 0 && amount < 300)
{
    a = choose(0, 2, 7, 8);
}
else if(amount > 300 && amount < 700)
{
    a = choose(0, 1, 2, 6, 7, 8);
}
else if(amount > 700 && amount < 1300)
{
    a = choose(1, 2, 3, 6, 7, 8);
}
else if(amount > 1300) a = choose(1, 3, 4, 5, 6, 7);

return a;

