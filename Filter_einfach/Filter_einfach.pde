PImage bild; 

void setup() {
 size(640, 480);
 bild = loadImage("blume.jpg"); // Lädt das Bild
 filter();    // Verändert das Bild
 image(bild,0,0);  // Zeigt das veränderte Bild an
}

void filter()
{
  bild.loadPixels();             // Lädt die Pixel des Bildes in das Pixelarray
  for (int i = 0; i < bild.pixels.length; i++) {
    color c = bild.pixels[i];
    // Ermittelt die r,g,b-Werte des Bildes
    float r = red(c);
    float g = green(c);
    float b = blue(c);
    
    // Manipuliert die Werte
    g = 0; // Nimmt alle Grüntöne raus
       
    // Erzeugt die neue Farbe
    color cneu = color(r,g,b);
    bild.pixels[i] = cneu; 
  }
  bild.updatePixels();  // überträgt die Infos des Pixelarrays ins Bild
}
