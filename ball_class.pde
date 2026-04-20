Ball ball;
void setup(){
  size(910,540);
  ball=new Ball(400,200);
}
void draw(){
  background(0);
  ball.display();
  ball.move();
}
class Ball {
    float x,y;
    Ball(float startX,float startY){
        x=startX;
        y=startY;
    }
    void display(){
        ellipse(x,y,20,20);
    }
   
    void move(){
       //while 0<x<910;
      x++;
      y++;
    }
}
