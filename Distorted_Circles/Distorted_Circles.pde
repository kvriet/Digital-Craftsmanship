void setup() {
  size(500, 500);
}

void draw() {
  stroke(0);
  strokeWeight(1);


  for (int i = 0; i<360; i++) {
    pushMatrix();
    beginShape();
    translate(width/2, height/2);
    rotate(radians(i));
    vertex(100+noise(0, 10), 100+noise(0, 10));
    endShape();
    popMatrix();
  }
}
