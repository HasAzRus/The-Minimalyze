///zombie_coll
if x > other.x && place_free(x + 1, y) x += 1;
else if x < other.x && place_free(x - 1, y) x -= 1;

if y > other.y && place_free(x, y + 1) y += 1;
else if y < other.y && place_free(x, y - 1) y -= 1;
