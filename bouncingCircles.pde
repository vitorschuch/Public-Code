// this is the diameter of the circle named Bob
int extentBob = 150;
float radiusBob = extentBob / 2;
// this is true or false when the movement direction of the circle named Bobis positive or negative respectively
boolean positiveXBob = true;
boolean positiveYBob = false;
// this is the original position of the circle named Bob
float positionXBob = 100;
float positionYBob = 100;

void setup() {
  size(500, 600);
}

void draw() {
  background(200);
  
  // defining the circle named Bob
  stroke(0);
  strokeWeight(4);
  fill(positionXBob, positionYBob, 250);
  circle(positionXBob, positionYBob, extentBob);
  
  // instructions to make the circle bounce off the left and right walls of the canvas
  if (positiveXBob == true) {
    positionXBob = positionXBob + 2.5;
      if ((positionXBob + radiusBob) > width) {
        positiveXBob = false;
    }
  }
  if (positiveXBob == false) {
    positionXBob = positionXBob - 5;
      if ((positionXBob - radiusBob) < 0) {
        positiveXBob = true;
    }
  }
  
  // instructions to make the circle bounce off the top and bottom of the canvas
  if (positiveYBob == true) {
    positionYBob = positionYBob + 5;
      if ((positionYBob + radiusBob) > height) {
        positiveYBob = false;
    }
  }
  if (positiveYBob == false) {
    positionYBob = positionYBob - 2.5;
      if ((positionYBob - radiusBob) < 0) {
        positiveYBob = true;
    }
  }
  
  
  
  
  
  
