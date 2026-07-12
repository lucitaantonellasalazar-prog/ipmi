void dibujarEfecto(int cantidad) {
  mod = ancho;
  noStroke();
  rectMode(CENTER);
  for (i = 0; i < cantidad; i++) {
    aplicarColores();
    for (int j = 0; j < 2; j++) {
      rect(0, 0, mod - j*3, mod - j*3);
    }
 if (mod > 13) {
    mod = reducir(mod); 
    rotate(radians(-3.5));
 }
  }
}

void aplicarColores() {
  if (i % 2 == 0) {
    fill(coloresNegros[i % coloresNegros.length]); 
  } else {
    fill(coloresBlancos[i % coloresBlancos.length]); 
  }
}

float reducir(float valor) {
  return valor * cantidadCuadrados()
  ;
}
float cantidadCuadrados (){
return 0.94;
}
void inicializarBlancos() {
  coloresBlancos = new color[3];
  for (int j = 0; j < coloresBlancos.length; j++) {
    coloresBlancos[j] = color(255);
  }
}

void inicializarNegros() {
  coloresNegros = new color[3];
  for (int j = 0; j < coloresNegros.length; j++) {
    coloresNegros[j] = color(0);
  }
}

void generarColoresAzulFucsia() {
  for (int j = 0; j < coloresBlancos.length; j++) {
    float r = map(random(255), 0, 255, 150, 255);
    float b = map(random(255), 0, 255, 150, 255);
    coloresBlancos[j] = color(r, 0, b);
  }
  for (int j = 0; j < coloresNegros.length; j++) {
    float g = map(random(255), 0, 255, 0, 100);
    float b = map(random(255), 0, 255, 150, 255);
    coloresNegros[j] = color(0, g, b);
  }
}
