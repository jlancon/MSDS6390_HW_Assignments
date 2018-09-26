// MSDS 6390 Data Visualization
// Homework 3      09/20/18
// Travis Deason , Jeffrey Lancon

//  Solar System - Motion Animation
//  Assistance on Coding was provided by Coding Train
// Images from planetpixelemporium.org

// Defining variables
PImage mercuryImg , venusImg, earthImg, marsImg, jupiterImg, saturnImg, uranusImg, neptuneImg, plutoImg;
PImage sunImg;
PShape globe;

// **************************************************
// *******    Manual Input     **********************

// Screen size and Rotation Speed
float img_size = 1024;

// Rotational Speed
int speedOrbit = 6;

// Setting Maximum Planet size Diameter
float maxPlanetSize = 60;

//Scaling Sun - For optimal Viewing
float sunDiaScale = 0.05;

//Orbit Radius Adjust Factor - For Improved Viewing 
float mercOrbitFactor = 2.2;
float venusOrbitFactor = 2.0;
float earthOrbitFactor = 2.0;
float marsOrbitFactor = 2.0;
float jupiterOrbitFactor = .85;
float saturnOrbitFactor = .85;
float uranusOrbitFactor = .65;
float neptuneOrbitFactor = .60;
float plutoOrbitFactor = .50;

//****************************************************
//****************************************************

// Defining center of screen
float cent = img_size / 2;

//Sun & Plant Diameters (x1)
float sunDia = 1391000;
float mercDia = 4879;
float venusDia = 12104;
float earthDia = 12756;
float marsDia = 6792;
float jupiterDia = 142984;
float saturnDia = 120536;
float uranusDia = 51118;
float neptuneDia = 49528;
float plutoDia = 2377; 

//Orbits (x1000)
float mercOrbit = 55730;
float venusOrbit = 108892;
float earthOrbit = 150301;
float marsOrbit = 206667;
float jupiterOrbit = 804617;
float saturnOrbit = 1505512;
float uranusOrbit =  2973096;
float neptuneOrbit = 4479011;
float plutoOrbit = 5906376; 

// OrbitsSpeed
float mercOrbit_yrs = 0.24;
float venusOrbit_yrs = 0.615;
float earthOrbit_yrs = 1.0;
float marsOrbit_yrs = 1.881;
float jupiterOrbit_yrs = 11.86;
float saturnOrbit_yrs = 29.46;
float uranusOrbit_yrs = 84.0;
float neptuneOrbit_yrs = 164.8;
float plutoOrbit_yrs = 287.5;

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

//normalize Sun
float sunAdj = (sunDia / jupiterDia * maxPlanetSize) * sunDiaScale;


//Orbit Scale Factors
//float orbitScaleFactor = (.96 / (marsOrbit * marsOrbitFactor) * img_size)/2;
float orbitScaleFactor = (.94 / (neptuneOrbit * neptuneOrbitFactor) * img_size) / 2; 

//normalize orbits
float mercOrbitAdj = mercOrbit * mercOrbitFactor * orbitScaleFactor;
float venusOrbitAdj = venusOrbit * venusOrbitFactor * orbitScaleFactor;
float earthOrbitAdj = earthOrbit * earthOrbitFactor * orbitScaleFactor;
float marsOrbitAdj = marsOrbit * marsOrbitFactor * orbitScaleFactor;
float jupiterOrbitAdj = jupiterOrbit * jupiterOrbitFactor * orbitScaleFactor;
float saturnOrbitAdj = saturnOrbit * saturnOrbitFactor * orbitScaleFactor;
float uranusOrbitAdj = uranusOrbit * uranusOrbitFactor * orbitScaleFactor;
float neptuneOrbitAdj = neptuneOrbit * neptuneOrbitFactor * orbitScaleFactor;
float plutoOrbitAdj = plutoOrbit * plutoOrbitFactor * orbitScaleFactor;


void setup() {
// Setting Screen size
  size(1024, 1024, P3D);
  
// Loading texture images of planet surfaces
  mercuryImg = loadImage("mercury.jpg");
  venusImg = loadImage("venus.jpg");
  earthImg = loadImage("earth.jpg");
  marsImg = loadImage("mars.jpg");
  jupiterImg = loadImage("jupiter.jpg");
  saturnImg = loadImage("saturn.jpg");
  uranusImg = loadImage("uranus.jpg");
  neptuneImg = loadImage("neptune.jpg");
  plutoImg = loadImage("pluto.jpg");
  sunImg = loadImage("sun.jpg");
println(neptuneOrbitAdj);
}
 
 
//Determining Planet's Rotational Location
float orbit_x(float center_x, float theta_x, float radius_x){
   return center_x + radius_x * sin(theta_x * 3.14159 / 180); 
}
 
float orbit_y(float center_y, float theta_y, float radius_y){
   return center_y + radius_y * cos(theta_y * 3.14159 / 180); 
}

// Initalizing x & y location
int x= 0;
int y= 0;

 
void draw() {
  background(30);
// Functions for each individual planet
  mercury(mercAdj, orbit_x(cent, x / mercOrbit_yrs, mercOrbitAdj), orbit_y(cent, y / mercOrbit_yrs, mercOrbitAdj));
  venus(venusAdj, orbit_x(cent, x / venusOrbit_yrs, venusOrbitAdj), orbit_y(cent, y / venusOrbit_yrs, venusOrbitAdj));
  earth(earthAdj, orbit_x(cent, x / earthOrbit_yrs, earthOrbitAdj), orbit_y(cent, y / earthOrbit_yrs, earthOrbitAdj));
  mars(marsAdj, orbit_x(cent, x / marsOrbit_yrs, marsOrbitAdj), orbit_y(cent, y / marsOrbit_yrs, marsOrbitAdj));
  jupiter(jupiterAdj, orbit_x(cent, x / jupiterOrbit_yrs, jupiterOrbitAdj), orbit_y(cent, y / jupiterOrbit_yrs, jupiterOrbitAdj));
  saturn(saturnAdj, orbit_x(cent, x / saturnOrbit_yrs, saturnOrbitAdj), orbit_y(cent, y / saturnOrbit_yrs, saturnOrbitAdj));
  uranus(uranusAdj, orbit_x(cent, x / uranusOrbit_yrs, uranusOrbitAdj), orbit_y(cent, y / uranusOrbit_yrs, uranusOrbitAdj));
  neptune(neptuneAdj, orbit_x(cent, x / neptuneOrbit_yrs, neptuneOrbitAdj), orbit_y(cent, y / neptuneOrbit_yrs, neptuneOrbitAdj));
//  pluto(plutoAdj, orbit_x(cent, x / plutoOrbit_yrs, plutoOrbitAdj), orbit_y(cent, y / plutoOrbit_yrs, plutoOrbitAdj));

// This section is for Sun placement
sun(sunAdj, cent, cent);

// Rotation speed
  x = x + speedOrbit;
  y = y + speedOrbit;
}
