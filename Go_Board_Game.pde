ArrayList<Element> elements = new ArrayList<Element>();
ArrayList<Pieces> pieces = new ArrayList<Pieces>();
boolean down = false;
void setup(){
  size(1000,600);
  textSize(30);
  ellipseMode(CORNER);
   for(int x = 80; x<width -80; x+= 40) {
   for(int y = 80; y < height -80;y+=40) {
     elements.add( new Element(x,y,40));
   }
 }
}
void draw(){
  background(255,255,255);
  for ( Element e: elements) {
      e.draw();
  }
  for (Pieces p: pieces) {
      p.draw();
      if(down){
        p.movedown();
      }
  }
}
void mousePressed(){
  for ( Element e: elements) {
      if(e.isClicked()){ //add up an ifstatement that change who's turn it is
         e.isPlayer1Turn =!e.isPlayer1Turn;
      }
  }
}
void keyPressed(){
  if(key == 'd'){
    down = !down;
  }
}
//Homework: Click an element, add a circle with a different color
