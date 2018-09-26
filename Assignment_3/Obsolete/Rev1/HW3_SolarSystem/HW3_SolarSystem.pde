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
  mercury(planDia*1,100,100);
  venus(planDia*(venusDia/mercDia), 200,100);
  earth(planDia*(earthDia/mercDia), 300,100);
  jupiter(planDia*(jupiterDia/mercDia), 700,250);
  saturn(planDia*(saturnDia/mercDia), 250,600);
  uranus(planDia*(uranusDia/mercDia), 600,600);
  neptune(planDia*(neptuneDia/mercDia), 850,600);
  sun((sunDia/mercDia), 750,850);

// This section needs some work.  Need to work out ratios of planet size and orbit, to make
// animation look decent
//  mercury(mercDia * planetScaleFactor,mercOrbit * orbitScaleFactor,400);
//  venus(venusDia*planetScaleFactor,venusOrbit * orbitScaleFactor,400);
//  earth(earthDia*planetScaleFactor,earthOrbit * orbitScaleFactor,400);
//  mars(marsDia*planetScaleFactor,marsOrbit * orbitScaleFactor,400);
//  jupiter(jupiterDia*planetScaleFactor,jupiterOrbit * orbitScaleFactor,400);
//  saturn(saturnDia*planetScaleFactor,saturnOrbit * orbitScaleFactor,400);
//  uranus(uranusDia*planetScaleFactor,uranusOrbit * orbitScaleFactor,400);
//  neptune(neptuneDia*planetScaleFactor,neptuneOrbit * orbitScaleFactor,400);
//  pluto(plutoDia*planetScaleFactor,plutoOrbit * orbitScaleFactor,400);
//  sun(sunDia*sunScaleFactor, -100,400);
}
