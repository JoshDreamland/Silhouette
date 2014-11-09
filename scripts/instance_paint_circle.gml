double cx = argument0, cy = argument1, cr = argument2, sep = argument3;
int obj = argument4;

instance_create(cx, cy, obj);

int ri = 4, rc = ri;
for (double r = sep; r <= cr; r += sep) {
  double ai = 2 * pi / rc;
  for (int i = 0; i < rc; ++i) {
    double a = ai * i;
    instance_create(cx + r * sin(a), cy + r * cos(a), obj);
  }
  rc += ri;
}