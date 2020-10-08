class Image // soon to be imageeee
{
  
  PVector pos; // position of DVD
  PVector velo; // speed of DVD/movement
  float diameter; //size of DVD
  color colour; // colour of DVD
  int size;
  
  Image()
  {
    pos = new PVector (width/4, height/4);
    velo = new PVector (random (-2,2), random(2,-2));
    diameter = 30;
    size = 40;
    colour = color(255);
    tint(255);
    
  }

void draw()
{
 stroke(1);
 fill(colour);
 image(img,pos.x,pos.y,size,diameter);
  
}

void move()
{
 pos.x = pos.x + velo.x;
 pos.y = pos.y + velo.y;
 
 if (pos.x < diameter)
 {
   velo.x = -1 * velo.x; // if LOGO left it will move right
   tint(255,0,0);
 }
 else if (pos.x > width - diameter/2)
 {
   velo.x = -1 * velo.x; // if LOGO right will move left
   tint(0,255,0);
 }
 if (pos.y < diameter)
 {
   velo.y = -1 * velo.y; // if LOGO at top move down
   tint(0,0,255);
 }
 else if (pos.y > height - diameter/2)
 {
   velo.y = -1. * velo.y; // if LOGO at bottom move up
   tint(255,255,100);
   
  }
   
 }
 
 
}

// referenced code from "https://moodle.city.ac.uk/mod/page/view.php?id=1649147"
