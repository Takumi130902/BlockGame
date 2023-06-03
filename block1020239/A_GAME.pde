void Game() {
  background(0);
  fill(255);
  ellipse(30, 100, 3, 3);
  ellipse(400, 50, 5, 5);
  ellipse(245, 600, 4, 4);
  ellipse(120, 400, 3, 3);
  ellipse(325, 305, 5, 5);
  ellipse(800, 500, 4, 4);
  ellipse(900, 300, 3, 3);
  ellipse(560, 680, 5, 5);
  ellipse(1000, 70, 5, 5);
  ellipse(1100, 730, 4, 4);
  ellipse(1210, 280, 5, 5);
  ellipse(1200, 500, 6, 6);
  X_wing();
  Boss();
  Beam();
  Enemy();
  BeamHit();
  score();
  BossHit();
  CheckDead();
  storeHighScore(h_score);
}
