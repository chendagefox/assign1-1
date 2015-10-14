/* 

void setup () {
  size(640,480) ;  // must use this size.
  // your code
}

void draw() {
  // your code
}

*/



PImage BImage1,BImage2,enemy,fighter,hp,treasure; // image in 
int Bx,hpy,Tx,Ty,Ex,Ey;
void setup () {
  size(640,480) ;  
  // load image
  BImage1 = loadImage("img/bg1.png");
  BImage2 = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  // load image
  
  hpy = floor(random(5,185)); 
  // random hp
  
  Tx = floor(random(620));
  Ty = floor(random(420));
  // Tx y
  
  Ex = 20;
  Ey = floor(random(50,420));
}

void draw() {
  // background
  image(BImage1,Bx,0);
  image(BImage2,Bx-640,0);
  image(BImage1,Bx-1280,0);
  Bx += 2 ;
  Bx = Bx % 1280 ;
  // background
  
  noStroke();
  fill(255,10,10);
  rect(27,26,hpy,15);
  image(hp,15,20);
  // hp
  
  image(fighter,570,240);
  // fighter
  
  Ex += 5;
  Ex = Ex % 640;
  image(enemy,Ex,Ey);
  
  image(treasure,Tx,Ty);
  // treasure random
  
}
