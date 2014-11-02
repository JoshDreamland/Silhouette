global int MAX_DEPTH;
global var terrain_depth;

with (obj_groundnode) {
  terrain_depth[int(self.x / 8)] = self.y;
}

for (int i = 0; i < MAX_DEPTH; ++i) {
  if (terrain_depth[i] != 0) {
    terrain_depth[0] = terrain_depth[i];
    break;
  }
}

for (int i = 0; i < MAX_DEPTH; ++i) {
  if (terrain_depth[i] >= room_height) {
    terrain_depth[i] = 10000;
  }
}

for (int i = 0; i < MAX_DEPTH; ++i) {
  int init_depth = terrain_depth[i];
  int final_depth = init_depth;
  int first_cell = i;
  int last_cell = i;
  for (int j = i + 1; j < MAX_DEPTH; ++j) {
    if (terrain_depth[j] != 0) {
      last_cell = j;
      final_depth = terrain_depth[last_cell];
      break;
    }
  }
  if (last_cell <= i) {
    continue;
  }
  double factor = final_depth - init_depth;
  factor /= last_cell - i;
  while (++i < last_cell) {
    terrain_depth[i] = init_depth + factor * (i - first_cell);
  }
  i = last_cell - 1;
}
