/*
 este ejemplo muestra como cargar guardar las coordendas
 del mouse y motrarlas con elementos en la ventana
 */

//variable global para apuntar a una casilla por cada fotograma:
int actual = 0;
int cant = 100;

//dos arreglos 'x' e 'y' para guardar las coordenadas de cada fotograma:
float x[] = new float[cant];
float y[] = new float[cant];

void setup() {
  size(400, 400);
}
void draw() {
  background(255);
  //dibujar todas las posiciones:
  for (int i = 0; i < cant; i++) {
    fill(0);
    ellipse(x[i], y[i], 10, 10);
  }
  //avanzo mi variable para apuntar a la siguiente casilla:
  actual++;
  //si llegamos al final, volver al principio:
  if (actual >= cant) {
    actual = 0;
  }
  //guardar las coordenadas del mouse:
  x[actual] = mouseX;
  y[actual] = mouseY;

  
}
