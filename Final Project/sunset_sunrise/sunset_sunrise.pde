PImage chair;

void setup(){
  size(800,600);
  chair = loadImage("chair.png");
}

void draw() {
  if (mousePressed) {
    background(69, 188, 224);
   fill(244, 206, 66); 
  } else {
    background(0);
   
   
  }
   fill(229, 212, 16);
    ellipse(150, 150, 150, 150);
    noStroke();
    fill(198, 137, 88);
    rect(0, 400, 800, 400);
    noStroke();
    
    image(chair, 200, 400, 150, 150);
}
