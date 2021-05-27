//Trying to code the smocking patterns

void setup() {
  size(1000, 500);
}

void draw() {
  ////braid pattern
  //for (int i = 0; i<width; i+= 300) {
  //  for (int n = 0; n<height/100; n++) {
  //    stripe1(i, 100+n*200);
  //    stripe2(i + 100, n*200);
  //  }
  //}
  //zigzag
  for (int i = 0; i<width; i+= 400) {
    for (int n = 0; n<height/100; n++) {
      stripe1(i, n*200);
      stripe2(i + 200, n*200);
    }
  }
}


void stripe1(int x1, int y1) {
  line(x1, y1, x1+100, y1 +100);
}

void stripe2(int x1, int y1) {
  line(x1+100, y1, x1, y1 +100);
}
