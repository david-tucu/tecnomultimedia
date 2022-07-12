boolean lose = false;                           //este boton reposiciona a los enemigos y al personaje por colision



void juego(){
  
  limites();                                    //invoco la funcion delimites
  controles();
  
  tiempo++;                                     //para que los globos tarden un momento en empezar a caer

  float d = dist(x,y,x1,y1);                    //declaro y asigno la variable flotante d, sirve para hcer funcionar la meta cuando bolita llegue
 
  //ellipse(x1,y1,radio,radio);                 //prefiero que no se vea el circulo para que se vea el diseño de la imagen
  //noStroke();
  //fill(255,0,0);
  //ellipse(x,y,25,25);                          //bolita, con las coordenadas x e y //este circulo ya no me sirve, lo hice construyendo los botones pero ahora lo cambio por el avatar del personaje que es una imagen 

  image(personaje,x-25,y-25,50,50);                   //esta imagen fue antiguamente un circulo
  
  if (d<radio){                                  //cuando se entra en la meta se cambia de estado para ir a la pantalla ganar
    estado=3;
  /*   
   fill(0,255,0);                                //esto antes hacia las veces de pantalla de victoria
   rect(0,0,400,400);
   fill(255);
   textSize(100);
   text("YOU",99,170);
   text("WIN",101,285);
   }else{
   fill(0);
  */
}
   
   //println("jugando");                         //esto era para ver si las cosas avanzaban y paraban con los cambios de estado

  if (tiempo>30 &&(d>radio)){          
    for (int i = 0; i < cant; i++) {             //generacion de globos, primero en un sitio especifico luego aleatoriamente 
    float k = dist(x,y,x3[i],y3[i]);             //distancia entre el personaje y el enemigo
    y3[i] = contador;                            //la variable contador es clave para que los globos se muevan //tarde muchisimo en descubrir que si escribiaa esto aantes de la imagen desaparecia un parpadeo que duraba un fps cada 400, el ciclo for me estaba tirando las casillas de y3 con el valor por defecto 0
    image(globo,x3[i]-20,y3[i]-20,40,40);        //enemigos
    //fill(255);
    //ellipse(x3[i], y3[i], 20, 20);             //esto ya no e sirve
    contador--;
 
  if (contador<-40){                             //esta condicion hace que cuando los globos caen hasta abajo se vuelven a tirar otros tantos 
    contador=400;                                //esto para generar un loop
    x3[i] = random(400);                         //hacemos que los valores de las casillas de la coordenada y de cada globo sean aleatorios al reaparecer 
 }
   
  if (k<20){                                     //boton de la variable boolean que esta en la primera ventana, el 20 equivale a los globos
    lose=true;
  }else{
    lose=false;
 } 

  if (lose){
    tiempo=0;                                    //reseteo para que los globos tarden en caer
    contador=400;                                  //aqui pasa un poco lo mismo que si los globos llegan hasta abajo, se resetea el contador,los globos vuelven arriba, el personaje vuelve al punto de partida y se pasa al estado 4 por perder 
    x=200;
    y=50;
    x3[i] = random(400);
    y3[i] = contador; 
    estado=4;
   }
  }
 }
}
