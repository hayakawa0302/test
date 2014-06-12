int count = 0,xs = 0, ys = 0, y = 10, v = -5, yv =0;
void setup() {
  size(500,500);
}

void draw() {
  background(255,255,255);
  strokeWeight(5);
  stroke(0,0,0);
  ellipse(count, yv, 20, 20);
  yv = y + v;
  if(xs == 0 ){
     count++;
  }
  if(count >= 500) {
     xs = 1;
  }
  if(xs == 1){
    count--;
  }
  if(count <= 0 && xs == 1){
    xs = 0;
  }
  if(yv >= 500 && ys == 0){
    ys =1;
  }
  if(ys ==1){
    y = 0;
  }
  if(yv <= 0 && ys == 1){
    ys = 0;
  }
}
