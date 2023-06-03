void CheckDead() {
  for (int i = 0; i < enemy_hp.length; i++) {
    if (enemy_hp[i] > 0) {
      if (isOverlap(tx5-32, ty5, 64, 103, enemy_x[i], enemy_y[i], 30, 30) == true) {
        destruction1.rewind();
        destruction1.play();
        state = ENDING;
      }
    }
  }
  if (Boss_hp[Q] > 0) {
    if (isOverlap(tx5-32, ty5, 64, 103, BX, BY, BW, BH)) {
      destruction1.rewind();
      destruction1.play();
      state = ENDING;
    }
  }
}
