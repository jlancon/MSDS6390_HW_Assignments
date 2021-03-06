void mercury(float mercuryDiam, float mercury_x, float mercury_y) {
  mercuryImg = loadImage("mercury.jpg");
  pushMatrix();
  translate(mercury_x, mercury_y);
  globe = createShape(SPHERE, mercuryDiam/2);
  globe.setTexture(mercuryImg);
  noStroke();
  noFill();
  shape(globe);
  popMatrix();
}
