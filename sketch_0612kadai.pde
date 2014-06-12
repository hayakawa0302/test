int x = 0, y = 0, v = 0;
int vx = 3, vy = 10;

void setup() {
  size (500, 500);
}

void draw() {
  v++;
  background(255,255,255);
  strokeWeight(3);
  ellipse(x, y, 20, 20);
  x += vx / 2;
  y += vy + (v / 3);
  if(x < 0 || width < x){
    vx *= -1;
  }
  if(y < 0 || height-10 < y){
    vy *= -1;
    v = -25;
  }
}
