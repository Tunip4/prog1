int playerx=0;
int playery=0;
int goalx=320;
int goaly=320;
boolean gamewon=false;
void setup() {
  size(400,400);
  textSize(12);
}
void draw(){
background(0);
for(int i=0;i<5; i++){
for(int k=0; k<5; k++){
    stroke(0);
    fill(255,255,255);
    rect(i*80,k*80,80,80);
  }
}
fill(80);
square(playerx,playery,80);
fill(200);
square(goalx,goaly,80);
if(gamewon==true){
  textSize(50);
    text("victory",200,200);
    noLoop();
}
}
void keyPressed(){
  if(key=='w' && playery>0){
  playery-=80;
}else if(key=='a' && playerx>0){
  playerx-=80;
}else if(key=='s' && playery<320){
  playery+=80;
}else if(key=='d' && playerx<320){
  playerx+=80;
}
if(playerx==goalx &&playery==goaly){
  gamewon=true;}
}
