//Trying to code the smocking patterns

int linelength = 10;
int s = 0;
boolean direction = true;

void setup() {
  size(1000, 500);  
  noLoop();
}

void draw() {
  ////braid pattern
  //for (int i = 0; i<width; i+= 3*linelength) {
  //  for (int n = 0; n<height/linelength; n++) {
  //    stripe1(i, linelength+n*2*linelength);
  //    stripe2(i + linelength, n*2*linelength);
  //  }
  //}
  ////zigzag
  //for (int i = 0; i<width; i+= 4*linelength) {
  //  for (int n = 0; n<height/linelength; n++) {
  //    stripe1(i, n*2*linelength);
  //    stripe2(i + 2*linelength, n*2*linelength);
  //  }
  //}

  //mixing
  for (int i = 0; i<width; i+= 4*linelength) {
    for (int n = 0; n<height/linelength; n++) {
      stripe1(i, linelength - s +n*2*linelength);
      stripe2(i + linelength + s, n*2*linelength);
    }
    if (direction) s++;
    else if (!direction) s--;
    if (s >= 10) direction = false;
    else if (s <= 0) direction = true;
    println(s);
  }
}


void stripe1(int x1, int y1) {
  line(x1, y1, x1+linelength, y1 +linelength);
}

void stripe2(int x1, int y1) {
  line(x1+linelength, y1, x1, y1 +linelength);
}
