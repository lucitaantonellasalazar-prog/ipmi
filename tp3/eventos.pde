void mousePressed() {
  if (mouseButton == LEFT) {
    girando = !girando; 
  } else if (mouseButton == RIGHT) {
    generarColorescelesteyrosita(); 
  }
}

void keyPressed() {
  if (key == 'l' || key == 'L') {
    inicioBlancos();
    inicioNegros();
    girando = false; 
    angulo = 0;
  }
}
