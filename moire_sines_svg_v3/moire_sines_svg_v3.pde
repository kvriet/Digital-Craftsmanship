// Sine moiré patterns - Katrien van Riet - 20 May 2021 - version 3

import processing.svg.*;

float rotation = 0;
int strokeWeight = 3;
boolean mouseClicked = false;

void setup() {
  size(600, 600);
  background(255);
  stroke(0);
  strokeWeight(strokeWeight);
  noFill();
}

void draw() {
  if (mouseClicked) {
    beginRecord(SVG, "MoireSine.svg");
  }
  background(255);
  translate(width/2, height/2);
  sineGrid(0);
  sineGrid(rotation);
  if (mouseClicked) {
    endRecord();
    exit();
  }
  //cheapBlur(); // Poor man's blur --> can be commented out to turn off blur
  //filter(BLUR, 1); // Slows down program quite a bit
  rotation += 0.5;
}

void mousePressed() {
  mouseClicked = true;
}

void sineGrid(float angle) {
  pushMatrix();
  rotate(radians(angle));
  for (int y = 0; y < height/10; y++) {
    sineLine(y*10);
  }
  popMatrix();
}

void sineLine(int yTrans) {
  int amplitude = 10;
  int period = 3;
  pushMatrix();
  translate(-width/2, -height/2);
  translate(0, yTrans); // This translation allows for pushMatrix to be used only once, namely in this loop
  beginShape();
  for (int i = 0; i < width/period; i++) {
    curveVertex(i*period, sin(i)*amplitude);
  }
  endShape();
  popMatrix();
}

void cheapBlur() {
  stroke(0, 75);
  strokeWeight(strokeWeight*1.5);
  sineGrid(0);
  sineGrid(rotation);
  stroke(0);
  strokeWeight(strokeWeight);
}
