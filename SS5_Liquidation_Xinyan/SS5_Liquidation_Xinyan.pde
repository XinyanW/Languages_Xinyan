import processing.video.*;

// Size of each cell in the grid, ratio of window size to video size
int videoScale = 20;
// Number of columns and rows in our system
int cols, rows;
// Variable to hold onto Capture object
Capture video;

void setup() {
  size(1600, 1200);

  // Initialize columns and rows
  cols = width / videoScale;
  rows = height / videoScale;
  video = new Capture(this, 80, 60);
  video.start();
}

void captureEvent(Capture video) {
  // Read image from the camera
  video.read();
}

void draw() {

  video.loadPixels();

  // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {
      pushMatrix();
      // Where are we, pixel-wise?
      int x = i * videoScale;
      int y = j * videoScale;
      translate(x, y);
      float rot = -PI/2. + atan2(mouseX-x, mouseY-y);
      rotate(rot);
      // Looking up the appropriate color in the pixel array
      color c = video.pixels[i + j * video.width];
      fill(c);
      noStroke();
      rect(0, 0, videoScale, videoScale);
      popMatrix();
    }
  }
}