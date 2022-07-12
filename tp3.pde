// jon martino saravi
// legajo: 91595/3
//https://youtu.be/2nvjLmTqKhE


import ddf.minim.*;                               //lo ultimo que hice fue ponerle musica al juego
Minim musica;
AudioPlayer play;


int estado = 0;                                   //para la logica de estados

PImage instrucciones;                             //imagenes de fondos,enemigos,personaje y magias
PImage juego;
PImage globo;
PImage personaje;
PImage inicio;
PImage confeti;
PImage ganar;
PImage perder;

int x = 200;                                      //coordenada x del personaje declarada y asignada
int y = 50;                                       //coordenada y del personaje declarada y asignada
int x1 = 200;                                     //declaro y asigno la coordenada x1 de la meta
int y1 = 350;                                     //declaro y asigno la cordenada y de la meta
int radio = 30;                                   //declaro y asigno el radio de la meta




int tiempo = 0;                                   //para que empieccen a caer los globos
int cant = 5;                                     //cantidad de casillas del arreglo
int contador = 400;                               //esta variable es para la caida de los globos

int win = 400;                                    //esta variable es para el confeti


float[] x3 = {66,133,200,266,333};
float[] y3 = new float [cant];

void setup(){
size(400,400);
musica = new Minim(this);
play = musica.loadFile("musica.wav"); 
play.play();                                      //aqui empieza a sonar la musica
ellipseMode(RADIUS);                              //cambio el modo de dibujo 
inicio=loadImage("inicio.jpg");
personaje=loadImage("personaje.png");
instrucciones=loadImage("instrucciones.jpg");
juego=loadImage("juego.jpg");
globo=loadImage("globo.png");
ganar=loadImage("ganar.jpg");
perder=loadImage("perder.jpg");
confeti=loadImage("confeti.png");
}


void draw(){
background(255,0,0);

  if (estado==0){
    image(inicio,0,0,400,400);
 
 }if (estado==1){
    image(instrucciones,0,0,400,400);
 
 }if (estado==2){
    image(juego,0,0,400,400);
    juego();
    
 }if (estado==3){    
    image(ganar,0,0,400,400);
    confeti();
    
  }if (estado==4){
    image(perder,0,0,400,400);
 }
}

void mousePressed(){  
  
  if(estado==0){                                  //de la pantalla de inicio a la pantalla de instrucciones
    estado=1;                                  
  
 }else if(estado==1){                             //de la pantalla de instruciones a la pantalla de juego
    estado=2;
 
 }else if(estado==3){                             //de la pantalla de ganar a la pantalla de juego                        
    x=200;                                        //reseteo la posicion del jugador volver a la partida, aqui ya me siento diosa de la programacion
    y=50;                         
    win=400;                                      //cargo de nuevo el confeti XD
    contador = 400;     
    estado=2;

 }else if (estado==4){                            //de la pantalla de perder a la pantalla de juego
   x=200;                                         //basicamente lo mismo de arriba
   y=50;  
  contador = 400; 
   win=400;                                          
   estado=2;                                          
 }                                                     
}                                                          
                                                          
void keyPressed() {                              //al final puse esta funcion a la barra espaciadora para volver al juego sin tener que sacar la mmano de las flechas, queda mas coodo para jugar pero no esta explicado en las instrucciones, servira para quien pruebe a toquetear el teclado

if(estado==4){
  if (key==' '){
    x=200;                                         
    y=50;
    contador = 400; 
    win=400; 
    estado=2;
  }  
 }
 
 if(estado==3){
  if (key==' '){
    x=200;                                         
    y=50; 
    contador = 400; 
    win=400; 
    estado=2;
  }  
 }
}
