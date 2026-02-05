float[]xPosition= new float[9];
float[]yPosition= new float[9]; 
boolean[]moleIsUp= new boolean[9];
int score=0;
int timer=0;
void setup(){
  size(600,600);
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
    fill(#AA7346);
    ellipse(xPosition[i],yPosition[i]-20,80,80);
  }
  if(frameCount % 70==0){
    int randomIndex=(int) random(9);
    moleIsUp[randomIndex]=! moleIsUp[randomIndex];
  }
  textSize(20);
  fill(#FFFFFF);
  text(score,20,40);
}
}
void mousePressed(){
  for(int i=0; i<9; i++){
    float d=dist(mouseX,mouseY,xPosition[i],yPosition[i]);
    if(moleIsUp[i] && d<40){
      moleIsUp[i]=false;
      score++;
    }
  }
  timer++;
  if(timer==2100){
    noLoop();
  }
}
