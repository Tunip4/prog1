int spaceshipx;
  int bulletx=-10;
    int bullety=-10;
      boolean bulletFired=false;
        void setup(){
          size(500,500);
            spaceshipx=width/2;}
              void draw(){
                background(0);
                  fill(0,255,0);
                    rect(spaceshipx,height-40,40,20);
                      fill(255,255,255);
                        for(int i=0; i<16; i++){
                          rect(i*30+20,50,11,8);
                            if(bulletFired){
                              fill(0,255,0);
                                rect(bulletx,bullety,5,10);
                                  bullety-=5;
                                    if(bullety<0){
                                      bulletFired=false;}}}}
                                        void keyPressed(){
                                          if(keyCode==LEFT&&spaceshipx>0){
                                            spaceshipx-=10;
                                              }else if(keyCode==RIGHT&&spaceshipx<width-40){
                                                spaceshipx +=10;
                                                  }else if(key==' '){
                                                    if(!bulletFired){
                                                      bulletFired=true;
                                                        bulletx=spaceshipx+20;
                                                          bullety=height-40;}}}

                                                        


                                            
                                              
