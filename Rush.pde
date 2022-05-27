class Rush{
  boolean isAlive;
  float rushx;
  float rushy;
  float w;
  float h;
 
  PImage img;


void display() {
  image(img,rushx,rushy);
  }

 void checkCollision(float w, float h) {
   if (isAlive==true) {
     if (fishX+w >rushx&&fishX < rushx+w&&fishY+h > rushy &&fishY < rushy+h ) {
          isAlive=false;
          fishSpeed=15;
        }
   }
 }

//void update() {
  //img=name;
//}  

Rush(){
  rushx = random(width-150);
  rushy = random(height-150);
  img = rushing;
}  

Rush(String filename){
  img = loadImage(filename);
  rushx = random(width-150);
  rushy = random(height-150);
}  
  

}
