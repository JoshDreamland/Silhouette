const double hr = 12;
double cx = argument0 + lengthdir_x(hr, argument2 + 90);
double cy = argument1 + lengthdir_y(hr, argument2 + 90);

double dang = pi / 6;
draw_primitive_begin(pr_trianglefan);
for (; dang >= -pi; dang -= pi/12) {
  draw_vertex(cx + hr * cos(dang), cy - hr * sin(dang));
}
int inc = 0;
for (dang = pi; dang >= pi/6; dang -= pi/24) {
  double har = hr + ((inc++) % 5);
  draw_vertex(cx + har * cos(dang), cy - har * sin(dang));
}
draw_primitive_end();
