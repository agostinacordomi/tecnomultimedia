
PImage vasa;
int t, m;
float movimiento = 0;
float velocidad = 0.1;
boolean movimientoActivo = true;

void setup() {
  size(800, 400);
  vasa = loadImage("vasarely 1997.jpg");
  m = 20;
  t = 400 / m;
}

void draw() {
  background(8, 51, 154, 255);
  image(vasa, 400, 0);

  float centroX = 400 / 2;
  float centroY = 400 / 2;

  float maxDistancia = dist(0, 0, centroX, centroY);
  
// grilla
  for (int a = 0; a < m; a++) { 
    for (int k = 0; k < m; k++) {
      float d = dist(a * t, k * t, centroX, centroY);
      float c = map(maxDistancia - d, 0, maxDistancia, 255, 0);
      fill(c, 36, 40);

      if (movimiento >= 1) {
        fill(255, 0, 0); // cambiar el color a rojo
      } else {
        fill(c, 36, 40); // mantener el color original
      }

      if (movimientoActivo) {
        movimiento += velocidad; // aumentar el valor de movimiento en cada vuelta
if (movimiento > 1 || movimiento < 0.1) {
          velocidad *= -1; // invertir la dirección de movimiento cuando alcance el límite. velocidad = velocidad * -1
        
        }

        // dibujar las elipses
        noStroke();
        ellipse((a + 0.5) * t, (k + 0.5) * t, 15, 15);
      }

      movimiento += velocidad; // aumentar el valor de movimiento en cada vuelta

      if (movimiento > 1.0 || movimiento < 0.0) {
        velocidad *= -1; // invertir la dirección de movimiento cuando alcance el límite
      }
    }
  }
}


void keyPressed() {
  if (key == 's' || key == 'S') {
    movimientoActivo = false; // movimiento inactivo
    noLoop(); // para detener la actualización de los valores
  } else if (key == 'r' || key == 'R') {
    resetMov(); // reiniciar cuano se presiona la tecla r o R
  }
}

void resetMov() {
  movimiento = 0; // restablecer el valor de movimiento a cero
  velocidad = 0.1; // restablecer la velocidad original
  movimientoActivo = true; // volver a activar el movimiento
  loop(); 
}
