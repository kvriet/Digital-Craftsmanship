
//piece of code to try out classes again, not relevant for the rest of the code
class Lines {
  float x=random(width);
  float y= 0;
  float speed=1;


  void display() {
    stroke(126, 125, 138);
    line(x, y, x, y+10);
  }

  void fall() {
    y=y+speed;
  }
}
