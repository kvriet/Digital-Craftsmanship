
int amplitude = 10;
PShape squiggle;
float angle = 0;

void setup() {
  size(600, 600);
  stroke(255,0,0);
  strokeWeight(3);
  noFill();
  squiggle = createShape();
  squiggle.beginShape();
  for (float i = 0; i < 10; i+= 0.1) {
    squiggle.vertex(amplitude * sin(TWO_PI * i), i*amplitude*TWO_PI);
    println(i);
  }
  squiggle.endShape();
}

void draw() {
  translate(100,100);
  rotate(angle);
  squiggly();
  angle += 0.1;
}

void squiggly() {
  //for (int y = 0; y < 10; y++) {
    for (int x = 0; x < 100; x++) {
      shape(squiggle, x*25, 50);
    }  
  //}
}
