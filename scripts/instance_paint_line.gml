double x1 = argument0, y1 = argument1, x2 = argument2, y2 = argument3;
double granularity = argument4;
int obj = argument5;

double inc = max(.05, granularity / point_distance(x1,y1,x2,y2));
for (double i = 0; i < 1; i += inc) {
  instance_create(lerp(x1, x2, i), lerp(y1, y2, i), obj);
}
