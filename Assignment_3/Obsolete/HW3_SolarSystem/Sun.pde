void sun(float sunDiam, float sun_x, float sun_y) {
  sunImg = loadImage("sun.jpg");
  pushMatrix();
    translate(sun_x, sun_y);
    globe = createShape(SPHERE, sunDiam/2);
    globe.setTexture(sunImg);
    noStroke();
    noFill();
    shape(globe);
  popMatrix();
}
