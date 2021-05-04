//NOMBRE:Maximiliano//
//APELLIDO:Lucero//
//legajo:85172/4//

size(600,600);
background(255);

noFill();
strokeWeight(0);
circle(300,300,500);

line(300,50,300,550);
line(150,100,430,550);
line(50,335,550,335);
line(100,450,550,190);
line(200,500,455,90);
line(65,200,500,450);


strokeWeight(1);
triangle(300,550,70,200,530,200);

pushStyle();
strokeWeight(4);
triangle(300,50,100,450,500,450);
popStyle();

noStroke();

//VIOLETA//
fill(194,55,219);
circle(300,550,90);

//VIOLETA O AZUL PURPURA//
fill(76,40,130);
circle(185,530,60);

//VERDE//
fill(0,129,57);
circle(70,200,90);


//VERDE LIMON//
fill(206,255,37);
circle(155,100,60);

//NARANJA//
fill(255,128,0);
circle(530,200,90);


//NARANJA PURO//
fill(244,70,17);
circle(550,330,60);

//AMARILLO//
fill(255,255,0);
circle(300,50,90);

//AMARILLO NARANJA//
fill(255,193,34);
circle(450,100,60);

//AZUL//
fill(0,0,255);
circle(100,450,90);

//AZUL VERDE//
fill(0,156,140);
circle(50,335,60);

//ROJO//
fill(255,0,0);
circle(500,450,90);

//VIOLETA ROJO//
fill(146,78,125);
circle(415,530,60);

fill(0);
textSize(12);
text("VERDE",20,150);
text("NARANJA",535,150);
text("VIOLETA",210,580);
text("AZUL",45,500);
text("ROJO",530,500);
text("AMARILLO",340,20);

text("Violeta Azulado.",65,550);
text("Violeta Rojo.",435,565);
text("RojoNar.",545,372);
text("Amarillo Naranja.",485,100);
text("AzulVer.",5,378);
text("Verde Limon.",50,80);

textSize(32);
text("PRIMARIOS",220,448);

textSize(18);
text("SECUNDARIOS",240,200);
