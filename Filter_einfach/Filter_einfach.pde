PImage bild; 

void setup() {
 size(640, 480);
 bild = loadImage("blume.jpg");  // K1:
 filter();        // K2:
 image(bild,0,0);   // K3: 
}

void filter()
{
  bild.loadPixels();            
  for (int i = 0; i < bild.pixels.length; i++) {   // K4:
    color c = bild.pixels[i];    // K5:
    
    float r = red(c);   // K6:
    float g = green(c);
    float b = blue(c);
    
    
    g = 0;     // K7: 
       
    
    color cneu = color(r,g,b);    // K8: 
    bild.pixels[i] = cneu;         // K9:
  }
  bild.updatePixels();  
}
