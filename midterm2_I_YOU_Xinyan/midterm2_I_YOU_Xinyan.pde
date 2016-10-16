import ddf.minim.*;
Minim minim;
AudioPlayer player;

PFont f; 
PFont f2;  
String state;

int t, t2;
int counter=0;

int[]evennumber= {0, 2, 4, 6};
int en=int(random(4));
int nn= evennumber[en];

int[]noevennumber={1, 3, 5, 7};
int nen=int(random(4));
int n= noevennumber[nen];

int nnn= int(random(8));
String[] ttext= new String[9];

int maxImages = 8; 
int imageIndex = 0; 
boolean isPlaying = true;
PImage[] images = new PImage[maxImages];
boolean bgisPlaying = true;
int bgcounter=0;
PImage[] bg=new PImage[3];

void setup() {
  //background(#f7f7ef);
  size(1400, 830);
  smooth();
  frameRate(2);
  textfont(60, 20);
  minim = new Minim(this);
  player = minim.loadFile("iceland.mp3");
  player.play();
  player.loop();
  //
  for(int j=0;j<bg.length;j++){
    bg[j]=loadImage("bg"+ j + ".png");
  }
  for (int i = 0; i < images.length; i ++ ) {
    images[i] = loadImage( "story" + i + ".jpg" );
  }
  
  ttext[0] ="I dislike you,";
  ttext[1] ="I miss you,";
  ttext[2] ="I hate you,";
  ttext[3] ="I forgive you,";
  ttext[4] ="I leave you,";
  ttext[5] ="I wait for you,";
  ttext[6] ="I lost you,";
  ttext[7] ="I want you,";
  ttext[8]="";
}
void draw() {
  background(#f7f7ef);
  image(bg[bgcounter], 0,0);
  image(images[imageIndex], 550, 285, 300, 300);
  delay(300);
  storytext();
  if (isPlaying == true) {
    imageIndex = (imageIndex + 1) % images.length;
  }
  if(bgisPlaying==true){
    bgcounter = (bgcounter + 1) % bg.length;
  }
  println("hand:  "+ imageIndex);
  println("mouseclick:  "+counter);

  if (counter==1) {
    fill(#8f8faa);
    text(ttext[n], 80, 380);
    text(ttext[n], 920, 380);
    image(images[n], 550, 285, 300, 300);
    isPlaying = false;
    t=n;
  } else if (counter==3) {
    fill(#8f8faa);
    text(ttext[t], 80, 380);
    text(ttext[t], 920, 380);
    text(ttext[nn], 80, 477);
    text(ttext[nn], 920, 477);
    image(images[nn], 550, 285, 300, 300);
    isPlaying = false;
    t2=nn;
  } else if (counter==5) {
    fill(#8f8faa);
    text(ttext[t], 80, 380);
    text(ttext[t], 920, 380);
    text(ttext[t2], 80, 477);
    text(ttext[t2], 920, 477);
    text(ttext[nnn], 80, 574);
    text(ttext[nnn], 920, 574);
    image(images[nnn], 550, 285, 300, 300);
    isPlaying = false;
  } else if (counter==2) {
    fill(#8f8faa);
    text(ttext[t], 80, 380);
    text(ttext[t], 920, 380);
    isPlaying = true;
  } else if (counter==4) {
    fill(#8f8faa);
    text(ttext[t], 80, 380);
    text(ttext[t], 920, 380);
    text(ttext[t2], 80, 477);
    text(ttext[t2], 920, 477);
    isPlaying = true;
  } else if (counter==6) {
    counter=0;
    text(ttext[8], 80, 380);
    text(ttext[8], 920, 380);
    text(ttext[8], 80, 477);
    text(ttext[8], 920, 477);
    text(ttext[8], 80, 574);
    text(ttext[8], 920, 574);
    isPlaying = true;
  }
}



void mouseClicked() {
  if (mouseButton==LEFT&&counter<=6&&mouseX>553&&mouseX<953&&mouseY<685&&mouseY>285) {
    counter++;
  }
}
void textfont(int size1, int size2) {
  f = createFont("Iowan Old Style", size1);
  f2 = createFont("SnellRoundhand", size2);
}

void storytext() {
  //title
  textFont(f, 40);
  fill(#606074);
  stroke(#8f8faa);
  text("I         YOU", 600, 80);
  textFont(f, 20);
  fill(#8f8faa);
  text("Click the pictures and choose your favourtie gesture to fill in the two stories of two different endings. ", 250, 150);
  text("Compare two different endings and image the plots of the stories.", 400, 180);
  line(631, 81, 702, 81);
  // first story
  textFont(f2, 40);
  fill(#606074);
  text("I  love  you, ", 80, 283);
  line(80, 380, 420, 380);
  line(80, 477, 420, 477);
  line(80, 574, 420, 574);
  text("I  love  you. ", 80, 671);
  // seconed story
  text("I  love  you, ", 920, 283);
  line(920, 380, 1280, 380);
  line(920, 477, 1280, 477);
  line(920, 574, 1280, 574);
  text("See  you. ", 920, 671);
}