Image image;

PImage img;

void setup(){
 
  size(600,600);
  image = new Image();
  img = loadImage("dvdlogo.png");

 
}

void draw(){
 
  background(0);
  
  image.draw();
  image.move();
  
}
