


//Lines[] line = new Lines[100];


BlackOutfit black;


PImage blackOutfit;

void setup() {
  size(600, 373);
  background(0);
  black = new BlackOutfit();
}


void draw() {
  
  black.load();

  //black.displayImage();
  black.getColors();
}
