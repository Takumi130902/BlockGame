void floatBeam() {
  bxe1=mouseX;
  bye1=mouseY-460;
  bxe2=mouseX;
  bye2=mouseY-300;
  bxr1=bxe1-2;
  bxr2=bxe2-2;
}

void Beam() {
  floatWing();
  floatBeam();
  if (mouseButton == LEFT&&frameCount% 4 == 0) {
    stroke(255, 0, 0);
    fill(255, 0, 0);
    line(tx1, ty1, bxe1, bye1);
    line(tx2, ty2, bxe1, bye1);
    line(tx3, ty3, bxe1, bye1);
    rect(bxr1, bye1, 4, 4);
    noStroke();
  }
  if (mouseButton == RIGHT&&frameCount% 2 == 0) {
    stroke(0, 255, 0);
    fill(0, 255, 0);
    line(tx1, ty1, bxe2, bye2);
    line(tx5, ty5, bxe2, bye2);
    line(tx3, ty3, bxe2, bye2);
    rect(bxr2, bye2, 4, 4);
    noStroke();
  }
}
