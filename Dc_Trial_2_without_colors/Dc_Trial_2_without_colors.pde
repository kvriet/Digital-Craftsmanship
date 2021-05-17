void setup(){
  size(700,700);
  surface.setLocation(387,20);
  //noLoop();
  mouseX = 10;
}

void draw() {
  background(0);
  
  translate(width/2, height/2);
  
  float rStep = mouseX;
  float rMax = 400;
  
  for(float r=0; r<rMax; r+=rStep){
    
    float c =2*PI*r;
    float cSeg = map(r,0,rMax,rStep* 3/4,rStep/2);
    float angleSeg =floor(c/cSeg);
    float ellipseSize = map(r,0,rMax,rStep * 3/4-1,rStep/4);
    
  for(float a=0; a<360; a+=360/angleSeg){
    pushMatrix();
    rotate(radians(a));
    ellipse(r,0,ellipseSize,ellipseSize);
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
