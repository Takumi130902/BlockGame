void floatWing() {
  tx1=mouseX-30;
  ty1=mouseY;
  tx2=mouseX;
  ty2=mouseY-90;
  tx3=mouseX+30;
  ty3=mouseY;
  tx4=mouseX-15;
  ty4=mouseY;
  tx5=mouseX;
  ty5=mouseY-100;
  tx6=mouseX+15;
  ty6=mouseY;
  tx7=mouseX-6;
  ty7=mouseY;
  tx8=mouseX;
  ty8=mouseY-15;
  tx9=mouseX+6;
  ty9=mouseY;
}

void X_wing() {
  fill(0);
  stroke(255);
  rect(tx5-32, ty5, 64, 103);
  fill(0, 0, 255);
  noStroke();
  triangle(tx1, ty1, tx2, ty2, tx3, ty3);
  noStroke();
  fill(255);
  noStroke();
  triangle(tx4, ty4, tx5, ty5, tx6, ty6);
  noStroke();
  fill(0);
  triangle(tx7, ty7, tx8, ty8, tx9, ty9);
}
