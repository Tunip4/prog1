int[][]board={
{6,0,0,0,0,3,0,1,2},
{6,0,0,0,0,3,0,1,2},
{6,0,0,0,0,3,0,1,2},
{6,0,0,0,0,3,0,1,2},
{6,0,0,0,0,3,0,1,2},
{6,0,0,0,0,3,0,1,2},
{6,0,0,0,0,3,0,1,2},
{6,0,0,0,0,3,0,1,2},
{6,0,0,0,0,3,0,1,2}
};
int cellSize=60;
int selectedRow=-1;
int selectedCol=-1;
void setup(){
  size(540,540);
}
void draw(){
  background(588);
  drawGrid();
}
void drawGrid(){
    for(int r=0; r<9; r++){
      for(int c=0; c<9;c++){
        int x=c*cellSize;
        int y=r*cellSize;
        if(r== selectedRow && c== selectedCol){
          fill(59);
        }else{
          fill(599);
        }
        strokeWeight(3);
        stroke(200);
        for(int i=0;i<=9; i+=3){
          line(i*cellSize,0,i*cellSize,height);
          line(0,i*cellSize,width,i*cellSize);
        }
        rect(x,y,cellSize,cellSize);
        if(board[r][c] !=0){//!=not
        fill(0);
        text(board[r][c], x+cellSize/2,y+cellSize/2);
        }
      }
    }
  }
void mousePressed(){
  selectedCol=mouseX/cellSize;
  selectedRow=mouseY/cellSize;
}
void keyPressed(){
  if(selectedRow !=-1 && key>='1' && key<='9'){
    int val=key-'0';
    if(isSafe(board,selectedRow,selectedCol,val)){
      board[selectedRow][selectedCol]=val;
    }}else if(key==BACKSPACE||key==DELETE){
      board[selectedRow][selectedCol]=0;
    }
}
boolean isSafe(int[][]num,int row,int col,int val){
  for(int x=0; x<9;x++){
    if(num[row][x]==val||num[x][col]==val)return false;
  }
  int startRow=row-(row%3);
  int startCol=col-(col%3);
  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      if(num[i+startRow][i+startCol]==val) return false;
    }
  }
  return true;
}
