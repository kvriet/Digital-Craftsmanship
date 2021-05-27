

class BlackOutfit {

  PImage blackOutfit;
  PImage orangeOutfit;

  float x1;  
  float y1;
  int ellWidth;
  float averageColor;
  color c;


  void load() {
    blackOutfit = loadImage("black_color_outfit.jpg", "jpg");
    orangeOutfit = loadImage("bright_color_outfit.jpg", "jpg");
  }


  void displayImage() {
    loadPixels();
    blackOutfit.loadPixels();

    for (int xpic = 0; xpic<width; xpic++) {
      for (int ypic= 0; ypic< height; ypic++) {
        int loc = xpic+ypic*width;
        float red = red(blackOutfit.pixels[loc]);
        float green = green(blackOutfit.pixels[loc]);
        float blue = blue(blackOutfit.pixels[loc]);
        pixels[loc] = color(random(green), random(blue), random(red));
      }
    }

    updatePixels();
  }

  void getColors() {
    x1 = random(width);
    y1 = random(height);


    color c = blackOutfit.get(int(x1), int(y1));


    float red = red(c);
    float blue = blue(c);
    float green = green(c);
    fill(red, green, blue);
    noStroke();
    averageColor = (red+green+blue)/3;
    if (averageColor<150) {
      ellWidth = 30;
    } else 
    ellWidth = 60;
    ellipse(x1, y1, ellWidth, ellWidth);
    }
  
    
}
