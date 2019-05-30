PImage table;
PImage tree;
PImage crab;
PImage cloud;
PImage ball;
PImage pale;
PImage ombre;

int num=2;
int y=150;
int x=150;
int crabX =100;
boolean move= true;

void setup() {
  size(800, 600);
  table = loadImage("table.png");
  table = loadImage("table.png");
  tree=loadImage("tree.png");
  tree=loadImage("tree.png");
  crab=loadImage("crab.png");
  cloud=loadImage("cloud.png");
  ball=loadImage("ball.png");
  pale=loadImage("pale.png");
  ombre=loadImage("ombre.png");
}

void draw() {
  if (mousePressed) {
    num=num*-1;
    background(69, 188, 224);
    fill(244, 206, 66);
  } else {
    background(0);
    image(ombre, 0, 0, width, height);
  }
  sun();
  image(table, 225, 275, 175, 175);
  image(table, 420, 275, 175, 175);
  image(tree, 2, 200, 250, 250);
  image(tree, 550, 200, 250, 250);
  image(crab, crabX, 500, 100, 100);
  image(cloud, 40, 20, 180, 150);
  image(cloud, 275, 30, 130, 130);
  image(cloud, 500, 50, 200, 130);
  image(ball, 645, 400, 65, 65);
  image(pale, 35, 400, 50, 50);

  
  if (move)
    crabX+=2;
  if (crabX==700)
    move=false;
  if (!move)
    crabX-=1;
  if (!move && crabX==99)
    move=true;
}

void sun() {
  fill(229, 212, 16);
  ellipse(x, y, 150, 150);
  noStroke();
  fill(198, 137, 88);
  rect(0, 400, 800, 400);
  noStroke();
  x+=num;
  y+=num;
}
