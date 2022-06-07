int cant = 10;
float[] valores;
int indiceActual = 0;
float valorObjetivo;
float dir = 2;
int totalDiferencias = 255*cant;

void setup() {
  size(400, 400);
  frameRate(60);

  //creamos las casillas del arreglo:
  valores = new float[cant];
  //recorremos el arreglo y le asignamos valores aleatorios
  //entre 0 y 255 en cada casilla
  for (int i = 0; i < cant; i++) {
    valores[i] = random(255);
  }

  //asignamos un valor objetivo al azar
  valorObjetivo = random(255);

  //cambiamos colorMode para poder recorrer
  //el espectro cromático cambiando solo el tono
  colorMode(HSB);
}

void draw() {

  //pintamos el fondo tomando 
  //el valor objetivo
  background(valorObjetivo, 255, 255);

  //con el ciclo for recorremos los valores
  //del arreglo para mostrar cada uno como un color:


  //calculamos el ancho de elemento, esto es
  //el ancho de la ventana divido la cantidad:
  float modX = (float) width/cant;

  for ( int i=0; i<cant; i++ ) {
    /*
    En cada vuelta del for, las propiedades de
     lo que vamos a dibujar pueden ser resultado de:
     - un valor calculado de i
     - un valor constante
     - un valor guardado en el arreglo
     */

    //para el fill tomamos el valor numerico 
    //guardado en cada posición del arreglo
    //(tomamos uno en cada vuelta del for)
    fill( valores[i], 255, 255 );

    //la posicion en X es un valor "calculado" tomando
    //el valor de i en cada vuelta del for
    //la posicion en y es el medio de la ventana:
    noStroke();
    circle(i*modX+modX/2, height/2, modX);

    //muestro una referencia del valor
    stroke(255);
    float yLinea = map(valores[i], 0, 255, 150, 250);
    rect(i*modX, yLinea, modX, 0);

    //descomentar para ver con rotate:
    /*
    push();
     stroke(255);
     translate(i*modX+modX/2,height/2);
     rotate(map(valores[i],0,255,0,TWO_PI));
     line(0,0,modX/2,0);
     pop();
     */
  }

  //cambia el valor del indice actual:
  valores[indiceActual]+=dir;
  if ( valores[indiceActual]>255 || valores[indiceActual]<0) {
    dir = -dir;
  }




  //dibujamos info del juego y el calculo de puntaje:
  fill(255);
  textSize(24);
  textAlign(CENTER, CENTER);
  text("El Juego del Camaleón", width/2, height*.25);


  //mostramos el total de diferencia:
  text( "Diferencia Total: " + totalDiferencias, width/2, height*.7);

  //indicaciones del juego:
  textSize(18);
  text("Intentá lograr el color\ndel fondo en cada punto", width/2, height*.85);
}


void mousePressed() {

  indiceActual++;
  if ( indiceActual>=cant ) {
    indiceActual=0;
  }

  //recorremos el arreglo del arreglo
  //para sumar las diferencias entre 
  //cada posicion del array y el valor objetivo:

  //pongo en 0 el total de diferencia:
  totalDiferencias = 0;

  //recorro el array y sumo la diferencia al total:
  for ( int i=0; i<cant; i++ ) {
    totalDiferencias += abs(valores[i]-valorObjetivo);
  }

  //podemos evaluar si gana o pierde...
  if ( totalDiferencias<=cant*5) {
    //en este caso, a los fines de este ejemplo,
    //detenemos la aplicación:
    noLoop();
    //pero podríamos hacer un cambio de estado
    //para pasar a una siguiente pantalla
  }
}
