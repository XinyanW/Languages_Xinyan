PFont f; 
PFont f2;  

int ee;

int maxImages = 4; 
int imageIndex = 0; 

int SSImages = 4; 
//int SSIndex = 0; 

int EImages = 4; 
int EIndex = 0; 

boolean all = false;
boolean isPlaying = false;
boolean EisPlaying = false;
boolean SSisPlaying = false;

PImage[] images = new PImage[maxImages];
PImage[] Eimages = new PImage[EImages];
PImage[] SSimages = new PImage[SSImages];


void setup() {
  //background(255);
  size(1400, 830);
  f = createFont("Iowan Old Style", 60);
  f2 = createFont("heather script two", 20);
  for (int i = 0; i < images.length; i ++ ) {
    images[i] = loadImage( "S" + i + ".png" );
  }
  for (int j = 0; j < Eimages.length; j ++ ) {
    Eimages[j] = loadImage( "E" + j + ".png" );
  }
  for (int e = 0; e < SSimages.length; e ++ ) {
    SSimages[e] = loadImage( "SS" + e + ".png" );
    ee=e;
  }
  
 
  
 
  //delay(1000);
  frameRate(8);
}

void draw() { 
  background(220);
  // title
  textFont(f, 50);
  fill(100);
  text("I           YOU", 600, 80);
  line(631, 81, 762, 81);
  // first story
  textFont(f2, 50);
  fill(100);
  text("I  love  you ", 693, 283);
  line(693, 380, 900, 380);
  line(693, 477, 900, 477);
  line(693, 574, 900, 574);
  text("I  love  you ", 693, 671);
  // seconed story
  text("I  love  you ", 1093, 283);
  line(1093, 380, 1300, 380);
  line(1093, 477, 1300, 477);
  line(1093, 574, 1300, 574);
  text("See  you ", 1093, 671);
  noFill();
  //S
  //rect(298,216,152,152);
  //E
  //rect(146,216,152,152);
  //N
  rect(146, 368, 152, 152);
  //W
  rect(298, 368, 152, 152);



  
  /// Play S
  if (isPlaying == true&&EisPlaying == false) {
    image(images[imageIndex], -106, 31, 800, 800);
    imageIndex = (imageIndex + 1) % images.length;
  }

  
  // Play E
  if (EisPlaying == true&&isPlaying == false) {
  image(Eimages[EIndex], -106, 31, 800, 800);
    EIndex = (EIndex + 1) % Eimages.length;
  }
  // Show S
   if (EisPlaying == false&&isPlaying == false) {
  image(SSimages[ee], -106, 31, 800, 800);
    
  }
   
  
  


  println("S :"+imageIndex);
  println("E :"+EIndex);
  println("SS :"+ee);
}




void mouseClicked() {
  //S
  if (mouseButton == LEFT&&mouseX>298&&mouseX<450&&mouseY>216&&mouseY<368) {
    rect(298, 216, 152, 152);
    isPlaying = true;
    EisPlaying = false;
  } else if (mouseButton == RIGHT&&isPlaying == true) {
    //image(SSimages[0], -106, 31, 800, 800);
    isPlaying = false;
    EisPlaying = false;
    //E
  } else if (mouseButton == LEFT&&mouseX>146&&mouseX<298&&mouseY>216&&mouseY<368) {
    rect(146, 216, 152, 152);
    EisPlaying = true;
  } else if (mouseButton == LEFT) {
    image(images[0], -106, 31, 800, 800);
    //isPlaying = false;
  }
}
void mousePressed() {
  if (all==false) {
    image(images[0], -106, 31, 800, 800);
  } else {
    all=true;
  }
}