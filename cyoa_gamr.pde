String scene="start";
void setup(){
  size(600,600);
  textSize(12);
  textAlign(CENTER,CENTER);
}
void draw(){
  background(#80FF00);
if(scene.equals("start")){
  drawScene("A Sacabambabspis appears.", "library","cafe");
  //wake up. library or cafe?
}else if(scene.equals("library")){
  drawEnd("you were eaten by a horde of autistic creatures");//put in the tf2 coconut
}else if(scene.equals("cafe")){
  drawEnd("barricaded in cafe. game end");//in cafe
}
}
  
  void drawScene(String story, String option1, String option2){
    fill(0);
    text(story, width/2,200,120);
    //rect(150,250,100,50,200);
    
    //button 1
    fill(#4A412A);
    rect(150,250,100,60);
    fill(0);
    text(option1,200,275);
    //button2
    fill(#FF7276);
    rect(350,250,100,60);
    fill(0);
    text(option2,400,275);
  }
  
  void drawEnd(String story){
    fill(0);
    text(story,width/2,height/2);
    text("You Died",width/2,height/2+60);
  }
  void mousePressed(){
    if(scene.equals("library")|| scene.equals("cafe")){
    scene="start";
    return;
    }
  boolean clickedLeft=mouseX>150&& mouseX<250 && mouseY> 250 && mouseY<310;
  boolean clickedRight=mouseX>350&&mouseX<450&&mouseY>250&&mouseY<310;
  if(scene.equals("start")){
    if(clickedLeft)scene="library";
    if(clickedRight)scene="cafe";
  }else if(scene.equals("library")){
    if(mousePressed)scene="death";
  }else if(scene.equals("cafe")){
      if(mousePressed)scene="death";
    }
  }
