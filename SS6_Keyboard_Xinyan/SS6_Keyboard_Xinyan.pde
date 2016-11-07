import processing.sound.*;

AudioDevice device;
SoundFile[] file;
PFont f;  

// Define the number of samples 
int numsounds = 5;
int value[] = {0, 0, 0};
int counter;

boolean key1= false;
boolean key2= false;
boolean key3= false;
boolean key4= false;
boolean key5= false;
void setup() {

  size(1280, 720);
  background(255);
  f = createFont("Arial", 30);
  // Create a Sound renderer and an array of empty soundfiles
  device = new AudioDevice(this, 48000, 32);
  file = new SoundFile[numsounds];

  // Load 5 soundfiles from a folder in a for loop. By naming the files 1., 2., 3., n.
  // through the folder and load all files in one line of code.
  //for (int i = 0; i < numsounds; i++) {
  //  file[i] = new SoundFile(this, i + ".mp3");
  //  println(i);
  //  //counter=i;
  //}
  file[0] = new SoundFile(this, "0.mp3");
  file[1] = new SoundFile(this, "1.mp3");
  file[2] = new SoundFile(this, "2.mp3");
  file[3] = new SoundFile(this, "3.mp3");
  file[4] = new SoundFile(this, "4.mp3");
  
  //file[counter].play();
  //file[counter].loop();
  //println(counter);
}

void draw() {

  background(value[0], value[1], value[2]);
  textFont(f, 30);
  text("1:Bass  2:Tambourine  3:Female Sound  4:Drum Sticks  5:Drum",width/2-450, height/2-80);
  text("Press key 1, 2, 3, 4, 5 to make sounds",width/2-250, height/2);
  text("Press again to cancel the sound",width/2-220, height/2+40);
}
void keyPressed() {
  for (int i=0; i < 3; i++) {  
    value[i]=int(random(255));
  }
  if (key=='1'&&key1==true) {
    file[0].play();
    //file[0].loop();
    key1=false;
  } else if (key=='1'&&key1==false) {
    key1=true;
    file[0].stop();
  }

  if(key=='2'&&key2==true){
    file[1].play();
    //file[1].loop();
    key2=false;
  }else if (key=='2'&&key2==false)  {
    key2=true;
    file[1].stop();
  }

  if  (key=='3'&&key3== true) {
    file[2].play();
    //file[2].loop();
    key3=false;
  } else if (key=='3'&&key3==false) {
    key3=true;
    file[2].stop();
  }

  if  (key=='4'&&key4== true) {
    file[3].play();
    //file[3].loop();
    key4=false;
  } else if (key=='4'&&key4==false) {
    key4=true;
    file[3].stop();
  }

  if  (key=='5'&&key5== true) {
    file[4].play();
    file[4].loop();
    key5=false;
  } else if (key=='5'&&key5==false) {
    key5=true;
    file[4].stop();
  }
}

void circle() {
}