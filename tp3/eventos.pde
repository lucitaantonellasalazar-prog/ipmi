void mousePressed() {
  if (mouseButton == LEFT) {
    girando = !girando; 
  } else if (mouseButton == RIGHT) {
    generarColoresAzulFucsia(); 
  }
}
//
void keyPressed() {
  if (key == 'l' || key == 'L') {
    inicializarBlancos();
    inicializarNegros();
    girando = false; 
    angulo = 0;
  }
}
