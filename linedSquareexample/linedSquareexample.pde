curvedLines cl1, cl2;
float rotation=0;
int hue = 0;
int xmovement=0;
boolean direction = true;

void setup() {
  size(500, 500);
  background(150);
  colorMode(HSB, 100);
  cl1 = new curvedLines(100, 300, 300, 100, 10, 2, 5);
  cl2 = new curvedLines(100, 300, 300, 100, 10, 2, 5);
  //noLoop();
}

void draw() {
  fill(100-hue);
  rect(0, 0, width, height);

  stroke(hue, 100, 100);

  cl1.display();
  cl2.rotateline(rotation);
  //cl2.move(xmovement,0);
  rotation+=0.01;
  xmovement+=1;

  //hue++;
  //if(hue >= 100) hue =0;
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
    translate(-w/2, -h/2); 
    rotate(r);
    translate(w/2, h/2);
    display();

    popMatrix();
  }

  void move (float movex, float movey) {
    pushMatrix();
    translate(movex, movey);
    display();
    popMatrix();
  }

  void display() {
    for (float i=xpos; i<=w+xpos; i+= d) {
      for (float j=ypos; j<h+ypos; j+=0.6) {
        circle(i + fr*sin(j/a), j, 1);
      }
    }
  }
}
