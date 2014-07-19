int x, y;
int dx, dy;
boolean mouseDragging;
int r = 30;

void setup(){ 
  size(300, 300);
  fill(0);
  stroke(0);
  x = width/2;
  y = height/2;
}
void draw(){
  background(255);
  if(mouseDragging == true){
    x = mouseX+dx;
    y = mouseY+dy;
  }
  ellipse(x, y, r*2, r*2);
}
void mousePressed(){
  if(dist(x, y, mouseX, mouseY)<r){
    mouseDragging = true;
    dx = x-mouseX;
    dy = y-mouseY;
  }
}
void mouseReleased(){
  mouseDragging = false;
}
