// Original code by Alexander Miller (sine and cosine functions for line input) 
// Adapted by Katrien van Riet (toggle mode, opacity, colour spectrum, endpoint points)

int numLines = 100;
float t = 0;
int colourMult = 100 / numLines;
boolean isDrawToggled = false;

void setup() {
  background(20);
  size(500, 500);
}

void draw() {
  if (!isDrawToggled) {
    background(20);
    strokeWeight(2);
    translate(width/2, height/2);

    for (int i = 0; i < numLines; i++) {
      float x1 = x1(t + i);
      float y1 = y1(t + i);
      float x2 = x2(t + i);
      float y2 = y2(t + i);
      stroke(255, 255-i*colourMult, 255-i*colourMult, 128);
      line(x1, y1, x2, y2);
      //circle(x1, y1, 1);
      circle(x2, y2, 1);
    }
    t += 0.1;
  }
}

void mousePressed() {
  isDrawToggled = !isDrawToggled;
}

float x1(float t) {
  return sin(t / 10) * 100 + sin(t / 5) * 20;
}

float y1(float t) {
  return cos(t / 10) * 100;
}

float x2(float t) {
  return sin(t / 10) * 200 + sin(t) * 2;
}

float y2(float t) {
  return cos(t / 20) * 200 + cos(t / 12) * 20;
}
