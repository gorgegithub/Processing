/*J.Guardia. 07/04/2018
 En este ejemplo se pueden pintar lineas en la pantalla
 Si se pulsa el boton central deja de pintar.
 El boton derecho lo borra todo.*/


int blanco=255;
int negro=0;
boolean a;
void setup() {
  size(480, 270);
  background(negro);
}

void draw() {

  // a es verdadero si esta pulado el boton central.
  a=(mousePressed && (mouseButton == CENTER));
  //Si no esta pulsado
  if (!a) {
    //Pîntamos linea negra
    stroke(negro);
    line(pmouseX, pmouseY, mouseX, mouseY);
    //Si se pulsa el derecho lo borra todo
    if (mousePressed && (mouseButton == RIGHT)) {
      background(blanco);
    }
  }
}
