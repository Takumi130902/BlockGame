void NewGame() {
  state = TITLE;
  score=0;
  Win = 0;
}

void Title() {
  background(0);
  fill(255);//白色
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
  fill(255, 255, 0);
  textSize(150);
  textAlign(CENTER);
  text("STAR HUNTER", width /2, height * 0.3);
  textSize(30);
  text("START CURSOR POSITION", width /2, height-30); 
  fill(0);
  stroke(255);
  rect(width/2-10, height-100, 30, 30);
  if (frameCount / 35 % 2 == 0) {
  } else {  
    fill(0, 255, 0);   
    textSize(55);
    text("Press S key to START", width * 0.5, height * 0.7);
  }
  if (key == 's') {
    state = GAME;
    intEnemy();
    Boss_hp[Q]=1200;
  }
}

void Ending() {
  BGM.rewind();
  BGM.pause();
  textSize(50);
  textAlign(CENTER);
  if (frameCount / 25 % 2 == 0) {
    fill(255);
  } else {
    fill(0, 255, 0);
  }   
  text("Press R key to FINISH", width * 0.5, height * 0.85);
  fill(255, 0, 0);
  textSize(110);
  text("DEAD", width * 0.5, height * 0.5);
  textSize(50);
  fill(0, 255, 255);
  text("SCORE;    "+score, width * 0.5, height * 0.6);
  //text(score, width * 0.6, height * 0.6);
  fill(255, 255, 0);
  text("HIGH SCORE;    "+h_score, width * 0.45, height * 0.7);
  fill(0);

  if (key == 'r') {
    NewGame();
    Boss_hp[Q]=1200;
    BGM.rewind();
    BGM.loop();
  }
}

void Clear() {
  BGM.rewind();
  BGM.pause();
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
  textSize(50);
  textAlign(CENTER);
  if (frameCount / 25 % 2 == 0) {
    fill(255);//白色
  } else {
    fill(0, 255, 0);
  }   
  text("Press R key to FINISH", width * 0.5, height * 0.85);
  fill(255, 0, 0);
  textSize(110);
  text("WIN!", width * 0.5, 200);
  text("Congratulations!", width * 0.5, height * 0.5);
  textSize(50);
  fill(0, 255, 255);
  text("SCORE;    "+score, width * 0.5, height * 0.6);
  fill(255, 255, 0);
  text("HIGH SCORE;    "+h_score, width * 0.45, height * 0.7);
  fill(0);
  rect(0, height-55, 200, 50);
  if (key == 'r') {
    NewGame();
    Boss_hp[Q]=1200;
    BGM.rewind();
    BGM.loop();
  }
}
