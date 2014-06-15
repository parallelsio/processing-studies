
PImage sourceA;
PImage sourceB;
PImage dest;

int barSize = 40;

int canvasHeight = 1599;
int canvasWidth = 1695;


int n = 1000 / barSize;
      
    
    
void setup() {
  

    size(canvasWidth, canvasHeight);
    
    sourceA = loadImage("mine_williamsburg_lampost_highway_dusk_dawn_sky_meloncholy_IMG_5077-cropped.jpg");
    sourceA.resize(1000, 800);
        
    dest = createImage(1000, 800, RGB);  
    
    println ("h: " + sourceA.height + " \t| w: " + sourceA.width );
    
    
  }
 
  
void draw() {
    
    
    for (int i = 0; i < n; i = i+1) {
      
      int x1 = (int) map(i, 0, n, 0, sourceA.width);
      int x2 = (int) map(i+1, 0, n, 0, sourceA.width);
      
      // int xOffset = x1 + (int) (x1 * .9);
      int xOffset = (int) (x1 * .3 + mouseX + -400);
      
      // int xOffset = x1;
      
      println ("i: " + i + " \t x1: " + x1 + " \t xOffset: " + xOffset + " \t x2: " + x2);
     
     // cascades down linearly  
     // dest.copy(source, x1 + xOffset, 0, barSize, 800, x2, (10 * i) + barSize, barSize, 800);
     
     dest.copy(sourceA, x1 + xOffset, 0, barSize, 800, x2, barSize, barSize, 800);
     
    }
    
  image(dest, 0, 0, 1000, 800);
}


