double minx, maxx;
if (argument0 < argument1) {
  minx = argument0;
  maxx = argument1;
} else {
  minx = argument1;
  maxx = argument0;
}
int xat = int(argument0/8);
int xafter = argument1 < 0? int((argument1 + 7.95)/8) : int(argument1/8);
double ycollide = argument3;

xat = clamp(xat, 0, MAX_DEPTH - 1);
xafter = clamp(xafter, 0, MAX_DEPTH - 1);

double res = lerp(terrain_depth[xat], terrain_depth[xat + 1], (argument0 - xat*8) / 8);
return res;
