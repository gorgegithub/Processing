/*J.Guardia. 07/04/2018
 En este ejemplo se pueden pintar lineas en la pantalla mientras este pulsado
 el boton izquierdo. El boton derecho es la goma de borrar. Y el del centro lo
 borra todo.*/
int x1=430;
int x2=470;
int y1=10;
int y2=40;
int blanco=255;
int negro=0;
boolean a;
color color_linea=negro;
void setup() {
  size(480, 270);
  background(blanco);
}

void draw() {
  fill(255, 0, 0);  
  rect(x1, y1, x2-x1, y2-y1);
  if ((mouseX>=x1)&&(mouseX<=x2)) {
    if ((mouseY>=y1)&&(mouseY<=y2)) {
      //Se ha pulsado dentro del circulo rojo
      color_linea=get(mouseX,mouseY);

    }
    //Con boton derecho pinta circulo blanco
    if (mousePressed && (mouseButton == RIGHT)) {
      fill(blanco);
      noStroke();
      ellipse(mouseX, mouseY, 10, 10);
    }
    //Con boton izquierdo pinta linea negra
    if (mousePressed && (mouseButton == LEFT)) {
      stroke(negro);
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
    //Con boton central lo borra todo
    if (mousePressed && (mouseButton == CENTER)) {
      background(blanco);
    }
  }
