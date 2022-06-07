/*
 este ejemplo crea dos array y le guarda valores 
 iniciales en cada posicion. Usa esos valores para
 mostrar circulos en la ventana. Al hacer clic se 
 sobreescriben con valores aleatorios, usando for.
*/

//esta es una forma simplificad de declarar
//el arreglo y al mismo tiempo asignar un 
//valor a cada casilla:
float[] x = {310,  120, 75};
float[] y = {130, 243, 25};

void setup(){
 size(400,400); 
}
void draw(){
  background(255);
  //recorre la cantidad de elementos y toma el valor
  //del arreglo 'x' y el arreglo 'y'
  for (int i = 0; i < 3; i++) {
    //I: 0 1 2
    ellipse(x[i], y[i], 20, 20);
  }
}

void mousePressed(){
  //recorre el arreglo y le asigna valores aleatorios
  //en cada casilla:
  for (int i = 0; i < x.length; i++) {
    x[i] = random(width);
    y[i] = random(height);
  }
}
