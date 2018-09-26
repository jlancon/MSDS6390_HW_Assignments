void jupiter(float jupiterDiam, float jupiter_x, float jupiter_y) {
  jupiterImg = loadImage("jupiter.jpg");
  pushMatrix();
    translate(jupiter_x, jupiter_y);
    globe = createShape(SPHERE, jupiterDiam/2);
    globe.setTexture(jupiterImg);
    noStroke();
    noFill();
    shape(globe);
  popMatrix();
}
