import processing.pdf.*;

PFont f; 
PFont f2;  
String state;
String onebyone;
int pic;

int[]evennumber= {0, 2, 4, 6};
int en=int(random(4));
int nn= evennumber[en];

int[]noevennumber={1, 3, 5, 7};
int nen=int(random(4));
int n= noevennumber[nen];

int nnn= int(random(8));
String[] ttext= new String[8];

int maxImages = 8; 
int imageIndex = 0; 
boolean isPlaying = true;
boolean textisPlaying = false;
PImage[] images = new PImage[maxImages];


void setup() {
  background(#f7f7ef);
  size(1400, 830);
  smooth();
  frameRate(10);
  textfont(60, 20);

  for (int i = 0; i < images.length; i ++ ) {
    images[i] = loadImage( "story" + i + ".jpg" );
  }
  //state="1"; 
  ttext[0] ="I dislike you";
  ttext[1] ="I miss you";
  ttext[2] ="I hate you";
  ttext[3] ="I forgive you";
  ttext[4] ="I leave you";
  ttext[5] ="I wait for you";
  ttext[6] ="I lost you";
  ttext[7] ="I want you";
}

void draw() {
  //background(#f7f7ef);
  image(images[imageIndex], 30, 30, 300, 300);
  if (isPlaying == true) {
    imageIndex = (imageIndex + 1) % images.length;
  }
  println(imageIndex);
  storytext();
  if(keyPressed){
  saveFrame("lovestory-######");
  }

  // title
  textFont(f, 50);
  fill(50);
  text("I           YOU", 700, 80);
  line(731, 81, 862, 81);

  // first story
  textFont(f2, 50);
  fill(50);
  text("I  love  you ", 410, 283);
  line(410, 380, 810, 380);
  line(410, 477, 810, 477);
  line(410, 574, 810, 574);
  text("I  love  you ", 410, 671);
  // seconed story
  text("I  love  you ", 893, 283);
  line(893, 380, 1300, 380);
  line(893, 477, 1300, 477);
  line(893, 574, 1300, 574);
  text("See  you ", 893, 671);


  noFill();
  textFont(f2, 50);

  if (state=="1") {
    fill(130);
    text(ttext[n], 410, 380);
    text(ttext[n], 893, 380);
    image(images[n], 30, 30, 300, 300);
    isPlaying = false;
    onebyone="1";

    pic=n;
  }
  else if (state=="2") {
    fill(130);
    //text(ttext[n], 410, 380);
    //text(ttext[n], 893, 380);
    text(ttext[nn], 410, 477);
    text(ttext[nn], 893, 477);
    image(images[nn], 30, 30, 300, 300);
    onebyone="1";
    isPlaying = false;
    pic=nn;
  }
  else if (state=="3") {
    fill(130);
    //text(ttext[n], 410, 380);
    //text(ttext[n], 893, 380);
    //text(ttext[nn], 410, 477);
    //text(ttext[nn], 893, 477);
    text(ttext[nnn], 410, 574);
    text(ttext[nnn], 893, 574);
    image(images[nnn], 30, 30, 300, 300);
    isPlaying = false;
    pic=nnn;
  }
  else if (state=="5") {
    isPlaying = true;
  }
  

  println("pic: "+ pic);
}
void mouseClicked() {
  if (mouseButton == LEFT&&mouseX>339&&mouseX<793&&mouseY>310&&mouseY<380) {
    //stroke(255,0,0);
    //line(393, 380, 800, 380);
    //rect(393, 310, 400, 70);
    state="1";
   
  } else if (mouseButton == LEFT&&mouseX>893&&mouseX<1293&&mouseY>310&&mouseY<380) {
    //rect(893, 310, 400, 70);
    state="1";
    textisPlaying = true;
  } else if (mouseButton == LEFT&&mouseX>393&&mouseX<793&&mouseY>407&&mouseY<477) {
    //rect(393, 407, 400, 70);
    state="2";
    textisPlaying = true;
  } else if (mouseButton == LEFT&&mouseX>893&&mouseX<1293&&mouseY>407&&mouseY<477) {
    //rect(893, 407, 400, 70);
    state="2";
  } else if (mouseButton == LEFT&&mouseX>393&&mouseX<793&&mouseY>504&&mouseY<574) {
    //rect(393, 504, 400, 70);
    state="3";
  } else if (mouseButton == LEFT&&mouseX>893&&mouseX<1293&&mouseY>504&&mouseY<574) {
    //rect(893, 504, 400, 70);
    state="3";
  } else if (mouseButton == LEFT) {
    state="5";
  }/*else if (mouseButton == RIGHT) {
   isPlaying = false;
   } */
}

void storytext() {
  int space=5;
  //Introduction
  fill(150);
  textFont(f, 30);
  text("About I_YOU", 20, 390);
  textFont(f, 18);
  fill(150);
  text("These are two stroies of different ending", 20, 430+space);
  text("about love which you should image the", 20, 460+space);
  text("plots based on the pictures/texts you", 20, 490+space);
  text("choose ranmodly. The pictures are", 20, 520+space);
  text("related to the texts.", 20, 550+space);
  // How to play
  fill(150);
  textFont(f, 30);
  text("How To Play", 20, 600+space);
  textFont(f, 18);
  text("Right click the blank line to fill in", 20, 640+space);
  text("Right click other place to choose again", 20, 670+space);
  text("Press any keys to save the stories as PDF", 20, 700+space);
}
void textfont(int size1, int size2) {
  f = createFont("Iowan Old Style", size1);
  f2 = createFont("SnellRoundhand", size2);
}