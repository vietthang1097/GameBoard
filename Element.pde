class Element{
  float x;
  float y;
  float s;
  float r;
  float g;
  float b;
  boolean mousepressed;
  boolean isPlayer1Turn;
  boolean isPlayer2Turn;
  Element(float xx, float yy, float ss){
    x = xx;
    y = yy;
    s = ss;
    isPlayer1Turn = true;
  }
  void draw(){
       fill(255,255,255);
       square(x,y,s);
       // if(mousepressed){
       // fill(r,g,b);
       // circle(x,y,s);
       //}
    }
  boolean isClicked(){
      if(mouseX >=x && mouseX <=x+s && mouseY <= y+s && mouseY >=y){
          mousepressed = true;
          if(isPlayer1Turn){
            pieces.add (new Pieces (x,y,true));
            //r = 255;
            //g = 255;
            //b = 255;
            println("Player1Turn");
            return true;
          }
          if(!isPlayer1Turn){
            pieces.add (new Pieces (x,y,false));
            //r = 1;
            //g = 1;
            //b = 1;
            println("Player2Turn");
            return true;
          }
      }
      return false;
  }
}
