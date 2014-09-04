float s, ms, cs, i;
 
void setup() {
    size(1200, 200);
    colorMode(HSB, 100, 100, 100);
}
 
void draw() {
    s = 13.5;
    ms += s;
    cs = millis()%2500;
 
    background(0);
    fill(30 * (cs / 100.0)  , 70 * (cs / 100.0), 70 * (cs / 100.0)); //0.000125byou ni 1kai kousin 
    rect(mouseX*0.96, 160, width / 6, height / 5); //sikaku no zahyou to size
    
    translate(width / 6, 0); //translate = genten
    fill(30 * (cs / 300.0)  , 80 * (cs / 300.0), 80 * (cs / 300.0));
    rect(mouseX*0.8, 134, width / 6, height / 3);
    
    translate(width / 6, 0);
    fill(30 * (cs / 400.0)  , 80 * (cs / 400.0), 80 * (cs / 400.0));
    rect(mouseX*0.64, 100, width / 6, height / 2);
    
    translate(width / 6, 0);
    fill(40 * (cs / 600.0)  , 90 * (cs / 600.0), 90 * (cs / 600.0));
    rect(mouseX*0.48, 68, width / 6, height / 1.5);
    
    translate(width / 6, 0);
    fill(40 * (cs / 800.0)  , 90 * (cs / 800.0), 90 * (cs / 800.0));
    rect(mouseX* 0.32, 40, width / 6, height / 1.25);
    
    translate(width / 6, 0);
    fill(50 * (cs / 1200.0)  , 90 * (cs / 1200.0), 90 * (cs / 1200.0));
    rect(mouseX *0.16, 0, width / 6, height);
}
