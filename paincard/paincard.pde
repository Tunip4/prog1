PImage character;
PImage x;
PImage y;
PFont title;
String name = "Pain";
void setup(){
  size(250,300);
  background(#120A8F);
  character=loadImage("Morphine2DCSDS.png");
  x=loadImage("a.jpg");
  y=loadImage("Fentanyl-xtal-3D-balls.png");
  title=createFont("UnifrakturMaguntia-Regular.ttf",20);
}
void draw(){
textFont(title);
  textSize(50);
  text("Opium",10,40);
  image(character,10,50,200,200);
  image(x,30,29,40,40);
  image(y,150,50,50,50);
  textSize(20);
  text("Sedate",150,250);
  text("deal 10 damage, paralyse", 150,275);
  text("overdose",50,250);
  text("kill all creatures on field",20,275);
}
