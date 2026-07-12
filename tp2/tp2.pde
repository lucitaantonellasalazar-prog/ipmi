PImage imagen1, imagen2, imagen3, imagen4, imagen5, imagen6, imagen7, imagen8, imagen9;
PFont fuente;

int numPantalla = 0;
int contadorTiempo = 0;
int contadorTiempoBoton = 0;
boolean buttonPressed = false;
boolean startPressed = false;
float buttonX, buttonY, buttonW, buttonH;

void setup() {
  size(640, 480);
  frameRate(30);
  fuente = loadFont("TimesNewRomanPS-BoldMT-28.vlw");
  imagen1 = loadImage("1.jpg");
  imagen2 = loadImage("2.jpg");
  imagen3 = loadImage("3.jpg");
  imagen4 = loadImage("4.jpg");
  imagen5 = loadImage("5.jpg");
  imagen6 = loadImage("6.jpg");
  imagen7 = loadImage("7.jpg");
  imagen8 = loadImage("8.jpg");
  imagen9 = loadImage("9.jpg");
  textAlign(CENTER, CENTER);
  textSize(24);
  buttonW = 150;
  buttonH = 50;
  buttonX = width/2 - buttonW/2;
  buttonY = height/2 - buttonH/2;
}

void draw() {

  textFont(fuente);
  if (numPantalla == 0) {
    background(0);
    fill(255);
    textSize(24);
    fill(startPressed ? 150 : 200);
    rect(buttonX, buttonY, buttonW, buttonH, 10);
    fill(0);
    textSize(16);
    text("Iniciar", buttonX + buttonW/2, buttonY + buttonH/2);
    textSize(24);

  // Pantallas con imágenes y texto
  } else if (numPantalla >= 1 && numPantalla <= 9) {
    contadorTiempo++;

    if (numPantalla == 1) {
      image(imagen1, 0, 0, width, height);
    } else if (numPantalla == 2) {
      image(imagen2, 0, 0, width, height);
    } else if (numPantalla == 3) {
      image(imagen3, 0, 0, width, height);
    } else if (numPantalla == 4) {
      image(imagen4, 0, 0, width, height);
    } else if (numPantalla == 5) {
      image(imagen5, 0, 0, width, height);
    } else if (numPantalla == 6) {
      image(imagen6, 0, 0, width, height);
    } else if (numPantalla == 7) {
      image(imagen7, 0, 0, width, height);
    } else if (numPantalla == 8) {
      image(imagen8, 0, 0, width, height);
    } else if (numPantalla == 9) {
      image(imagen9, 0, 0, width, height);
    }
    
 pantallas ();  

   
    if (contadorTiempo > 240) {
      contadorTiempo = 0;
      numPantalla++;
    }

  // Pantalla final con botón de reinicio
  } else if (numPantalla == 10) {
    background(0);
    contadorTiempoBoton++;
    float opacidadBoton = map(min(contadorTiempoBoton, 30), 0, 30, 0, 255);
    fill(buttonPressed ? 150 : 200, opacidadBoton);
    rect(buttonX, buttonY, buttonW, buttonH, 10);
    fill(0, opacidadBoton);
    textSize(16);
    text("Reiniciar", buttonX + buttonW/2, buttonY + buttonH/2);
    textSize(24);
  }
}

void mousePressed() {
  if (numPantalla == 0) {
    if (mouseX >= buttonX && mouseX <= buttonX + buttonW &&
        mouseY >= buttonY && mouseY <= buttonY + buttonH) {
      startPressed = true;
    }
  }
  if (numPantalla == 10) {
    if (mouseX >= buttonX && mouseX <= buttonX + buttonW &&
        mouseY >= buttonY && mouseY <= buttonY + buttonH) {
      buttonPressed = true;
    }
  }
}

void mouseReleased() {
  if (startPressed && numPantalla == 0) {
    numPantalla = 1;
    contadorTiempo = 0;
    startPressed = false;
  }
  if (buttonPressed && numPantalla == 10) {
    numPantalla = 1;
    contadorTiempo = 0;
    contadorTiempoBoton = 0;
    buttonPressed = false;
  }
}
