void intEnemy() {
  for (int i=0; i<25; i++) {
    enemy_x[i]=int(random(width));
    enemy_y[i]=-50;
    enemy_speed[i]=int(random(2, 11));
    enemy_hp[i]=1;
  }
}

void Enemy() {
  fill(128, 128, 64);
  for (int i=0; i<25; i++) {
    rect(enemy_x[i], enemy_y[i], 25, 25); 
    enemy_y[i]+=enemy_speed[i];
    if (enemy_y[i]-25>height) {
      enemy_x[i]=int(random(width));
      enemy_y[i]=-50;
      enemy_speed[i]=int(random(2, 11));
      enemy_hp[i]=1;
    }
  }
}
