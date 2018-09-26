void venus(float venusDiam, float venus_x, float venus_y) {
  venusImg = loadImage("venus.jpg");
  pushMatrix();
    translate(venus_x, venus_y);
    globe = createShape(SPHERE, venusDiam/2);
    globe.setTexture(venusImg);
    noStroke();
    noFill();
    shape(globe);
  popMatrix();
}
