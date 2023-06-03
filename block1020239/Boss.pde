void floatBoss() {
  BX=514;
  BY=9;
  BW=401;
  BH=400;
  Dx=3;
}

void Boss() {
  if (Boss_hp[Q]>0) {
    BX = BX + Dx;
    fill(0);
    stroke(255);
    rect(BX, BY, BW, BH);
    noStroke();
    image(Boss, BX+1, BY+1);
  }
  if (BX < 0) {
    Dx = -Dx;
  }
  if (BX + BW > width) {
    Dx = -Dx;
  }
  if (Boss_hp[Q]==0) {
    game_explosion2.rewind();
    game_explosion2.play();
    Win=1;
  }
  if (Win==1) {
    state=CLEAR;
  }
}

void BossHit() {
  if (mouseButton== LEFT &&frameCount% 8 == 0&&
    isOverlap(bxr1, bye1, 2, 2, BX, BY, BW, BH)&& Boss_hp[Q]>0) {
    Boss_hp[Q]=Boss_hp[Q]-6;
    bomb1.rewind();
    bomb1.play();
    score=score+4;
    if (Boss_hp[Q]<=0) {
      Boss_hp[Q]=0;
      score=score+1000;
    }
  }
  if (mouseButton== RIGHT &&frameCount% 8 == 0&&
    isOverlap(bxr2, bye2, 2, 2, BX, BY, BW, BH)&& Boss_hp[Q]>0) {
    Boss_hp[Q]=Boss_hp[Q]-8;
    bomb2.rewind();
    bomb2.play();
    score=score+2;
    if (Boss_hp[Q]<=0) {
      Boss_hp[Q]=0;
      score=score+1000;
    }
  }
  fill(255, 0, 0);
  text("BOSS  HP: "+Boss_hp[Q], 300, height-30);
  if (h_score<score) {
    h_score=score;
    storeHighScore(h_score);
  }
}
