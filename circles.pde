float rot = 0;
void setup(){
size(800, 800);
smooth();

}
void draw(){
  background(0);
  
  int centerx = width/2;
  int centery = width/2;
  translate(centerx,centery);
  rotate(radians(rot));
  for(int i=1;i<=40;i++){
    int radius = i*10;
    float angle = 360/(i*4);
    float tmp = 0;
    while(tmp<=360){ //<>//
      int pointx =  int(radius * sin(radians(tmp)));
      int pointy =  int(radius * cos(radians(tmp)));
      stroke(255);
      circle(pointx, pointy, 4); //<>//
      tmp = tmp+angle;
  }
  println();
  }
  rot +=0.5;
}
