
void limites(){
  
  if (x>400){                                       //desde el renglon 26 al 28 puse las condiciones para que la bolita vuelva al punto de inicio (x=200 y=350) si se sale del size
     x=200;
     y=50;
  }else if (x<0){
     x=200;
     y=50;
  }else if (y>400){
     x=200;
     y=50;
  }else if (y<0){
     x=200;
     y=50;
 }
}
