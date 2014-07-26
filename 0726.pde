float x, y, x1, y1;
float dx, dy;
boolean mouseDragging;
float r = 30;
float lx, ly, lr, lg;

void setup(){ 
  size(300, 300);
  fill(0);
  stroke(0);
  x = width / 2;
  y = height / 2;
  x1 = width / 2;
  y1 = height / 2;
}
void draw(){
  background(255);
  if(mouseDragging == true){
    x = mouseX + dx;
    y = mouseY + dy;
  }
  fill(255);
  strokeWeight(1);
  ellipse(x1, y1, r * 7, r * 7);
  fill(150);
  ellipse(x, y, r*2, r*2);
}
void mousePressed(){
  if(dx * dx + dy * dy < r * r){
    mouseDragging = true;
    dx = x - mouseX;
    dy = y - mouseY;
  }
  strokeWeight(5);
  lx = mouseX - x1;
  ly = mouseY - y1;
  lr = lx * lx + ly * ly;
  if(lr + r * 2 >= r * 7){
    lg = (r * 7 - r * 2) / lr;
    x = x1 + (lx * lg);
    y = y1 + (ly * lg);
  }
}
void mouseReleased(){
  mouseDragging = false;
}
