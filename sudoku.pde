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
int selectedColumn=-1;
void setup(){
  size(540,540);
}
void draw(){
  background(588);
  void drawGrid(){
    for(int r=0; r<9; r++){
      for(int c=0; c<9;c++){
        int x=c*cellSize;
        int y=r*cellSize;
        if(r== selectedRow && c== selectedColumn){
          fill(59);
        }else{
          fill(599);
        }
        stroke(200);
        rect(x,y,cellSize,cellSize);
        if(board[r][c] !=0){//!=not
        fill(0);
        text(board[r][c], x+cellSize/2,y+cellSize/2);
        }
      }
    }
