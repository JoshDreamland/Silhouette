int xat = int(argument0/8);
xat = clamp(xat, 0, MAX_DEPTH - 1);
double res = lerp(terrain_depth[xat], terrain_depth[xat + 1], (argument0 - xat*8) / 8);
return res;
