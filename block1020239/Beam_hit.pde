void BeamHit() {
  floatBeam();
  for (int i=0; i<30; i++) {
    if (mouseButton==LEFT &&frameCount% 4 == 0 &&
      isOverlap(bxr1, bye1, 2, 2, enemy_x[i], enemy_y[i], 30, 30)) {
      enemy_hp[i]=0;
      short_bomb.rewind();
      short_bomb.play();
    }
    if (mouseButton==RIGHT&&frameCount% 4 == 0&&
      isOverlap(bxr2, bye2, 2, 2, enemy_x[i], enemy_y[i], 30, 30)) {
      enemy_hp[i]=0;
      short_bomb.rewind();
      short_bomb.play();
    }

    if (enemy_hp[i]==0) {
      enemy_x[i]=int(random(width));
      enemy_y[i]=-50;
      enemy_speed[i]=int(random(2, 8)); 
      enemy_hp[i]=1;
      score++;
      if (h_score<score) {
        h_score=score;
        storeHighScore(h_score);
      }
    }
  }
}    
