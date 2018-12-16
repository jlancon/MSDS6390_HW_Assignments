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

public class terrain extends PApplet {

int cols;
int rows;
int scl = 15;
int w = 1400;
int h = 1800;
float flying = 0;
float [][] terrain;
PImage img;
PShape s;
float lightx = 0;
float sun;

public void setup() {
  img = loadImage("terrain.jpg");
  
  cols = w / scl;
  rows = h / scl;
  terrain = new float[cols][rows];
}

public void draw() {
    
      
      //lights();
     // directionalLight(255, 255, 255, lightx, 500, -300);
      flying -= 0.1f;
      float yoff = flying;
  for (int y = 0; y < rows; y++){
      float xoff = 0;  
      for(int x = 0; x < cols; x++){
         terrain[x][y] = map(noise(xoff,yoff), 0,1, -100, 100);
         xoff += 0.1f;  
       }
     yoff += 0.1f;
   }
  
  
  
  background (60);
  noStroke();

  pushMatrix();
  noStroke();
  lights();
  translate(lightx,-600, -1200);
  pointLight(254, 254, 254, lightx, -600,-1000);
  sphere(50);
  popMatrix();

  
  
  
  //stroke(127);
  //noFill();
  lights();
//  pointLight(255, 255, 255, lightx, -600,-1000);
  translate(width/2,height/2);
  rotateX(PI/2.5f);
  translate(-w/2, -h/2+50);
//    textureWrap(REPEAT);
    s = createShape();
    s.beginShape(TRIANGLE_STRIP);
  for (int y = 0; y < rows-1; y++){
    //s = createShape();
    //s.beginShape(TRIANGLE_STRIP);
    for(int x = 0; x < cols; x++){
      s.vertex(x*scl,y*scl, terrain[x][y]);
      s.vertex(x*scl,(y+1)*scl, terrain[x][y+1]);
    }

    //s.endShape();
    //s.setTexture(img);
    //shape(s);
  }
    s.endShape();
    s.setTexture(img);
    shape(s);  
  lightx = frameCount+5;
  
}
  public void settings() {  size(600,600,P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "terrain" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}