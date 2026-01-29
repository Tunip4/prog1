float[]xPosition= new float[9];
float[]yPosition= new float[9]; 
boolean[]moleIsUp= new boolean[9];
int score=0;
int timer=0;
void setup(){
  size(300,300);
  int index=0;
for(int row=0; row<3; row++){
  for(int col=0; col<3; col++){
    xPosition[index]=100+col*200;
    yPosition[index]=100+row*200;
    moleIsUp[index]=false;
    index++;
  }
}
}
void draw(){
background(0);
for(int i=0;i<9;i++){
  fill(#793E06);
  ellipse(xPosition[i],yPosition[i],120,80);
  if(moleIsUp[i]){
    fill(3);
    ellipse(xPosition[i],yPosition[i]-20,80,80);
}
}
}
