
int vx=100;
int posx;
boolean rebote=false;
public void setup() {
  size(640, 360);
  background(0);   
  posx=width/2;
  fill(255);
  rect(posx, height/2, 10, 10);
}

public void draw() {
  delay(vx);

  if ((posx>=width) || (posx<=0)){
    rebote=!rebote;
    
  }
  if (rebote==false){
    posx=posx+10;
  }
  if (rebote==true){
    posx=posx-10;
  }
  background(0);      
  rect(posx, height/2, 10, 10);
  println(posx);
}
