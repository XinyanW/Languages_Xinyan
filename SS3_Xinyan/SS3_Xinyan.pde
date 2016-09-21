// By Xinyan Wang
// mousePressed for N0.1 Graph
// KeyPressed for No.2 Graph
// Do not anything for No.3 Graph
// The tilte is Blinking Based On Retangles
int mW = 0;
int mH = 0;
int times = 0;


void setup() {
  size(810, 810);
  colorMode(HSB);
  rectMode(CENTER);
}

void draw() {
  background(255);
  int m=0;
  if (mousePressed) {
    for (int i=10; i<width; i+=40) {
      times = i / 8 ;
      mW = times%255;  
      for (int j=10; j<height; j+=40) {

        pushMatrix();

        noStroke();
        times = j / 8;
        mH = mW + times%255;
        float rot = -PI/4. + atan2(mouseX-i, mouseY-j);
        fill(int(mH/rot), 200, 220);
        rotate(rot);
        rect(i, j, 30, 30);
        popMatrix();
        if (m<=255) {
          m=m+1;
        } else {
          m=0;
        }
      }
    }
  } else if (keyPressed) {
    for (int v=20; v<width; v+=40) {
      times = v / 8 ;
      mW = times%255; 
      for (int n=20; n<height; n+=40) {
        times = n / 8;
        mH = mW + times%255;
        pushMatrix();
        smooth();
        translate(v, n);
        noStroke();
        fill(int(mH), 200, 220);
        rotate(frameCount%500/2);
        rect(0, 0, 30, 30);
        popMatrix();
      }
    }
  } else {
    background(map(mouseX, 0, width, 0, 255), 200, 200);
    for (int e = 20; e<width; e=e+40){
      for (int r = 20; r<height; r=r+40){
        pushMatrix();
        translate(e, r);
        float rot = -PI/4. + atan2(mouseX-e, mouseY-r);
        rotate(rot);
        fill(random(100, 250), 100, 250);
        noStroke();
        rect(0, 0, 30, 30);
        popMatrix();
      }
    }
  }
}