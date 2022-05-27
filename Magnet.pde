class Magnet{
  boolean isAlive;
  float x;
  float y;
  float w;
  float h;
  PImage img;



void display() {
  image(img,x,y);
  }

  void checkCollision(float w, float h) {
   if (isAlive==true) {
     if (fishX+w >x&&fishX < x+w&&fishY+h> y &&fishY < y+h ) {
          isAlive=false;
          
     }
   }
 }


Magnet(){
  x = random(width-150);
  y = random(height-150);
  img = magneting;
}  

Magnet(String filename){
  img = loadImage(filename);
  x = random(width-150);
  y = random(height-150);
}  
  

}
