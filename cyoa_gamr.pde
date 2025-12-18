String scene=start;
void setup(){
  size(600,600);
  textSize(12);
  textAlign(CENTER,CENTER);
}
void draw(){
  background(#80FF00);
if(scene.equals("start")){
  drawScene("A Sacabambabspis appears in a flash of light.", "library","cafe");
  //wake up. library or cafe?
}else if(scene.equals("library")){
  drawEnd("you were eaten by a horde of autistic creatures");//put in the tf2 coconut
}else if(scene.equals("cafe")){
  drawEnd("barricaded in cafe. game end");//in cafe
}
}
  
  void drawScene(String story, String option1, String option2){
    fill(0);
    text(story, width/2,300,120);
    rect(150,250,100,50,200);
    
    //button 1
    fill(#4A412A);
    rect(150,250,250,310);
    fill(0);
    text(option1,200,275);
    //button2
    fill(#FF7276);
    rect(350,450,250,310);
    fill(0);
    text(option2,400,275);
    
  void mousePressed(){
    if(scene.equals("library")|| scene.equals("thing___")|| 
    scene="start";
    return;
  boolean clickedLeft=mouseX>150&& mouseX<250 && mouseY> 250 && mouseY<310;
  boolean clickedRight=mouseX>350&&mouseX<450&&mouseY>250&&mouseY<310;
  if(scene.equal("start")){
    if(clickedLeft)scene="library";
    if(clickedRight)scene="cafe";
  }else if(scene.equals("library")){
    if(clickedLeft)scene="death";
    if(clickedRight)Scene="
