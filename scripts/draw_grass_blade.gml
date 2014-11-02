double angle = argument2 + 90;
draw_primitive_begin(pr_trianglestrip);
draw_vertex(argument0 - 2.5, argument1);
draw_vertex(argument0 + 2.5, argument1);
draw_vertex(
    argument0 + lengthdir_x(argument3 / 2, angle + 12),
    argument1 + lengthdir_y(argument3 / 2, angle + 12));
draw_vertex(
    argument0 + lengthdir_x(argument3 / 2, angle - 12),
    argument1 + lengthdir_y(argument3 / 2, angle - 12));
draw_vertex(
    argument0 + lengthdir_x(argument3, angle),
    argument1 + lengthdir_y(argument3, angle));
draw_primitive_end();
