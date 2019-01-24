/*J.Guardia. 07/04/2018
 En este ejemplo se pueden pintar lineas en la pantalla mientras este pulsado
 el boton izquierdo. El boton derecho es la goma de borrar. Y el del centro lo
 borra todo.*/

int blanco=255;
int negro=0;
boolean a;
void setup() {
  size(480, 270);
  background(blanco);
}

void draw() {

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
