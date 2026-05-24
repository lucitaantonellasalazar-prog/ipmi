void pantalla1() {

  image(presentacion,move1x,0,640,480);
  
  textFont(tipografia);
  textSize(25);
  fill(0);

  String titulo = "El patito feo";

  text(titulo, move1x, 50,300,70); //250
  if (frameCount >100) {
  move1x = move1x +2; }
}

void pantalla2 () {
  
  if(frameCount > 330) {
image(fondodepantalla,0,0,640,480);
image(pato1,patomove1x,50,350,300); //140



  textSize(15);
  fill(0);

  String texto = "Una pata empollaba sus huevos de amor esperando que salieran para presumir "
  + "entre especies la fuerza y la salud que saldría de ella reflejada en sus crias, "
  + "dio su calor a cada uno de ellos, vigilandolos sigilosa.";
  text(texto, patomove1x, 375, 540, 200);
  patomove1x = patomove1x +2;
  }
  if(frameCount > 690){
    patomove1x = patomove1x -2;  
  }
  
  if (frameCount > 800) {
   patomove1x = patomove1x +2; 
  }  
}

void pantalla3() {
  if(frameCount >1130) {
image(fondodepantalla,0,0,640,480);
image(picoteando,picomovex, 100,400,200);

textSize(15);
fill(0);

String text02 = "De pronto la vida que picoteaba, alegres por respirar y pisar con sus patitas" +
        " todo eso que tanto anhelaban, uno de ellos se angustia enseguida por notar el mirar en sus caras."; 
 text(text02,picomovex,320,500,100);
picomovex = picomovex +2;
}
  if (frameCount > 1300) {
  picomovex = picomovex -2;
  }
  
  if(frameCount > 1450){
   picomovex = picomovex +2; 
  } 
}

void pantalla4() {

  if(frameCount > 1600) {

    image(fondodepantalla,0,0,640,480);
    image(patollorando, patollorandomovex, 100, 400, 200);

    textSize(15);
    fill(0);

    String text02 = "Los otros patitos lo miran y humillan pues no era nada de lo que esperaban, " +
    "con el tiempo ya todos crecían hasta volverse aves bonitas, todos menos el unico que no reía cuando todos encontraban en el lo diferente.";

    text(text02, patollorandomovex, 320, 500, 100);

    patollorandomovex = patollorandomovex + 2;
  }

  if (frameCount > 1640) {
    patollorandomovex = patollorandomovex - 2;
  }

  if(frameCount > 1750){
    patollorandomovex = patollorandomovex + 2;
  }
}

void pantalla5() {

  if(frameCount > 1600) {

    image(fondodepantalla,0,0,640,480);
    image(patoblanco, patoblancomovex, 100, 400, 200);

    textSize(15);
    fill(0);

String text02 = "¿Habrá algo bello en mí en todo esto? " +
"No lo creo pues todos critican mi color y tierna pancita. " +
"Todos se burlan ahora de mí, algo más que mi cuerpo es mi mente, " +
"teme ser todo lo que decían, feo y sin vitalidad en mis mejillas, " +
"mis plumas no tienen aquel color y en mi pico hay manchas " +
"que no se tapan ni en la mejor sombra de un día de calor.";
    text(text02, patoblancomovex, 320, 500, 100);

    patoblancomovex = patoblancomovex + 2;
  }

  if (frameCount > 1640) {
     patoblancomovex = patoblancomovex - 2;
  }

  if(frameCount > 1750){
    patollorandomovex = patollorandomovex + 2;
  }
}

void pantalla6() {

  if(frameCount > 1900) {

    image(fondodepantalla,0,0,640,480);
    image(patoblancollorando, patoblancomovex2, 100, 400, 200);

    textSize(15);
    fill(0);

String text02 = "Solo me tengo a mí y a mi vida ahora, emprenderé viaje donde pueda aislarme y dejar de escuchar lo que en mí arde.";
    text(text02, patoblancomovex2, 320, 500, 100);
    patoblancomovex2 = patoblancomovex2 + 2;
  }

  if (frameCount > 2050) {
     patoblancomovex2 = patoblancomovex2 - 2;
  }

  if(frameCount > 2150){
     patoblancomovex2 = patoblancomovex2 + 2;
  }
}

void pantalla7() {

  if(frameCount > 2170) {

    image(fondodepantalla,0,0,640,480);
    image(patotroncofeliz, patotroncofelizmove, 100, 400, 200);

    textSize(15);
    fill(0);

String text02 = "Al mal tiempo buena cara, de tanto esperar y navegar, entre tristezas se encuentra con un lago donde aprecia cisnes hermosos bebes que tornaron sus rostros de esplendor a penas lo vieron.";
    text(text02, patotroncofelizmove, 320, 500, 100);
    patotroncofelizmove = patotroncofelizmove + 2;
  }

  if (frameCount > 2230) {
     patotroncofelizmove = patotroncofelizmove - 2;
  }

  if(frameCount > 2350){
     patotroncofelizmove = patotroncofelizmove + 2;
  }
  
}
void pantalla8() {

  if(frameCount > 2470) {

    image(fondodepantalla,0,0,640,480);
    image(familiapatoblanco, familiapatoblancomove, 100, 400, 200);

    textSize(15);
    fill(0);

String text02 = "Al mal tiempo buena cara, de tanto esperar y navegar, entre tristezas se encuentra con un lago donde aprecia cisnes hermosos bebes que tornaron sus rostros de esplendor a penas lo vieron.";
    text(text02, familiapatoblancomove, 320, 500, 100);
    familiapatoblancomove = familiapatoblancomove + 2;
  }

  if (frameCount > 2530) {
     familiapatoblancomove = familiapatoblancomove - 2;
  }

  if(frameCount > 2650){
     familiapatoblancomove = familiapatoblancomove + 2;
  }
  }
  
void pantalla9() {

  if(frameCount > 2770) {

    image(fondodepantalla,0,0,640,480);
    image(patoblancohermoso, patoblancohermosomove, 100, 400, 200);

    textSize(15);
    fill(0);

String text02 = "Ve en su reflejo que ya no era más lo que le dolia y entendio el porque de su sentir y la confusión que domino su corazón de chiquito, era un cisne no un pato y ahora podran ver la belleza que irradia hoy en día por toda la verdad de dulzura que guarda en sus pupilas.";
    text(text02, patoblancohermosomove, 320, 500, 100);
    patoblancohermosomove = patoblancohermosomove + 2;
  }

  if(frameCount > 3150){
     patoblancohermosomove = patoblancohermosomove + 2;
  }  
  }  
  
  void pantallafin(){ 
  image(fondodepantalla,0,0,640,480);
    textSize(15);
    fill(0);

String text02 = "FIN";
    text(text02,200, 320, 500, 100);
  } 
