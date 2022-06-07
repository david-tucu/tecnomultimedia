/*
 este ejemplo muestra como cargar guardar las coordendas
 del mouse y motrarlas con elementos en la ventana
 */

int cant = 300;

//dos arreglos 'x' e 'y' para guardar las coordenadas de cada fotograma:
float x[] = new float[cant];
float y[] = new float[cant];

void setup() {
  size(400, 400);
}
void draw() {
  background(0);
  //dibujar todas las posiciones:
  for (int i = 1; i < cant; i++) {
    fill(0);
    //calculo el tamaño de cada punto
    //segun la distancia entre coordenadas:
    float esp ;
    esp = 2 + dist(x[i], y[i], x[i-1], y[i-1]) * 0.5;
    esp = constrain(esp, 2, 40);
    strokeWeight(esp);
    colorMode(HSB);
    float calculoColor = map(i, 0, cant, 0, 255);

    stroke(calculoColor, 255, 255, calculoColor);
    //dibuja una linea entre una casilla y otra:
    line(x[i], y[i], x[i-1], y[i-1]);

    if ( mousePressed ) {
      //modificamos el valor de cada posicion:
      //aleatorio:
      x[i]+=random(-.5, .5);
      y[i]+=random(-.5, .5);

      //desplazamiento por coordenada polar:
      //en este caso para alejar de la coordenada del mouse:
      float ang = atan2( height/2-y[i], width/2-x[i]);
      x[i]-=cos(ang)*1.5;
      y[i]-=sin(ang)*.85;
    }
  }
  //corro todos los valores del arrelgo y agrego la nueva posicion:
  for (int i = 0; i < cant-1; i++) {
    x[i] = x[i+1];
    y[i] = y[i+1];
  }
  x[cant-1] = mouseX;
  y[cant-1] = mouseY;


  //dibujamos una linea de referencia:
  strokeWeight(1);
  stroke(frameCount%255, 255, 255);
  noFill();
  noCursor();
  circle(mouseX, mouseY, 12);
}
