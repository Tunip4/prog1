float x,y;
void setup(){
  size(500,500);
  background(0);
}
void mousePressed(){
x=mouseX;
y=mouseY;

}
void draw(){
  ellipse(x,y,100,100);
}
