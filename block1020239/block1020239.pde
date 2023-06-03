import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;

int state;
final int TITLE = 0;
final int GAME = 1;
final int ENDING = 2;
final int CLEAR =3;
int Win;
PImage Boss;
AudioPlayer game_explosion2;
AudioPlayer bomb1;
AudioPlayer bomb2;
AudioPlayer destruction1;
AudioPlayer short_bomb;
AudioPlayer BGM;

float tx1, ty1;
float tx2, ty2;
float tx3, ty3;
float tx4, ty4;
float tx5, ty5;
float tx6, ty6;
float tx7, ty7;
float tx8, ty8;
float tx9, ty9;
float bxe1, bye1, bxe2, bye2, bxr1, bxr2;
float BX, BY, BW, BH;
int enemy_x[]=new int[30], enemy_y[]=new int[30];
int enemy_speed[]=new int[30];
int enemy_hp[]=new int [30];
int Boss_hp[]=new int[1];
int Q=0;
int Dx;
int i;
int score;
int h_score=0;

void setup() {
  
  minim = new Minim(this);
  destruction1 = minim.loadFile("destruction1.mp3");
  destruction1.setGain(-20);
  game_explosion2 = minim.loadFile("game_explosion2.mp3");
  game_explosion2.setGain(-20);
  short_bomb = minim.loadFile("short_bomb.mp3");
  short_bomb.setGain(-20);
  bomb1 = minim.loadFile("bomb1.mp3");
  bomb1.setGain(-20);
  bomb2 = minim.loadFile("bomb2.mp3");
  bomb2.setGain(-20);
  BGM = minim.loadFile("BGM.mp3");
  BGM.loop();
  BGM.setGain(-10);

  size(1366, 768);
  floatBoss();
  floatWing();
  floatBeam();
  for (int i=0; i<30; i++) {
    intEnemy();
  }
  score=0;
  h_score=loadHighScore();
  Boss=loadImage("Boss.jpg");
}

void draw() {
  if (state == TITLE) {  
    Title();
  } else if (state == GAME) {
    Game();
  } else if (state == ENDING) {
    Ending();
  } else if (state ==CLEAR) {
    Clear();
  }
}
