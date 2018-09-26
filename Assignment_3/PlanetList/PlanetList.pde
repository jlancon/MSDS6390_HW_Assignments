//  Assistance on Coding was provided by Coding Train
// Images from planetpixelemporium.org

PImage mercuryImg , venusImg, earthImg, marsImg, jupiterImg, saturnImg, uranusImg, neptuneImg, plutoImg;
PImage sunImg;
PShape globe;

// Sun & Plant Diameters (x1)
float sunDia = 1391000;
float mercDia = 4879, venusDia = 12104, earthDia = 12756, marsDia = 6792, jupiterDia = 142984, saturnDia = 120536, uranusDia = 51118, neptuneDia = 49528, plutoDia = 2377; 

//Orbits (x1000)
float mercOrbit = 55730, venusOrbit = 108892, earthOrbit = 150301, marsOrbit = 206667, jupiterOrbit = 804617, saturnOrbit = 1505512, uranusOrbit =  2973096, neptuneOrbit = 4479011, plutoOrbit = 5906376; 

// Scale Factors
float planetScaleFactor = .0005;
float sunScaleFactor = .0005;

//Orbit Scale Factors
float orbitScaleFactor = .005;

// For visual only
float planDia = 10;

void setup() {
  size(1200, 1000, P3D);
}
 
void draw() {
  background(0);
// This section only for preliminary viewing only. Just to have a good idea of size ratios
  mercury(planDia*2.5,100,100);
  text("Mercury",80,130);
  venus(planDia*(venusDia/mercDia)*2.5, 100,250);
  text("Venus",80,300);
  earth(planDia*(earthDia/mercDia)*2.5, 100,450);
  text("Earth",80,510);
  mars(planDia*(marsDia/mercDia)*2.5, 100,600);
  text("Mars", 80, 650);
  jupiter(planDia*(jupiterDia/mercDia), 400,200);
  text("Jupiter", 380, 375);
  saturn(planDia*(saturnDia/mercDia), 400,600);
  text("Saturn", 380, 760);
  uranus(planDia*(uranusDia/mercDia), 750,120);
  text("Uranus", 730, 205);
  neptune(planDia*(neptuneDia/mercDia), 750,320);
  text("Neptune", 730, 400);
  pluto(planDia*(plutoDia/mercDia)*2.5, 900,120);
  text("Pluto", 890, 150);
  sun((sunDia/mercDia), 750,620);
  text("Sun", 730, 800);

}
