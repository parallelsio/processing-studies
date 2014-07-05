var sourceOne;
var sourceTwo;
var dest;

var sliceWidth = 40;
var canvasHeight = 1800;
var canvasWidth = 1800;

var numOfSlices = canvasWidth / sliceWidth;
    


function setup() {

    createCanvas(canvasWidth, canvasHeight);

    sourceOne = loadImage("img/mine_williamsburg_lampost_highway_dusk_dawn_sky_meloncholy_IMG_5077-cropped.jpg");
    // imageMode(CENTER);
    
    sourceOne.resize(canvasWidth, canvasHeight);
    
    dest = createImage(sourceOne.width, sourceOne.height, RGB);  
    
    // console.log ("h: " + sourceOne.height + " \t| w: " + sourceOne.width );
    
}

function draw() {

  for (var counter = 0; counter < numOfSlices; counter++) {
  
    var x1 = map(counter, 0, numOfSlices, 0, sourceOne.width);
    var x2 = map(counter + 1, 0, numOfSlices, 0, sourceOne.width);
    
    // use horizontal mouse movement to trigger effect, 
    // keep mouse on screen by dividing image in half and subtracting that from mouse value

    var xOffset = x1 * 0.3 + (mouseX - (sourceOne.width / 2));
    
    // console.log ("counter: " + counter + " \t x1: " + x1 + " \t xOffset: " + xOffset + " \t x2: " + x2);
   
   // cascades down linearly  
   // dest.copy(source, x1 + xOffset, 0, sliceWidth, sourceOne.height, x2, (10 * counter) + sliceWidth, sliceWidth, sourceOne.height);
   
   // wide glimmer
   //dest.copy(sourceOne, x1 + xOffset, 0, sliceWidth, sourceOne.height, x2, sliceWidth, sliceWidth, sourceOne.height);

    // tight glimmer     
   dest.copy(sourceOne, xOffset, 0, sliceWidth, sourceOne.height, x2, sliceWidth, sliceWidth, sourceOne.height);
   
  }


  image(dest, 0, 0, sourceOne.width, sourceOne.height).id("wow");


}




