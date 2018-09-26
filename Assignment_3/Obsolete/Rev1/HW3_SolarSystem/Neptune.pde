void neptune(float neptuneDiam, float neptune_x, float neptune_y) {
  neptuneImg = loadImage("neptune.jpg");
  pushMatrix();
    translate(neptune_x, neptune_y);
    globe = createShape(SPHERE, neptuneDiam/2);
    globe.setTexture(neptuneImg);
    noStroke();
    noFill();
    shape(globe);
  popMatrix();
}