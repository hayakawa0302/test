void setup(){
 size(600, 600, P3D); 
}

float x = 0;
float y = 0;
float a = 0;
float b = 0;
float c = 0;
float Ax = -200;
float Ay = 300;
float Bx = 100;
float By = -300;
float AMx = 0;
float AMy = 0;
float AM = 0;
float AZx = 0;
float AZy = 0;
float lABx = 0;
float lABy = 0;
float lZ = 0;
float zx = 0;
float zy = 0;


void draw() {
  background(255);
  translate(width/2, height/2);
  x = mouseX -300;
  y = mouseY -300;
  PVector MousePoint = new PVector(x, y, 0);
  line(100, -300, -200, 300);
  line(0, 300, 0, -300); //Axis y
  line(-300, 0, 300, 0); //Axis x
  a = Bx - Ax;
  b = By - Ay;
  c = sqrt(a*a + b*b);
  lABx = a/c;
  lABy = b/c;
  AMx = x - Ax;
  AMy = y - Ay;
  lZ = lABx * AMx + lABy * AMy; 
  AZx = lZ * lABx;
  AZy = lZ  * lABy;
  zx = Ax + AZx;
  zy = Ay + AZy;
  line(MousePoint.x, MousePoint.y, zx, zy);
}
