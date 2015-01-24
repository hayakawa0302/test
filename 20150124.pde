PVector p0, q0, p1, q1;
float t0, t1;
float v0, v1;
float move;
void setup(){
  size(400, 400);
  t0 = 0;
  t1 = 0;
  v0 = 0.01f;
  v1 = 0.01f;
  move = 0;
  p0 = new PVector(0, 0);
  q0 = new PVector(100, 300);
  p1 = new PVector(100, 300);
  q1 = new PVector(400, 400);
}
float g(float t){
  //return -2*t*t*t + 3*t*t;
  return t;
}
float f(float t){
  //return g(g(t));
  return t;
}
void draw() {
  background(0);
  PVector x0 = PVector.add(PVector.mult(p0, f(1-t0)), PVector.mult(q0, f(t0)));
  PVector x1 = PVector.add(PVector.mult(p1, f(1-t1)), PVector.mult(q1, f(t1)));
  //t0 += v0;
  //t1 += v1;
  if(t0 < 1 && move == 0){
    t0 += v0;
    ellipse(x0.x, x0.y, 10, 10);
  }
  if(t0 > 1 && move == 0){
    t1 += v1;
    ellipse(x1.x, x1.y, 10, 10);
  }
  if(t1 >= 1){
    if(move == 0){
      move = 1;
    }
  }
  if(move == 1 && t1 > 0){
    t1 -= v1;
    ellipse(x1.x, x1.y, 10, 10);
  }
  if(t1 < 0 && move == 1){
    t0 -= v0;
    ellipse(x0.x, x0.y, 10, 10);
  }
  if(t0 < 0 && move == 1){
    move = 0; 
  }
}
