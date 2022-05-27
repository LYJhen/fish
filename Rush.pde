class Rush{
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
     if (fishX+w >x&&
        fishX < x+w&&
        fishY+h > y &&
        fishY < y+h ) {
          isAlive=false;
          fishSpeed=15;
        }
   }
 }

//void update() {
  //img=name;
//}  

Rush(){
  x = random(width-150);
  y = random(height-150);
  img = rushing;
}  

Rush(String filename){
  img = loadImage(filename);
  x = random(width-150);
  y = random(height-150);
}  
  

}
