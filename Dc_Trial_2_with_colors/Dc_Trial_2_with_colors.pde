int colorArrayCounter;
color[] colorArray = {
  color(25,165,190),
  color(95,170,200),
  color(120,170,200),
  color(170,210 ,230),
  color(105,225 ,245),
  color(220,240,250)
};
  
void setup(){
  fullScreen();
  //size(700,700);
  //surface.setLocation(387,20);
  //noLoop();
  noStroke();
  mouseX = 10;
  frameRate(10);
}

void draw() {
  background(0);
  
  translate(width/2, height/2);
  
  float rStep = 30;
  float rMax = 1920;
  float rMin = mouseX;
  
  for(float r=rMin; r<rMax; r+=rStep){
    
    float c =2*PI*r;
    float cSeg = map(r,0,rMax,rStep* 3/4,rStep/2);
    float angleSeg =floor(c/cSeg);
    float ellipseSize = map(r,0,rMax,rStep * 3/4-1,rStep/4);
    
  for(float a=0; a<360; a+=360/angleSeg){
    //fill(random(255),random(255),random(255)); 
    colorArrayCounter++;
    if(colorArrayCounter>5) colorArrayCounter = 0;
    fill(colorArray[colorArrayCounter]);
    //fill(colorArray[int(random(6))]);
    
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
