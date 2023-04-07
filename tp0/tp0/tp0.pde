PFont jua;
PImage gatitos;
void setup () {
  size (800,400); 
  gatitos = loadImage ("emociones (2).jpg"); //imagen de referencia

jua = loadFont ("Palatino.vlw"); // fuente de texto 
      
  


  }
  
 void draw () {
  
background (11,19,62);
image (gatitos,400,0);

textFont (jua,70);
fill (255);
textAlign (LEFT);
text("Emociones",50,150); // emociones <3

  
  // GATITO 1
fill (255);
  triangle (50,190,90,200,50,225); // oreja izq
  triangle (150,190,110,200,150,225); // oreja derecha
  fill  (227,181,181); //color rosa
  triangle (55,195,95,205,55,230); //oreja interna izq
  triangle (145,195,105,205,145,230); //oreja interna der
  
  fill (255);
  ellipse (100,350,150,180); //cuerpo
  ellipse (100,250,112,112); //cabeza
  fill (227,181,181); 
  triangle (90,250,110,250,100,260); //nariz

 
  //ojos
  stroke (0);
  fill(255);
  circle (80,240,30); //izq
  circle (120,240,30); //der
  fill(0);
  circle (80,250,10); //pupilas
  circle (120,250,10); 
  
  //cachetitos
  fill (183,175,175);
  noStroke ();
  circle (90,270,20);
  circle (110,270,20);
  //boca
  fill (0);
  stroke (0);
  line (100,260,100,280); 
  
 //bigotitos 
 //lado izquierdo
line (70,260,95,270);
line (72,270,95,270);
line (70,280,95,270);
//lado derecho
line (130,260,105,270);
line (132,270,105,270);
line (130,280,105,270);


//GATITO 2
noStroke();

fill (255);
triangle (250,190,290,200,250,225); //oreja izq
triangle (350,190,310,200,350,225); //oreja derecha
fill (227,181,181);
triangle (255,195,295,205,255,230); //izq interna
triangle (345,195,305,205,345,230); //der interna
fill (255);
ellipse (300,350,150,180); //cuerpo
ellipse (300,250,112,112); //cabeza
 fill (227,181,181);
 triangle (290,250,310,250,300,260); //nariz
 //ojos
 stroke (0);
 strokeWeight (0.7);
 fill (255);
 circle (280,240,30); //izq
 circle (320,240,30); //derecho
 fill (0);
 circle (280,250,10); //pupilas
 circle (320,250,10);
 
 //cachetitos
  fill (183,175,175);
  noStroke ();
  circle (290,270,20);
  circle (310,270,20);
  
  //boca
  stroke (0);
  fill (0);
  line (300,260,300,280);
  
  //bigotitos
  //lado izquierdo
  line (270,260,295,270);
  line (272,270,295,270);
  line (270,280,295,270);
  //lado derecho
  line (330,260,305,270);
  line (332,270,305,270);
  line (330,280,305,270);
 
 //sabana
  fill (13,39,165);
  noStroke();
  rect (0,350,400,350);
 ellipse (10,345,50,50);
 ellipse (30,350,40,40);
 ellipse (60,340,60,20);
 ellipse (70,340,100,40);
 ellipse (80,340,150,45);
 ellipse (150,345,100,40);
 ellipse (200,340,100,45);
 ellipse (300,345,100,40);
 ellipse (250,340,80,40);
 ellipse (350,350,104,50);
  
  
}
