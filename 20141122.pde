void setup(){
 size(400, 600, P3D); 
}

int time = 0;

void draw() {
  time++;
  background(0);
  translate(width/2, height/2);
  color c1 = #FFFFFF;
  fill(c1);
  stroke(100);
  rotateY(sin(0.5f)*time*0.1f);
  rotateX(0.2f);
  for(int i = 0; i < 9; i++){
  rect(0, 0, 40, 200);
  translate(40, 0);
  rotateY(0.7f);
  }
}
