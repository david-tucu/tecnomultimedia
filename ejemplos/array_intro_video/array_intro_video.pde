/*

 Tecnología Multimedial 1 - FdA
 (David Bedoian)
 
 Arreglos
 
 este ejemplo muestra como cargar un archivo
 de texto y guardar cada linea en la posicion 
 de un arreglo. Para esto usamos la funcion
 loadStrings();
 */

//variable para mostrar uno a uno:
int actual = 0;
String textos[];

//para la estela de colores:
int cant = 200;
//dos arreglos 'x' e 'y' para guardar las coordenadas de cada fotograma:
float x[] = new float[cant];
float y[] = new float[cant];

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



  //dibujar todas las posiciones:
  for (int i = 1; i < cant; i++) {
    fill(0);
    //calculo el tamaño de cada punto
    //segun la distancia entre coordenadas:
    float esp ;
    esp = dist(x[i], y[i], x[i-1], y[i-1])*0.8;
    esp = constrain(esp, 0, 40);
    strokeWeight(esp);
    colorMode(HSB);
    float calculoColor = map(i, 0, cant, 0, 255);

    stroke(calculoColor, 255, 255, calculoColor);
    //dibuja una linea entre una casilla y otra:
    line(x[i], y[i], x[i-1], y[i-1]);

    if (mousePressed) {
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

void mousePressed() {
  actual++;
  if ( actual>=textos.length) {
    actual=0;
  }
}
