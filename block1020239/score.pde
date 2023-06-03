void score() {
  fill(0, 255, 255);
  textSize(30);
  text("score:"+score, 100, height-30);
} 

void storeHighScore(int h_score) {
  String lines[] = new String[1];
  lines[0] =str(h_score);
  saveStrings("data.txt", lines);
}

int loadHighScore() {
  String lines[];
  lines = loadStrings("data.txt");
  if (lines == null) {
    return 0;
  } else {
    return int(lines[0]);
  }
}
