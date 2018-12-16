import processing.core.*;

public class Land{
  int def;
  int sizeX;
  int sizeY;
  int[][] elev;
  PApplet p;
  
  Land(){
  }
  
  Land(PApplet p, int sizeX, int sizeY){
    this.p = p;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.def = 8;
    this.elev = new int[sizeX][sizeY];
    for(int x= 0; x < sizeX; x++){
      for(int y= 0; y < sizeY; y++){
        this.elev[x][y] = 0;
      }
    }
  }
  
  //common Methods
  void draw(){
    PApplet p = this.p;
    p.noStroke();
    p.fill(153, 34, 91);
    int d = this.def;
    for(int x= 0; x < this.sizeX - 1; x++){
      for(int y= 0; y< this.sizeY - 1; y++){
        p.beginShape();
        p.vertex(x*d, y*d, this.elev[x][y]);
        p.vertex(x*d+d, y*d, this.elev[x+1][y]);
        p.vertex(x*d+d, y*d+d, this.elev[x+1][y+1]);
        p.vertex(x*d, y*d+d, this.elev[x][y+1]);
        p.endShape();
      }
    }
  }
  
  public void raiseLand(Volcano vulc){
    PApplet p = this.p;
    int centX = vulc.getLocX();
    int centY = vulc.getLocY();
    this.elev[centX][vulc.getLocY()] = (int) (vulc.getHeight());
    for(int x = centX -12; x <= centX + 12; x++){
      if(x > 0 && x < this.sizeX){
        for(int y = centY - 12; y <= centY + 12; y++){
          if(y > 0 && y < this.sizeY){
            //if(this.elev[x][y] < int((1+1)/(1 + tan(vulc.getAngle()) * sqrt((centX - x) * (centX - x) + ((centY - y) * (centY - y)))))){
            //  this.elev[x][y] = int((1+1)/(1 + tan(vulc.getAngle()) * sqrt((centX - x) * (centX - x) + ((centY - y) * (centY - y)))));
            if(this.elev[x][y] < (int)(p.tan(vulc.getAngle()) * p.sqrt((centX - x) * (centX - x) + ((centY - y) * (centY - y))))){
              this.elev[x][y] = (int)(p.tan(vulc.getAngle()) * p.sqrt((centX - x) * (centX - x) + ((centY - y) * (centY - y))));
            }
          }
        }
      }
    }
  }
  
  //getters and setters
  public int getHeight(int x, int y){
    return this.elev[x][y];
  }
  
  public int randX(){
    return (int)(this.p.random(0, this.sizeX));
  }
  
  public int randY(){
    return (int)(this.p.random(0, this.sizeY));
  }
  
  public int getSizeX(){
    return this.sizeX;
  }
  
  public int getSizeY(){
    return this.sizeY;
  }
  
}