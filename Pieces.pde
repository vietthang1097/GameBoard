class Pieces {
  float x;
  float y;
  boolean player1;
  float r;
  boolean selected;
    Pieces(float xx, float yy, boolean player11){
      x = xx;
      y = yy;
      player1 = player11;
      r = 20;
      selected = false;
    }
    void draw(){
      if(player1){
        fill(1,255,1);
      }
      else {
        fill(255,1,1);
      }
      circle(x,y,2*r);
    }
    void move(float xx, float yy){
      x = xx;
      y = yy;
    }
    void movedown(){
      y = y + 1;
    }
    boolean isClicked(){
      if(dist(mouseX,mouseY,x,y)<=r){
        selected = true;
        return true;
      }
      return false;
    }
}
