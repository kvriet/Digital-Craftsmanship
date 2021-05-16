void setup(){
  size(700,700);
  surface.setLocation(387,20);
  noLoop();
}

void draw() {
  background(0);
  translate(width/2, height/2);
  float rStep =10;
  
  for(float r=0; r<400; r+=30){
    
    float c =2*PI*r;
    float angleSeg =floor(c/rStep);
    
  for(float a=0; a<360; a+=360/angleSeg){
    pushMatrix();
    rotate(radians(a));
    ellipse(r,0,rStep,rStep);
    popMatrix();
    }
  }
}

void keyPressed(){
if (key==' ') {
  background(0);
  redraw();
  }
}
