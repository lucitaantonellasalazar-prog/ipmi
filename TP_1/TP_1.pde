 // Luz Antonella Salazar Mesias //
 // Numero de legajo 148835/5 //
 // Comision 5 //
 
 PImage imagen;
 void setup (){
 size (800, 400);
 imagen = loadImage("Polimniamusasdelamitologiagriega.jpg");
 }
 void draw() {
 background (245);
 image(imagen,0,0,400,400);
 fill(0);
 
 
 noFill();
 
 //tercio superior del rostro//
 circle ( 630, 27, 20 );
 circle ( 595, 42, 20 );
 circle ( 678, 189, 17 );
 circle ( 480, 94, 80 );
 circle ( 561, 94, 80 );
 circle ( 497, 172, 7 );
 circle ( 567, 172, 7 );
 circle ( 567, 172, 33 );
 circle ( 497, 172, 33 );
 circle ( 497, 172, 20 );
 circle ( 567, 172, 20 );
 triangle( 523, 157, 525, 205, 540, 189 );
  rect( 590, 122, 25, 80 );
 
 
 //tercio Medio// 
 circle ( 530, 232, 15 );
 circle ( 530, 217, 5 );
 circle ( 497, 377, 45 );
 circle ( 567, 377, 45 );
 circle ( 678, 46, 20 );
 circle ( 630, 27, 20 );
 circle ( 595, 42, 20 );
 circle ( 678, 189, 17 );
 rect( 447, 122, 20, 80 );
 
 //tercio inferior//
 circle ( 530, 334, 15 );
 triangle( 470, 283,  588, 283,  530, 344 );
 triangle( 470, 283,  445, 283,  473, 344 );
 triangle( 470, 243,  588, 243,  530, 288 );
 rect( 600, 203, 29, 80 );
 rect( 467, 122, 122, 80 ); 
 rect( 447, 203, 20, 80 );
 triangle( 470, 203,  588, 203,  530, 244 );
 triangle( 523, 157, 525, 205, 540, 189 ); 
 triangle( 590, 243,  588, 203,  587, 244 ); 
 

 }
 
 
 
 

 
 
 
