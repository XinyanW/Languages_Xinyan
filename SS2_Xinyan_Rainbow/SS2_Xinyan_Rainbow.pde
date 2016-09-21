// This is by Xinyan Wang
// Tile: Rainbow
// choose one pint to press the mouse button long
// press any keys to clear the backgournd
int H=0;
int S=150;
int B=250;
float V=20;
float D=100;

void setup() {
  size(800, 800);
  colorMode(HSB);
  background(255);
}
void draw() {
  if (keyPressed) {
    background(255);
    rectMode(CENTER);
  }

  if (mousePressed) {

    fill(H, S, B, 200);
    smooth();
    noStroke();
    ellipse(mouseX+V, mouseY+V, 50, 50);
    //line(pmouseX, pmouseX, V, V);
    rect(mouseX+D, mouseY+D, 80, 80);
    triangle(mouseX, mouseY, 58+D, 20+D, 86+D, 75+D);
    //line(mouseX,mouseY,mouseX+50,mouseY+50);


    if (H<=255) { 
      H=H+1;
    } else { 
      H=H-255;
    }

    if (V<=500) { 
      V=V+0.5;
    } else { 
      V=V-500;
    }

    if (D<=500) { 
      D=D+0.5;
    } else { 
      D=D-500;
    }
  }


  
}