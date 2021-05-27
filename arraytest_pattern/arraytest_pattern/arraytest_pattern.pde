
//https://www.youtube.com/watch?v=j-ZLDEnhT3Q
//https://www.youtube.com/watch?v=NbX3RnlAyGU
//

//Lines[] line = new Lines[100];

import processing.pdf.*;
BlackOutfit black;

boolean record;
PImage blackOutfit;

void setup() {
    beginRecord(PDF, "frame-image2.pdf"); 

  size(600, 373);
  background(0);
  black = new BlackOutfit();
 // beginRecord(PDF, "frame-image.pdf"); 
}


void draw() {
//background(0);
  black.load();

  //black.displayImage();
  //black.getColors();
  black.getColors();
  
  
  if (record) {
    endRecord();
  record = false;
  }
}

void mousePressed() {
  record = true;
}
