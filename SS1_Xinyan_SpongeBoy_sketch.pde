// This sketch is by Xinyan Wang

void setup() {
  size(1080, 720);
  //background(#FDDB21);
  
}

void draw() {
  background(#FDDB21);
// right eye
  fill(255);
  stroke(0);
  strokeWeight(12);
  ellipse(479, 311, 120, 120);
// lefe eye 
  fill(255);
  stroke(0);
  ellipse(611, 311, 120, 120);
// eyeball
  fill(0);
  ellipse(488, 311, 30, 36);
  ellipse(599, 311, 30, 35);
// right eyelashes
  line(473, 232, 475, 250);
  line(425, 246, 436, 260);
  line(522, 240, 515, 255);
// left eyelashes  
  line(606, 230, 607, 248);
  line(563, 239, 573, 261);
  line(652, 237, 644, 255);
// nose&face 
 strokeWeight(10);
fill(#FDDB21);
bezier(519, 374,  505, 305,  580, 301,  570, 374);
bezier(377, 382,  373, 326,  460, 324,  457, 382);
bezier(628, 382,  621, 326,  712, 326,  706, 382);
// mouth
line(420,430,665,430);
// teeth
fill(255);
rect(505,430,35,40,8);
rect(547,430,35,40,8);
// cheek color
fill(#E10000);
noStroke();
ellipse(404,379,15,15);
ellipse(433,379,15,15);
ellipse(419,399,15,15);

ellipse(655,379,15,15);
ellipse(682,379,15,15);
ellipse(669,399,15,15);
// sponge hole
fill(#FCB421);
ellipse(753,473,40,40);
ellipse(627,134,54,62);
ellipse(571,564,77,73);
ellipse(331,283,50,50);
ellipse(453,524,20,20);
ellipse(382,200,28,31);
}