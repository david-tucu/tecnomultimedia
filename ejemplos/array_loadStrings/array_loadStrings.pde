/*
 este ejemplo muestra como cargar un archivo
 de texto y guardar cada linea en la posicion 
 de un arreglo. Para esto usamos la funcion
 loadStrings();
 */

//variable para mostrar uno a uno:
int actual = 0;

String[] textos;

void setup() {
  size(400, 400);
  textos = loadStrings("data/textos.txt");
}
void draw() {
  background(255);
  fill(200+sin(frameCount*.1)*50, 20, 50);
  textSize(20); //tamaño del texto
  textLeading(24); //interlineado
  //(un truco de animación con frameCount y sin)
  
  textAlign(CENTER, CENTER);
  text(textos[actual], 0, 0, width, height);
  textSize(12);
  text("hacé clic", mouseX, mouseY);
}

void mousePressed() {
  actual++;
  if ( actual>=textos.length) {
    actual=0;
  }
}
