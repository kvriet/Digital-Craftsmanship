curvedLines cl1, cl2;
float rotation=0;
int hue = 0;
int xmovement=0;
boolean direction = true;

void setup() {
  size(500, 500);
  background(150);
  colorMode(HSB, 100);
  cl1 = new curvedLines(100, 300, 300, 100, 10, 6, 0.4);      //xpos,height,width,ypos,distance,amplitude,frequency
  cl2 = new curvedLines(100, 300, 300, 100, 10, 6, 0.4);
  //noLoop();
}

void draw() {
  fill(100-hue);
  stroke(255);
  rect(0, 0, width, height);
  stroke(0);

  cl1.display();
  noLoop();
}



class curvedLines
{
  float xpos; // rect xposition
  float h; // rect height
  float w; // rect width
  float ypos ; // rect yposition
  float d; // single bar distance
  float a; // amplitude of wave
  float fr; // frequency of wave

  boolean goingDown = true;

  curvedLines(float ixp, float ih, float iw, float iyp, float id, float ia, float ifr) {
    xpos = ixp;
    h = ih;
    w = iw;
    ypos = iyp;
    d = id;
    a = ia;
    fr = ifr;
  }

  void rotateline (float r) {

    pushMatrix();
    translate(width/2, height/2);
    rotate(r);
    curvy();
    popMatrix();
  }

  void move (float movex, float movey) {
    pushMatrix();
    translate(movex, movey);
    curvy();
    popMatrix();
  }


  void curvy() {
    strokeWeight(2);
    for (float i=xpos; i<=w+xpos; i+= d) {
      pushMatrix();
      translate(-xpos -w/2 + i, -ypos - h/2);
      beginShape();
      vertex(0 + fr*sin(ypos/a), ypos);
      vertex(0 + fr*sin(ypos/a), ypos);
      for (float j=ypos; j<h+ypos; j+=0.1) {
        vertex(0 + a*sin(j*fr), j);
        a+=0.0001;
      }
      vertex(0 + fr*sin(h/a), ypos + h);
      vertex(0 + fr*sin(h/a), ypos + h);
      endShape();
      popMatrix();
    }
  }

  void display() {
    pushMatrix();
    translate(xpos +w/2, ypos + h/2);
    curvy();
    popMatrix();
  }
}
