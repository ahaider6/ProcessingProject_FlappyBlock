//Declaring variables
PImage plr,wallA,wallB,wallC,wallD,wallE,wallF,wallG,wallH,wallJ,wallK;
 float plrX = 100,plrY = 500;


float wallxLeft[] = {0,0,0};
 
 int score = 0,attempt = 0;
 
 boolean gameover = false;
 
 void replay() {
 wallxLeft[0] = wallxLeft[0] + 500;
 wallxLeft[1] = wallxLeft[1] + 500;
 wallxLeft[2] = wallxLeft[2] + 500;
 score = 0;
 attempt += 1;
 }
 void setup() {
   size(600,600);
 plr = loadImage("player.png");
 wallA = loadImage("Wall.PNG");
 wallB = loadImage("Wall.PNG");
 wallC = loadImage("Wall.PNG");
 wallD = loadImage("Wall.PNG");
 wallE = loadImage("Wall.PNG");
 wallF = loadImage("Wall.PNG");
 wallG = loadImage("Wall.PNG");
 wallH = loadImage("Wall.PNG");
 wallJ = loadImage("Wall.PNG");
 wallK = loadImage("Wall.PNG");

 }
 //Detecting collision using a void method
 void hit_A(float x, float y, float plrX, float plrY) {
  float boxWidth = 25;
  float boxHeight = 150;

  float posX1 = x;
  float posX2 = x + boxWidth;
  float posY1 = y;
  float posY2 = y + boxHeight;

  if (plrX >= posX1 && plrX <= posX2 && plrY >= posY1 && plrY <= posY2) {
    replay();
   }
  }
  
   void hit_B(float x, float y, float plrX, float plrY) {
  float boxWidth = 25;
  float boxHeight = 190;

  float posX1 = x;
  float posX2 = x + boxWidth;
  float posY1 = y;
  float posY2 = y + boxHeight;

  if (plrX >= posX1 && plrX <= posX2 && plrY >= posY1 && plrY <= posY2) {
   replay();
   }
  }
  
   void hit_C(float x, float y, float plrX, float plrY) {
  float boxWidth = 25;
  float boxHeight = 250;

  float posX1 = x;
  float posX2 = x + boxWidth;
  float posY1 = y;
  float posY2 = y + boxHeight;

  if (plrX >= posX1 && plrX <= posX2 && plrY >= posY1 && plrY <= posY2) {
 replay();
   }
  }
  
   void hit_D(float x, float y, float plrX, float plrY) {
  float boxWidth = 25;
  float boxHeight = 200;

  float posX1 = x;
  float posX2 = x + boxWidth;
  float posY1 = y;
  float posY2 = y + boxHeight;

  if (plrX >= posX1 && plrX <= posX2 && plrY >= posY1 && plrY <= posY2) {
    replay();
   }
  }
  
  void hit_E(float x, float y, float plrX, float plrY) {
  float boxWidth = 25;
  float boxHeight = 190;

  float posX1 = x;
  float posX2 = x + boxWidth;
  float posY1 = y;
  float posY2 = y + boxHeight;

  if (plrX >= posX1 && plrX <= posX2 && plrY >= posY1 && plrY <= posY2) {
    replay();
   }
  }
  
   void hit_F(float x, float y, float plrX, float plrY) {
  float boxWidth = 25;
  float boxHeight = 350;

  float posX1 = x;
  float posX2 = x + boxWidth;
  float posY1 = y;
  float posY2 = y + boxHeight;

  if (plrX >= posX1 && plrX <= posX2 && plrY >= posY1 && plrY <= posY2) {
   replay();
   }
  }

 void keyPressed() {
 if (key == 'w') {
 plrY += 25;
 } else if (key == 's') {
 plrY -= 25;
 }
 }
 
 void draw() {
 background(#1600a2);
 fill(200,0,0);
 textSize(25);
 text("ATTEMPT:" + attempt,250,40);
 text("SCORE:" + score,250,70);
  
  image(plr,plrX,plrY,85,90);
 score +=1;
  wallxLeft[0] -= 5;
 image(wallA,wallxLeft[0],0,50,300);
 image(wallB,wallxLeft[0],380,50,300);
 hit_A(wallxLeft[0],0,plrX,plrY);
 hit_B(wallxLeft[0],380,plrX,plrY);
 
 wallxLeft[1] -= 5;
 image(wallC,wallxLeft[1],-100,50,500);
 image(wallD,wallxLeft[1],500,50,400);
  hit_C(wallxLeft[1],-100,plrX,plrY);
  hit_D(wallxLeft[1],500,plrX,plrY);
  
  wallxLeft[2] -= 5;
 image(wallE,wallxLeft[2],-200,50,300);
 image(wallF,wallxLeft[2],200,50,700);
  hit_E(wallxLeft[2],-200,plrX,plrY);
  hit_F(wallxLeft[2],200,plrX,plrY);

//using an if statement to control the spawning of the walls 
if (wallxLeft[0] < -50) {
  wallxLeft[0] = wallxLeft[2] + 300;
}
if (wallxLeft[1] < -50) {
  wallxLeft[1] = wallxLeft[0] + 300;
}
if (wallxLeft[2] < -50) {
  wallxLeft[2] = wallxLeft[1] + 300;
}



 }
 

 
 
