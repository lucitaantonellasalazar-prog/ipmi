//luz
void setup () {
  size(640, 480);
  //fondo = loadImage("fondodepantalla.jpg");
  tipografia = loadFont("CenturySchoolbook-25.vlw");
  //pantalla1
presentacion = loadImage("Presentacion.jpeg");  
  
  
  
  //pantalla2
  pato1 = loadImage("pantalla2.jpeg");
  fondodepantalla = loadImage("fondodepantalla.jpeg");


//pantalla3
picoteando = loadImage("pantalla3.jpeg");


//pantalla4
patollorando  = loadImage("pantalla4.jpeg");

//pantalla5
patoblanco  = loadImage("pantalla5.jpeg");

//pantalla6
patoblancollorando  = loadImage("pantalla6.jpeg");

//pantalla7
patotroncofeliz  = loadImage("pantalla7.jpeg");

//pantalla8
familiapatoblanco  = loadImage("pantalla8.jpeg");

//pantalla9
patoblancohermoso  = loadImage("pantalla9.jpeg");
}

void draw() {
  background(255);
 // image(fondo,640,480,640,480);
pantalla1();
pantalla2();
pantalla3();
pantalla4();
pantalla5();
pantalla6();
pantalla7();
pantalla8();
pantalla9();
//pantallafin();
}
