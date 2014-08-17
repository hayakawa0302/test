float ms, s, m, h;
 
void setup() {
    size(1200, 200);
    colorMode(HSB, 360, 100, 100);
}
 
void draw() {
    ms = millis()%7000; //millis() = 1/1000byou
    //s = second();
    //m = minute();
    //h = hour();
 
    background(0);
    
    fill(30 * (ms / 150.0)  , 70 * (ms / 150.0), 70 * (ms / 150.0)); //0.000125byou ni 1kai kousin 
    rect(0, 0, width / 6, height / 5); //sikaku no zahyou to size
    
    translate(width / 6, 0); //translate = zahyou kiten zurasu
    fill(30 * (ms / 210.0)  , 80 * (ms / 210.0), 80 * (ms / 210.0));
    rect(0, 0, width / 6, height / 3);
    
    translate(width / 6, 0);
    fill(30 * (ms / 270.0)  , 80 * (ms / 270.0), 80 * (ms / 270.0));
    rect(0, 0, width / 6, height / 2);
    
    translate(width / 6, 0);
    fill(40 * (ms / 420.0)  , 90 * (ms / 420.0), 90 * (ms / 420.0));
    rect(0, 0, width / 6, height / 1.5);
    
    translate(width / 6, 0);
    fill(40 * (ms / 570.0)  , 90 * (ms / 570.0), 90 * (ms / 570.0));
    rect(0, 0, width / 6, height / 1.25);
    
    translate(width / 6, 0);
    fill(50 * (ms / 810.0)  , 90 * (ms / 810.0), 90 * (ms / 810.0));
    rect(0, 0, width / 6, height);
}
