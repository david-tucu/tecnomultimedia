//info del autor y trabajo.

void setup(){
 size(400,400); 
}
void draw(){
  
  background(200,0,0);
  fill(255,255,0);
  pushStyle(); //para recordar la confirguracion de estilo
  fill(255,100,0,140);
  rectMode(CENTER); //cambia el modo de interpretar los parametros
  rect(width/2,height/2,200,300,20);
  ellipse( 250,200,80,80); 
  ellipse( width/2-50,height/2,80,80);
  popStyle(); //para volver a la config anterior
  ellipse(width/2,height/2,40,40);
}
