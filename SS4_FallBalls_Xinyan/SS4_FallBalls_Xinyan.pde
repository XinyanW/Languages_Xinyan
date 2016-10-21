FallBall[] balls = new FallBall[500];

void setup() {
  size(500, 500);
  colorMode(HSB);
  for (int i = 0;i<balls.length;i=i+1) {
    balls[i] = new FallBall(random(width), random(height), 3);
  }
}

void draw() {
  background(0);
  for (int i = 0;i<balls.length;i=i+1) {
    balls[i].render();
    balls[i].fall();
    balls[i].constrainRange();
  }
}

class FallBall {
  float x;
  float y;
  float yOff;

  FallBall(float x, float y, float yOff) {
    this.x = x;
    this.y = y;
    this.yOff = yOff;
  }

  void render() {
    fill(random(50,200),200,200,90);
    noStroke();
    ellipse(x, y, 5, 5);
  }

  void fall() {
    y = y+yOff;
  }

  void constrainRange() {
    if (y>height+50) {
      y=-100;
    }
  }
}