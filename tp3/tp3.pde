PImage imagen;
int cant = 500;
int ancho = 400;
float mod; 
int i;
color colorNegro = color(0);
color colorBlanco = color(255);

boolean girando = false;
float angulo = 0;

void setup() {
  size(800, 400); 
  imagen = loadImage("35.png");
}

void draw() {
  background(0);
  pushMatrix();
  translate(600, 200);

  if (girando) {
    angulo -= radians(1); 
  }
  rotate(angulo);

  dibujarEfecto(cant);
  popMatrix();
  if (imagen != null) {
    image(imagen, 0, 0, 400, 400);
  }
}   

