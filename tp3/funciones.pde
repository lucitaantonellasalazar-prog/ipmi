void dibujarEfecto(int cantidad) {
  mod = ancho;
  noStroke();
  rectMode(CENTER);
  for (i = 0; i < cantidad; i++) {
    aplicarColores();
    for (int j = 0; j < 2; j++) {
      rect(0, 0, mod - j*3, mod - j*3 );
    }
    if (mod > 13) {
      mod = reducir(mod); 
      rotate(radians(-3.5));
    }
  }
}

void aplicarColores() {
  if (i % 2 == 0) {
    fill(colorNegro); 
  } else {
    fill(colorBlanco); 
  }
}

float reducir(float valor) {
  return valor * cantidadCuadrados();
}

float cantidadCuadrados() {
  return 0.94;
}

void inicioBlancos() {
  colorBlanco = color(255);
}

void inicioNegros() {
  colorNegro = color(0);
}

void generarColorescelesteyrosita() {
  colorBlanco = color (255, 182, 193); 
  colorNegro = color(135, 206, 235); 
} 
