float xpos, ypos, strokeW, pointCount;
void setup() {
  size(1000, 1000);
  background(random(100, 255));
  xpos = random(width);
  ypos = random(height);
}

void draw() {
  strokeW = random(1, 10);
  pointCount = random(1, 20);
  float c = random(100);
  stroke(random(255), random(255), random(255));
  strokeWeight(strokeW);
  if(xpos>width || xpos<0 || ypos>height || ypos<0) {
    xpos = random(width);
    ypos = random(height);
  } else {
    if(c>75) {
      moveLeft(xpos, ypos, pointCount);
    } else if(c>50) {
      moveUp(xpos, ypos, pointCount);
    } else if(c>25) {
      moveDown(xpos, ypos, pointCount);
    } else {
      moveRight(xpos, ypos, pointCount);
    }
  }
}

void moveRight(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY);
    xpos = startX + i;
    ypos = startY;
  }
}

void moveLeft(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY);
    xpos = startX - i;
    ypos = startY;
  }
}

void moveUp(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY);
    xpos = startX;
    ypos = startY - i;
  }
}

void moveDown(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY);
    xpos = startX;
    ypos = startY + i;
  }
}
