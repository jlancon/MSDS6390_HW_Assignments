void earth(float earthDiam, float earth_x, float earth_y) {
  earthImg = loadImage("earth.jpg");
  pushMatrix();
    translate(earth_x, earth_y);
    globe = createShape(SPHERE, earthDiam/2);
    globe.setTexture(earthImg);
    noStroke();
    noFill();
    shape(globe);
  popMatrix();
}
