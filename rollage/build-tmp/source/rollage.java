import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class rollage extends PApplet {


PImage source;
PImage dest;

int barSize = 20;

int canvasHeight = 1599;
int canvasWidth = 1695;


public void setup() {
  
    size(canvasWidth, canvasHeight);

    source = loadImage("tarzan_beach.jpg");
    source.resize(1000, 800);
        
    dest = createImage(source.width, source.height, RGB);    
    
    println ("h: " + source.height + " \t| w: " + source.width );

    int n = 1000 / barSize;
      
    for (int i = 1; i < n; i = i+1) {
      int startX = i * barSize;
      int endX   = (i * barSize) + barSize;
      
      int x1 = (int) map(i, 0, n, 0, source.width);
      int x2 = (int) map(i+1, 0, n, 0, source.width);
      
      int xOffset = x1 + (int) (x1 * .5f);
       //  int xOffset = x1 + (int) random(-20, 0);
      
       println ("i: " + i + " \t x1: " + x1 + " \t x2: " + x2);
       
      // dest.copy(source, startX, 0, 1000, 800, endX, 0, 1000, 800 );
      // dest.copy(source, x1+(int) random(-10, 0), 0, x2+(int)random(-10, 0), 800, x1, 0, x2, 800);
      // dest.copy(source, x1, 0, x2, 800, x1, 0, x2, 800);
      dest.copy(source, xOffset, 0, barSize, 800, x2, 0, barSize, 800);
    }
  }
 
  
public void draw() {

  image(dest, 0, 0, 1000, 800);
}


  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "rollage" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
