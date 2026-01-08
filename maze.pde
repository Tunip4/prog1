int playerx=0;
int playery=0;
int goalx=4;
int goaly=5;
boolean gamewon=false;
void setup() {
  size(690,420);
  textSize(12);
}
void draw(){
background(0);
square(0,0,10);
}
void keyPressed(){
  if(key=='w' && playery>0){
  playery--;
}else if(key=='a' && playerx>0){
  playerx--;
}else if(key=='s' && playery<420){
  playery++;
}else if(key=='d' && playerx<690){
  playerx++;
}
if(playerx==goalx &&playery==goaly){
  gamewon=true;}
}
