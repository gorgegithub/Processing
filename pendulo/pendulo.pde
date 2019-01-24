void setup() {
  size(400, 400);
}
void draw(){
 background(255);
 stroke(0); 
 strokeWeight(10);
 line(width/2,0,mouseX, mouseY);
 fill(0);
 ellipse(mouseX, mouseY,40,40);
 
}
