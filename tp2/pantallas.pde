 void pantallas ()
 {
 if (numPantalla == 1) {
      textSize(40);
      fill(0);
      float y0 = map(min(contadorTiempo, 120), 0, 120, 0, 40);
      text("EL PATITO FEO", width/2, y0);
    } else if (numPantalla == 2) {
      float opacidad1 = map(contadorTiempo, 0, 240, 0, 255);
      float y1 = map(min(contadorTiempo, 120), 0, 120, height/2, height/4 - 70);
      fill(0, opacidad1);
      text("Una pata empollaba sus huevos de amor esperando que salieran para presumir entre especies \n la fuerza y la salud que salería de ella reflejada en sus crias, \n dio su calor a cada uno de ellos, vigilandolos sigilosa.", 120, y1, 400, 400);
    } else if (numPantalla == 3) {
      fill(0);
      float y2 = map(min(contadorTiempo, 120), 0, 120, height, 10);
      text("De pronto la vida que picoteaba, alegres por respirar y pisar con sus patitas, todo eso que tanto anhelaban, uno de ellos se angustia enseguida por notar el mirar en sus caras al verlo.", 120, y2, 400, 400);
    } else if (numPantalla == 4) {
      float scale = map(min(contadorTiempo, 120), 0, 120, 0.3, 0.8);
      pushMatrix();
      translate(100, 0);
      scale(scale);
      fill(0);
      text("Los otros patitos lo miran y humillan pues no era nada de lo que esperaban, con el tiempo ya todos crecían hasta volverse aves bonitas, todos menos el unico que no reía porque encontraban en el lo diferente.", 0, 0, 600, 400);
      popMatrix();
    } else if (numPantalla == 5) {
      float opacidad2 = map(min(contadorTiempo, 120), 0, 120, 0, 255);
      fill(0, opacidad2);
      text("¿Abrá algo bello en mí en todo esto? No lo creo pues todos critican mi color y tierna pancita. Todos se burlan ahora de mi, algo más que mi cuerpo es mi mente, teme ser todo lo que decían, feo y sin vitalidad en mis mejillas, mis plumas no tienen aquel color y en mi pico hay manchas que no se tapan ni en la mejor sombra de un día de calor.", 120, 60, 400, 400);
    }
    else if (numPantalla == 6) {
      float opacidad1 = map(contadorTiempo, 0, 240, 0, 255);
      float y1 = map(min(contadorTiempo, 120), 0, 120, height, height/5);
      fill(0, opacidad1);
      text("Solo me tengo a mi y a mí vida ahora, emprenderé viaje donde pueda aislarme y dejar de escuchar lo que en mi arde.", 90, y1-20, 400, 400);
    }
    else if (numPantalla == 7) {
      float scale = map(min(contadorTiempo, 120), 0, 120, 0.3, 0.8);
      pushMatrix();
      translate(100, 0);
      scale(scale);
      fill(0);
      text("Al mal tiempo buena cara, de tanto esperar y navegar, entre tristezas se encuentra con un lago donde aprecia cisnes hermosos bebes que tornaron sus rostros de esplendor a penas lo vieron.", 0, 0, 400, 400);
      popMatrix();
    }
    else if (numPantalla == 8) {
      float opacidad1 = map(contadorTiempo, 0, 240, 0, 255);
      float y1 = map(min(contadorTiempo, 120), 0, 120, height/2, height/2 - 70);
      fill(0, opacidad1);
      text("Perplejo por lo sucedido, confusión llega a su corazón, aunque alagado por lo vivido, no se explica porque todos lo miran y esta vez ya no con apatia.", 120, y1, 400, 400);
    }
    else if (numPantalla == 9) {
      float opacidad1 = map(contadorTiempo, 0, 240, 0, 255);
      float y1 = map(min(contadorTiempo, 120), 0, 120, height/2, height/4 - 70);
      fill(0, opacidad1);
      text("Ve en su reflejo que ya no era más lo que le dolia y entendio el porque de su sentir y la confusión que domino su corazón de chiquito, era un cisne no un pato y ahora todos podran ver la belleza que irradia hoy en día por toda la verdad de dulzura que guarda en sus pupilas.", 120, y1, 400, 400);
    }
 }
