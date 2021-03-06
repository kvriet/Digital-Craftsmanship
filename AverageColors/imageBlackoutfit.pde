

class BlackOutfit {

  PImage blackOutfit;
  float averageColor;
  color c;


  void load() {
    blackOutfit = loadImage("black_color_outfit.jpg", "jpg");
  }


  void getColors() {
    int blockSize = 50;
    for (int yblock=0; yblock<=height; yblock+=blockSize) {
      for (int xblock=0; xblock<=width; xblock+=blockSize) {
        for (int y=yblock; y<yblock+blockSize; y++) {
          for (int x=xblock; x<xblock+blockSize; x++) {
            color c = blackOutfit.get(int(x), int(y));
            float red = red(c); 
            float blue = blue(c); 
            float green = green(c);
            averageColor += (red+green+blue)/3;
            //println(averageColor);
          }
        }
        averageColor = averageColor/(blockSize*blockSize);
        println(averageColor);
        fill(averageColor); 
        noStroke();
        rect(xblock, yblock, blockSize, blockSize);
        averageColor = 0;
      }
    }
  }
}
