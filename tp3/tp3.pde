//Luz Antonella Salazar Mesias 
//Nro legajo 148835/5
//Programacion comision 5 
//Obra optica Nro35
// cancion TVGirl https://www.youtube.com/watch?v=7j6C9METNm0&list=RD08Hj15EAB20&index=2

// link de mi video https://youtu.be/5qMqkRoMeQ4 

PImage traitor;
int cant = 500;
boolean estaRotando = false;
float aceleracion = 0;
int ancho = 400;
float mod; 
int i;

// Variables para la Grilla (10x10)
boolean modoGrilla = false;
int contadorGrilla = 0;
boolean pantallaDerechaNegra = false; 
float rotacionZ = 0; 

// Nueva variable de control
boolean girandoZ = false; 

// Variable global para controlar el color del efecto
color colorEfecto = color(255); 

void setup () {
size (800, 400); 
traitor = loadImage("35.png");
}

void draw() {
  background(0);
  if (traitor != null) {
    image(traitor, 0, 0, 400, 400);
  }

  if (girandoZ) {
    rotacionZ += 0.05;
  }

  if (pantallaDerechaNegra) {
    if (modoGrilla) {
      dibujarGrilla(400, 0); 
    } else {
      fill(0); 
      rect(600, 200, 400, 400);
    }
  } else {
    pushMatrix();
    translate(600, 200);
    dibujarEfecto();
    popMatrix();
  }
  
  gestionarRotacion();
}

void dibujarGrilla(int offsetX, int offsetY) {
  int filas = 10;
  int cols = 10;
  float celdaW = 400.0 / cols;
  float celdaH = 400.0 / filas;

  int elementosDibujados = 0;
  for (int f = 0; f < filas; f++) {
    for (int c = 0; c < cols; c++) {
      if (elementosDibujados <= contadorGrilla) {
        pushMatrix();
        translate(offsetX + c * celdaW + celdaW/2, offsetY + f * celdaH + celdaH/2);
        
        rotate(calcularVariacion() + rotacionZ); 
        
        //Llamamos fila y columna actual para calcular si el mouse está cerca y cambiar el color del centro del efecto.
        chequearDistancia(f, c); 
        
        scale(0.1);
        dibujarEfecto();
        popMatrix();
      }
      elementosDibujados++;
    }
  }
}

void dibujarEfecto() {
  mod = ancho;
  noStroke();
  rectMode(CENTER);
  rotate(aceleracion);
  
  for (i = 0; i < cant; i++) {
    aplicarColores();
    rect(0, 0, mod, mod);
    mod = mod * 0.94;
    rotate(radians(-3.5));
    if (mod < 1) break; 
  }
  
  // Variable de color para el centro
  fill(colorEfecto); 
  rect(0, 0, 12, 12);
}

void aplicarColores() {
  color azul = color(0, 0, 255);
  color fucsia = color(255, 0, 255);
  if (estaRotando || modoGrilla) {
    if (i % 2 == 0) fill(azul); else fill(fucsia);
  } else {
    if (i % 2 == 0) fill(0); else fill(255);
  }
}

void gestionarRotacion() {}
void mousePressed() {
  estaRotando = !estaRotando;
}
//cambia el booleano a rotar 

void keyPressed() {
  if (key == 'c') {
    aceleracion = 0; estaRotando = false; modoGrilla = false; 
    contadorGrilla = 0; pantallaDerechaNegra = false; rotacionZ = 0; girandoZ = false;
  }
  if (key == ' ') {
    modoGrilla = false; contadorGrilla = 0; pantallaDerechaNegra = false;
  }
  if (key == 'l' || key == 'L') {
    modoGrilla = true;
    if (contadorGrilla < 99) contadorGrilla++;
  }
  if (key == 'u' || key == 'U') {
    pantallaDerechaNegra = !pantallaDerechaNegra;
  }
  if (key == 'z' || key == 'Z') {
    girandoZ = !girandoZ; 
  }
}
//modifica variables de estado

float calcularVariacion() {
  return map(mouseX, 0, width, -0.1, 0.1) + random(-0.02, 0.02);
}

void chequearDistancia(int f, int c) {
  float celdaX = 400.0/10 * c + 20;
  float celdaY = 400.0/10 * f + 20;
  float d = dist(mouseX, mouseY, 400 + celdaX, celdaY);
//funcion que retorna para generar un angulo pequeño angulo que se sumara a la rotacion

  if (d < 50) {
    colorEfecto = color(255, 255, 0); 
  } else {
    colorEfecto = color(255);
  }
}
