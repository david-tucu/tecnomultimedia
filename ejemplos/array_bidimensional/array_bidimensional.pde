/*
 este ejemplo muestra como un arreglo
 puede tener en cada casilla otro arreglo.
 */

//una variable para tener la cantidad de elementos:
int cant = 20;

// un array 'x' de 5 casillas, en cada casilla un float:
float x[] = new float[cant]; 
// un array 'y' de 5 casillas, en cada casilla un float:
float y[] = new float[cant]; 

// un array 'c' de 5 casillas, en cada casilla un
// tiene un array de 3 casillas:
float c[][] = new float[cant][3];

void setup() {
  size(400, 400);
  for (int i = 0; i < cant; i++) {
    x[i] = random(width);
    y[i] = random(height);
    //en cada posicion de c apuntamos a cada
    //posicion del arreglo de la segunda dimension:
    c[i][0] = random(255);
    c[i][1] = random(255);
    c[i][2] = random(255);
    //(casi casi convendría usar un for, cierto?)
  }
}
void draw() {
  background(255);
  text("hacé clic", mouseX,mouseY);
  //recorre la cantidad de elementos y toma el valor
  //del arreglo 'x' y el arreglo 'y'
  for (int i = 0; i < cant; i++) {
    fill(c[i][0], c[i][1], c[i][2]);
    ellipse(x[i], y[i], 20, 20);
  }
}

void mousePressed() {
  //recorre el arreglo y le asigna valores aleatorios
  //en cada casilla:
  for (int i = 0; i < cant; i++) {
    x[i] = random(width);
    y[i] = random(height);
    //en cada posicion de c apuntamos a cada
    //posicion del arreglo de la segunda dimension:
    c[i][0] = random(255);
    c[i][1] = random(255);
    c[i][2] = random(255);
    //(casi casi convendría usar un for, cierto?)
  }
}
