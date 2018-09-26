//  Assistance on Coding was provided by Coding Train
// Images from planetpixelemporium.org

PImage mercuryImg , venusImg, earthImg, marsImg, jupiterImg, saturnImg, uranusImg, neptuneImg, plutoImg;
PImage sunImg;
PShape globe;

// Total Image Size
float img_size = 1024;
float cent = img_size / 2;

// Sun & Plant Diameters (x1)
float sunDia = 1391000;
float mercDia = 4879, venusDia = 12104, earthDia = 12756, marsDia = 6792, jupiterDia = 142984, saturnDia = 120536, uranusDia = 51118, neptuneDia = 49528, plutoDia = 2377; 

//Orbits (x1000)
float mercOrbit = 55730, venusOrbit = 108892, earthOrbit = 150301, marsOrbit = 206667, jupiterOrbit = 804617, saturnOrbit = 1505512, uranusOrbit =  2973096, neptuneOrbit = 4479011, plutoOrbit = 5906376; 

// Scale Factors
float maxPlanetSize = 20;
float planetScaleFactor = .0005;
float sunScaleFactor = .0005;

//normalize planets
float jupiterAdj = jupiterDia / jupiterDia * maxPlanetSize;
float mercAdj = mercDia / jupiterDia * maxPlanetSize;
float venusAdj = venusDia / jupiterDia * maxPlanetSize;
float earthAdj = earthDia / jupiterDia * maxPlanetSize;
float marsAdj = marsDia / jupiterDia * maxPlanetSize;
float saturnAdj = saturnDia / jupiterDia * maxPlanetSize;
float uranusAdj = uranusDia / jupiterDia * maxPlanetSize;
float neptuneAdj = neptuneDia / jupiterDia * maxPlanetSize;
float plutoAdj = plutoDia / jupiterDia * maxPlanetSize;

//Orbit Scale Factors
float orbitScaleFactor = 1/ plutoOrbit * img_size;

// For visual only
float planDia = 10;

void setup() {
  size(1024, 1024, P3D);
}
 
 
float orbit_x(float center_x, float theta_x, float radius_x){
   return center_x + radius_x * sin(theta_x * 3.14159 / 180); 
}
 
float orbit_y(float center_y, float theta_y, float radius_y){
   return center_y + radius_y * cos(theta_y * 3.14159 / 180); 
}

int x= 0;
int y= 0;

 
void draw() {
  background(0);
// This section only for preliminary viewing only. Just to have a good idea of size ratios
  mercury(mercAdj, orbit_x(cent, x, mercOrbit * orbitScaleFactor), orbit_y(cent, y, mercOrbit * orbitScaleFactor));
  venus(venusAdj, orbit_x(cent, x, venusOrbit * orbitScaleFactor), orbit_y(cent, y, venusOrbit * orbitScaleFactor));
  mars(marsAdj, orbit_x(cent, x, marsOrbit * orbitScaleFactor), orbit_y(cent, y, marsOrbit * orbitScaleFactor));
  jupiter(jupiterAdj, orbit_x(cent, x, jupiterOrbit * orbitScaleFactor), orbit_y(cent, y, jupiterOrbit * orbitScaleFactor));
  saturn(saturnAdj, orbit_x(cent, x, saturnOrbit * orbitScaleFactor), orbit_y(cent, y, saturnOrbit * orbitScaleFactor));
  uranus(uranusAdj, orbit_x(cent, x, uranusOrbit * orbitScaleFactor), orbit_y(cent, y, uranusOrbit * orbitScaleFactor));
  neptune(neptuneAdj, orbit_x(cent, x, neptuneOrbit * orbitScaleFactor), orbit_y(cent, y, neptuneOrbit * orbitScaleFactor));
  pluto(plutoAdj, orbit_x(cent, x, plutoOrbit * orbitScaleFactor), orbit_y(cent, y, plutoOrbit * orbitScaleFactor));
  
  
  venus(venusDia*planetScaleFactor,orbit_x(cent, x, venusDia), orbit_y(cent, y, venusDia));
  mars(planDia*planetScaleFactor,orbit_x(cent, x, earthDia), orbit_y(cent, y, earthDia));
  jupiter(planDia*planetScaleFactor,orbit_x(cent, x, jupiterDia), orbit_y(cent, y, jupiterDia));
  saturn(planDia*planetScaleFactor,orbit_x(cent, x, saturnDia), orbit_y(cent, y, saturnDia));
  uranus(planDia*planetScaleFactor,orbit_x(cent, x, uranusDia), orbit_y(cent, y, uranusDia));
  neptune(planDia*planetScaleFactor,orbit_x(cent, x, neptuneDia), orbit_y(cent, y, neptuneDia));
  pluto(plutoDia*planetScaleFactor,orbit_x(cent, x, plutoOrbit), orbit_y(cent, y, plutoOrbit));
  x = x + 1;
  y = y + 1;
}
