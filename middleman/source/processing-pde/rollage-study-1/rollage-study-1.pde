PImage sourceOne;
PImage sourceTwo;
PImage dest;

int sliceWidth = 40;
int canvasHeight = 800;
int canvasWidth = 1000;

int numOfSlices = canvasWidth / sliceWidth;
    
void setup() {
  
    sourceOne = loadImage("data/mine_williamsburg_lampost_highway_dusk_dawn_sky_meloncholy_IMG_5077-cropped.jpg");
    sourceOne.resize(canvasWidth, canvasHeight);
    
    size(canvasWidth, canvasHeight);
    
    dest = createImage(sourceOne.width, sourceOne.height, RGB);  
    
    println ("h: " + sourceOne.height + " \t| w: " + sourceOne.width );
  }
 
  
void draw() {
    
    for (int counter = 0; counter < numOfSlices; counter = counter+1) {
      
      int x1 = (int) map(counter, 0, numOfSlices, 0, sourceOne.width);
      int x2 = (int) map(counter + 1, 0, numOfSlices, 0, sourceOne.width);
      
      // use horizontal mouse movement to trigger effect, 
      // keep mouse on screen by dividing image in half and subtracting that from mouse value

      int xOffset = (int) (x1 * .3 + (mouseX - (sourceOne.width / 2)));
      
      println ("counter: " + counter + " \t x1: " + x1 + " \t xOffset: " + xOffset + " \t x2: " + x2);
     
     // cascades down linearly  
     // dest.copy(source, x1 + xOffset, 0, sliceWidth, sourceOne.height, x2, (10 * counter) + sliceWidth, sliceWidth, sourceOne.height);
     
     // wide glimmer
     dest.copy(sourceOne, x1 + xOffset, 0, sliceWidth, sourceOne.height, x2, sliceWidth, sliceWidth, sourceOne.height);

      // tight glimmer     
     dest.copy(sourceOne, xOffset, 0, sliceWidth, sourceOne.height, x2, sliceWidth, sliceWidth, sourceOne.height);
     
    }
    
  image(dest, 0, 0, sourceOne.width, sourceOne.height);
}

