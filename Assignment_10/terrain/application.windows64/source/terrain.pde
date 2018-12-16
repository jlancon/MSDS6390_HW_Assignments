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

void setup() {
  img = loadImage("terrain.jpg");
  size(600,600,P3D);
  cols = w / scl;
  rows = h / scl;
  terrain = new float[cols][rows];
}

void draw() {
    
      
      //lights();
     // directionalLight(255, 255, 255, lightx, 500, -300);
      flying -= 0.1;
      float yoff = flying;
  for (int y = 0; y < rows; y++){
      float xoff = 0;  
      for(int x = 0; x < cols; x++){
         terrain[x][y] = map(noise(xoff,yoff), 0,1, -100, 100);
         xoff += 0.1;  
       }
     yoff += 0.1;
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
  rotateX(PI/2.5);
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
