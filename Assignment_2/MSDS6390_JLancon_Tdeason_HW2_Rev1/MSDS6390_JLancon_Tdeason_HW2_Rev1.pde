// Note Dimension ratios adapted from Ch 2 from Processing - Creative
// Coding and Generative Art in Processing 2

// *******************************************************************
// Location and Scaling Inputs:  
// Portrait is completely Scalable and Relocatable

void setup(){
  //float faceCenter_x, float faceCenter_y, float faceHeight
  size(800,700);
}
void draw(){ 
  //float faceCenter_x, float faceCenter_y, float faceHeight
  jeffPortrait(600, 350, 400);
  //float faceCenter_x, float faceCenter_y, float faceHeight
  travisPortrait(200, 350, 400);
}


// Jeff's Portrait Function Calls
void jeffPortrait(float faceCenter_x, float faceCenter_y, float faceHeight){
  //*********************************************************************
  // Face Dimensions & Ratios
  float faceWidth = faceHeight *5/7;
  float faceHalfWidth = faceWidth/2;
  float faceHalfHeight = faceHeight/2;
  float faceQuarterHeight = faceHeight/4;
  
  // Eye Dimensions & Ratios
  float eyeWidth = faceWidth / 4.5;
  float eyeHeight = eyeWidth / 2.5;
  float leftEye_x = faceCenter_x - eyeWidth * 1.0;
  float rightEye_x = faceCenter_x + eyeWidth * 1.0;
  float eye_y = faceCenter_y;
  float irisDiam = eyeHeight;
  float pupilDiam = irisDiam / 3;
  
  // EyeBrow Dimensions & Ratios
  float eyeBrowWidth = eyeWidth * 1.25;
  float eyeBrowHeight = eyeHeight / 4;
  float eyeBrow_y = eye_y - eyeHeight - eyeBrowHeight / 2;
  float eyeBrowDip = 1.05;
  
  // Nose Dimensions & Ratios
  float noseLeftTop_x = leftEye_x + eyeBrowWidth / 2;
  float noseLeftTop_y = eyeBrow_y * eyeBrowDip;
  float noseRightTop_x = rightEye_x - eyeBrowWidth / 2;
  float noseRightTop_y = eyeBrow_y * eyeBrowDip;
  float noseHalfWidth = faceCenter_x - noseLeftTop_x; 
  float noseLength = faceCenter_x - noseLeftTop_x + faceQuarterHeight;
  
  float mouthLength = (rightEye_x - leftEye_x) * 0.9;
  float mouthHalfLength = mouthLength / 2;
  float mouthCenter_y = noseLeftTop_y + noseLength + faceHeight / 12;
  jeffHair(faceCenter_x, faceCenter_y, faceWidth, faceHeight, faceHalfWidth, faceHalfHeight);
  jeffFace(faceCenter_x, faceHalfWidth, faceCenter_y, faceHalfHeight);
  jeffEyes(leftEye_x, rightEye_x, eye_y, eyeWidth, eyeHeight, irisDiam, pupilDiam);
  jeffEyeBrows(eyeBrow_y, leftEye_x, rightEye_x, eyeBrowWidth, eyeBrowDip, faceHeight);
  jeffNose(noseHalfWidth, noseLength, noseLeftTop_y, noseLeftTop_x, noseRightTop_x, noseRightTop_y);
  jeffMouth(faceHeight, faceCenter_x, mouthHalfLength, mouthCenter_y);
}

// FACE FUNCTION ***
void jeffFace(float faceCenter_x, float faceHalfWidth, float faceCenter_y, float faceHalfHeight){
// face : Face (Hairline down to chin)
  stroke(0);
  fill(255, 203, 153);
  line(faceCenter_x - faceHalfWidth * 1.00, faceCenter_y + faceHalfHeight * 0.0,
        faceCenter_x + faceHalfWidth * 1.00, faceCenter_y + faceHalfHeight * 0.00);
  beginShape();
    curveVertex(faceCenter_x - faceHalfWidth * 0.79, faceCenter_y - faceHalfHeight * 0.42);
    curveVertex(faceCenter_x - faceHalfWidth * 0.79, faceCenter_y - faceHalfHeight * 0.42);
    curveVertex(faceCenter_x - faceHalfWidth * 0.84, faceCenter_y - faceHalfHeight * 0.35);
    curveVertex(faceCenter_x - faceHalfWidth * 0.93, faceCenter_y - faceHalfHeight * 0.20);
    curveVertex(faceCenter_x - faceHalfWidth * 1.00, faceCenter_y + faceHalfHeight * 0.0);
    curveVertex(faceCenter_x - faceHalfWidth * 1.00, faceCenter_y + faceHalfHeight * 0.16);
    curveVertex(faceCenter_x - faceHalfWidth * 0.95, faceCenter_y + faceHalfHeight * 0.365);
    curveVertex(faceCenter_x - faceHalfWidth * 0.90, faceCenter_y + faceHalfHeight * 0.526);
    curveVertex(faceCenter_x - faceHalfWidth * 0.83, faceCenter_y + faceHalfHeight * 0.64);
    curveVertex(faceCenter_x - faceHalfWidth * 0.67, faceCenter_y + faceHalfHeight * 0.74);
    curveVertex(faceCenter_x - faceHalfWidth * 0.40, faceCenter_y + faceHalfHeight * 0.88);
    curveVertex(faceCenter_x - faceHalfWidth * 0.20, faceCenter_y + faceHalfHeight * 0.97);
    curveVertex(faceCenter_x - faceHalfWidth * 0.00, faceCenter_y + faceHalfHeight * 1.00);
    curveVertex(faceCenter_x + faceHalfWidth * 0.20, faceCenter_y + faceHalfHeight * 0.97);
    curveVertex(faceCenter_x + faceHalfWidth * 0.40, faceCenter_y + faceHalfHeight * 0.88);  
    curveVertex(faceCenter_x + faceHalfWidth * 0.67, faceCenter_y + faceHalfHeight * 0.74);  
    curveVertex(faceCenter_x + faceHalfWidth * 0.83, faceCenter_y + faceHalfHeight * 0.64);  
    curveVertex(faceCenter_x + faceHalfWidth * 0.90, faceCenter_y + faceHalfHeight * 0.526);  
    curveVertex(faceCenter_x + faceHalfWidth * 0.95, faceCenter_y + faceHalfHeight * 0.365);  
    curveVertex(faceCenter_x + faceHalfWidth * 1.00, faceCenter_y + faceHalfHeight * 0.16);  
    curveVertex(faceCenter_x + faceHalfWidth * 1.00, faceCenter_y + faceHalfHeight * 0.00); 
    curveVertex(faceCenter_x + faceHalfWidth * 0.93, faceCenter_y - faceHalfHeight * 0.20);
    curveVertex(faceCenter_x + faceHalfWidth * 0.84, faceCenter_y - faceHalfHeight * 0.35); 
    curveVertex(faceCenter_x + faceHalfWidth * 0.79, faceCenter_y - faceHalfHeight * 0.42); 
    curveVertex(faceCenter_x + faceHalfWidth * 0.79, faceCenter_y - faceHalfHeight * 0.42); 
  endShape();

// hairline: Bangs
  stroke(50);
  strokeWeight(4);
  fill(101, 53, 33);
  bezier(faceCenter_x + faceHalfWidth * 0.81, faceCenter_y - faceHalfHeight * 0.42, faceCenter_x + faceHalfWidth * 0.60, faceCenter_y - faceHalfHeight * 0.36, faceCenter_x + faceHalfWidth * 0.20, faceCenter_y - faceHalfHeight * 0.33, faceCenter_x - faceHalfWidth * 0.1,faceCenter_y - faceHalfHeight * 0.44);
  bezier(faceCenter_x - faceHalfWidth * 0.81, faceCenter_y - faceHalfHeight * 0.42, faceCenter_x - faceHalfWidth * 0.40, faceCenter_y - faceHalfHeight * 0.30, faceCenter_x - faceHalfWidth * 0.00, faceCenter_y - faceHalfHeight * 0.22, faceCenter_x + faceHalfWidth * 0.55,faceCenter_y - faceHalfHeight * 0.50);
}

// EYE FUNCTION ***
void jeffEyes(float leftEye_x, float  rightEye_x, float eye_y, float eyeWidth, 
              float eyeHeight, float irisDiam, float pupilDiam){
if (mouseX > (leftEye_x-((eyeWidth/2)*1.4)) && mouseX < (leftEye_x + ((eyeWidth/2)*1.4)) &&  mouseY > eye_y-(eyeHeight/2)*1.1 && mouseY < eye_y+(eyeHeight/2)*1.1){
    fill(101, 53, 33);
    noStroke();
    quad(leftEye_x-eyeWidth/2, eye_y+pupilDiam*.3, leftEye_x-eyeWidth/2, eye_y-pupilDiam*.3, leftEye_x+ eyeWidth/2, eye_y-pupilDiam*.3,leftEye_x+ eyeWidth/2, eye_y+pupilDiam*.3);}               
else {
 //Left eye
  strokeWeight(2);
  stroke(145,145,145);
  fill(240, 230, 230);
  ellipse(leftEye_x, eye_y, eyeWidth, eyeHeight);
//Left Iris
  strokeWeight(1);
  stroke(40);
  fill(67, 103, 180);
  ellipse(leftEye_x, eye_y, irisDiam, irisDiam);
//Left Pupil
  stroke(50);
  fill(90);
  ellipse(leftEye_x, eye_y, pupilDiam, pupilDiam);
}

if (mouseX > (rightEye_x-((eyeWidth/2)*1.4)) && mouseX < (rightEye_x + ((eyeWidth/2)*1.4)) &&  mouseY > eye_y-(eyeHeight/2)*1.1 && mouseY < eye_y+(eyeHeight/2)*1.1){
    fill(101, 53, 33);
    noStroke();
    quad(rightEye_x-eyeWidth/2, eye_y+pupilDiam*.2, rightEye_x-eyeWidth/2, eye_y-pupilDiam*.2, rightEye_x+ eyeWidth/2, eye_y-pupilDiam*.2,rightEye_x+ eyeWidth/2, eye_y+pupilDiam*.2);}               
else {
//Right eye
  strokeWeight(2);
  stroke(145,145,145);
  fill(240, 230, 230);
  ellipse(rightEye_x, eye_y, eyeWidth, eyeHeight);
//Right Iris
  strokeWeight(1);
  stroke(40);
  fill(67, 103, 180);
  ellipse(rightEye_x, eye_y, irisDiam, irisDiam);
//Left Pupil
  stroke(50);
  fill(90);
  ellipse(rightEye_x, eye_y, pupilDiam, pupilDiam);
}
} 


// EYEBROW FUNCTION ***
void jeffEyeBrows(float eyeBrow_y, float leftEye_x, float rightEye_x, 
                  float eyeBrowWidth, float eyeBrowDip, float faceHeight){
// Eyebrow - left side
  float eyeBrowLeft_x1 = leftEye_x - eyeBrowWidth / 2;
  float eyeBrowLeft_x2 = leftEye_x - eyeBrowWidth * 0.2;
  float eyeBrowLeft_x3 = leftEye_x + eyeBrowWidth * 0.2;
  float eyeBrowLeft_x4 = leftEye_x + eyeBrowWidth / 2;
  strokeWeight(6 * (faceHeight / 400));
  stroke(101, 53, 33);
  noFill();
  beginShape();
    curveVertex(eyeBrowLeft_x1, eyeBrow_y * eyeBrowDip);
    curveVertex(eyeBrowLeft_x1, eyeBrow_y * eyeBrowDip);
    curveVertex(eyeBrowLeft_x2, eyeBrow_y);
    curveVertex(eyeBrowLeft_x3, eyeBrow_y);
    curveVertex(eyeBrowLeft_x4, eyeBrow_y * eyeBrowDip);
    curveVertex(eyeBrowLeft_x4, eyeBrow_y * eyeBrowDip);
  endShape();

// Eyebrow - right side
  float eyeBrowRight_x1 = rightEye_x - eyeBrowWidth / 2;
  float eyeBrowRight_x2 = rightEye_x - eyeBrowWidth * 0.2;
  float eyeBrowRight_x3 = rightEye_x + eyeBrowWidth * 0.2;
  float eyeBrowRight_x4 = rightEye_x + eyeBrowWidth / 2;
  beginShape();
    curveVertex(eyeBrowRight_x1, eyeBrow_y * eyeBrowDip);
    curveVertex(eyeBrowRight_x1, eyeBrow_y * eyeBrowDip);
    curveVertex(eyeBrowRight_x2, eyeBrow_y);
    curveVertex(eyeBrowRight_x3, eyeBrow_y);
    curveVertex(eyeBrowRight_x4, eyeBrow_y * eyeBrowDip);
    curveVertex(eyeBrowRight_x4, eyeBrow_y * eyeBrowDip);
  endShape();
}


// NOSE FUNCTION ***
void jeffNose(float noseHalfWidth, float noseLength, float noseLeftTop_y, 
              float noseLeftTop_x, float noseRightTop_x, float noseRightTop_y){
// nose - left side
  strokeWeight(2);
  stroke(126);
  beginShape();
  curveVertex(noseLeftTop_x, noseLeftTop_y);
  curveVertex(noseLeftTop_x + noseHalfWidth * 0.16, noseLeftTop_y + noseLength * 0.014);
  curveVertex(noseLeftTop_x + noseHalfWidth * 0.27, noseLeftTop_y + noseLength * 0.029);
  curveVertex(noseLeftTop_x + noseHalfWidth * 0.375, noseLeftTop_y + noseLength * 0.059);
  curveVertex(noseLeftTop_x + noseHalfWidth * 0.49, noseLeftTop_y + noseLength * 0.106);
  curveVertex(noseLeftTop_x + noseHalfWidth * 0.55, noseLeftTop_y + noseLength * 0.408);
  curveVertex(noseLeftTop_x + noseHalfWidth * 0.48, noseLeftTop_y + noseLength * 0.609);
  curveVertex(noseLeftTop_x + noseHalfWidth * 0.35, noseLeftTop_y + noseLength * 0.857);
  curveVertex(noseLeftTop_x + noseHalfWidth * 0.35, noseLeftTop_y + noseLength * 0.857);  
  endShape();

// nose - right side
  beginShape();
  curveVertex(noseRightTop_x, noseRightTop_y);
  curveVertex(noseRightTop_x - noseHalfWidth * 0.16, noseRightTop_y + noseLength * 0.014);
  curveVertex(noseRightTop_x - noseHalfWidth * 0.27, noseRightTop_y + noseLength * 0.029);
  curveVertex(noseRightTop_x - noseHalfWidth * 0.375, noseRightTop_y + noseLength * 0.059);
  curveVertex(noseRightTop_x - noseHalfWidth * 0.49, noseRightTop_y + noseLength * 0.106);
  curveVertex(noseRightTop_x - noseHalfWidth * 0.55, noseRightTop_y + noseLength * 0.408);
  curveVertex(noseRightTop_x - noseHalfWidth * 0.48, noseRightTop_y + noseLength * 0.609);
  curveVertex(noseRightTop_x - noseHalfWidth * 0.35, noseRightTop_y + noseLength * 0.857);
  curveVertex(noseRightTop_x - noseHalfWidth * 0.35, noseRightTop_y + noseLength * 0.857);  
  endShape();

// nose - tip & nostrils
  arc(noseLeftTop_x + noseHalfWidth * 0.35, noseLeftTop_y + noseLength * 0.857, noseHalfWidth * 1.2, noseHalfWidth * 1.2, HALF_PI + (HALF_PI / 10), PI + (PI / 3));
  arc(noseRightTop_x - noseHalfWidth * 0.35, noseRightTop_y + noseLength * 0.857, noseHalfWidth * 1.2, noseHalfWidth * 1.2, TWO_PI - (PI / 3),TWO_PI + (HALF_PI - (HALF_PI / 10)));
  arc(noseLeftTop_x + noseHalfWidth, noseLeftTop_y + noseLength * 0.93, noseHalfWidth * 0.9,noseHalfWidth * 0.9, 0, PI);
}

// MOUTH FUNCTION ***
void jeffMouth(float faceHeight, float faceCenter_x, float mouthHalfLength, float mouthCenter_y){
  noFill();
  strokeWeight(10 * (faceHeight / 400));
  stroke(101, 53, 33);
  bezier(faceCenter_x - mouthHalfLength, mouthCenter_y * 0.95, faceCenter_x - mouthHalfLength * 0.5, mouthCenter_y, faceCenter_x + mouthHalfLength * 0.5, mouthCenter_y, faceCenter_x + mouthHalfLength, mouthCenter_y * 0.95);
}

// HAIR FUNCTION ***
void jeffHair(float faceCenter_x, float faceCenter_y, float faceWidth, float faceHeight, 
              float faceHalfWidth, float faceHalfHeight){
  stroke(101, 53, 33);
  fill(101, 53, 33);
  ellipse(faceCenter_x, faceCenter_y * 0.93,faceWidth * 1.1, faceHeight * 0.80);

// Grey Accents in Hair
  float haX1; float haX2;
  float haY1; float haY2;  
  fill(101, 53, 33);
  stroke(100);
  strokeWeight(1);
//if (greyHairCounter <= 1) {
//  greyHairCounter = greyHairCounter + 1;
//  for (int b=0; b < 10; b=b+1){
//    haX1 = random(faceCenter_x - faceHalfWidth * 0.75, faceCenter_x + faceHalfWidth * 0.60);
//    haY1 = random(faceCenter_y - faceHalfHeight * 0.64, faceCenter_y - faceHalfHeight * 0.43);
//    haX2 = haX1 + 10 * (faceHeight/400);
//    haY2 = haY1 - 27 * (faceHeight/400);
//    line(haX1,haY1, haX2, haY2);
//  }

}


// travis's Portrait Function Calls
void travisPortrait(float faceCenter_x, float faceCenter_y, float faceHeight){
  //*********************************************************************
  // Face Dimensions & Ratios
  float faceWidth = faceHeight*5/8;
  float faceHalfWidth = faceWidth/2;
  float faceHalfHeight = faceHeight/2;
  float faceQuarterHeight = faceHeight/4;
  
  // Eye Dimensions & Ratios
  float eyeWidth = faceWidth / 4.2;
  float eyeHeight = eyeWidth / 2.1;
  float leftEye_x = faceCenter_x - eyeWidth * 1.0;
  float rightEye_x = faceCenter_x + eyeWidth * 1.0;
  float eye_y = faceCenter_y;
  float irisDiam = eyeHeight;
  float pupilDiam = irisDiam / 3;
 
  // EyeBrow Dimensions & Ratios
  float eyeBrowWidth = eyeWidth * 1.25;
  float eyeBrowHeight = eyeHeight / 4;
  float eyeBrow_y = eye_y - eyeHeight - eyeBrowHeight / 2;
  float eyeBrowDip = 1.05;
  
  // Nose Dimensions & Ratios
  float noseLeftTop_x = leftEye_x + eyeBrowWidth / 2;
  float noseLeftTop_y = eyeBrow_y * eyeBrowDip;
  float noseRightTop_x = rightEye_x - eyeBrowWidth / 2;
  float noseRightTop_y = eyeBrow_y * eyeBrowDip;
  float noseHalfWidth = faceCenter_x - noseLeftTop_x; 
  float noseLength = faceCenter_x - noseLeftTop_x + faceQuarterHeight;
  
  float mouthLength = (rightEye_x - leftEye_x) * 0.5;
  float mouthHalfLength = mouthLength / 2;
  float mouthCenter_y = noseLeftTop_y + noseLength + faceHeight / 12;
  travisHair(faceCenter_x, faceCenter_y, faceWidth, faceHeight);
  travisEars(faceCenter_x, faceCenter_y, faceWidth, faceHeight);
  travisFace(faceCenter_x, faceHalfWidth, faceCenter_y, faceHalfHeight);
  travisEyes(leftEye_x, rightEye_x, eye_y, eyeWidth, eyeHeight, irisDiam, pupilDiam);
  travisEyeBrows(eyeBrow_y, leftEye_x, rightEye_x, eyeBrowWidth, eyeBrowDip, faceHeight);
  travisNose(faceCenter_x, noseHalfWidth, noseLength, noseLeftTop_y, noseLeftTop_x, noseRightTop_x, noseRightTop_y);
  travisMouth(faceHeight, faceCenter_x, mouthHalfLength, mouthCenter_y);
}

// FACE FUNCTION ***
void travisFace(float faceCenter_x, float faceHalfWidth, float faceCenter_y, float faceHalfHeight){
// face : Face (Hairline down to chin)
  stroke(0);
  //fill(255, 203, 153);
  fill(252, 234, 212);
  line(faceCenter_x - faceHalfWidth * 1.00, faceCenter_y + faceHalfHeight * 0.0,
       faceCenter_x + faceHalfWidth * 1.00, faceCenter_y + faceHalfHeight * 0.00);
  beginShape();
    //1
    curveVertex(faceCenter_x - faceHalfWidth * 0.6, faceCenter_y - faceHalfHeight * 0.42);
    curveVertex(faceCenter_x - faceHalfWidth * 0.6, faceCenter_y - faceHalfHeight * 0.42);
    curveVertex(faceCenter_x - faceHalfWidth * 0.7, faceCenter_y - faceHalfHeight * 0.35);
    curveVertex(faceCenter_x - faceHalfWidth * 0.8, faceCenter_y - faceHalfHeight * 0.20);
    curveVertex(faceCenter_x - faceHalfWidth * 0.9, faceCenter_y + faceHalfHeight * 0.0);
    curveVertex(faceCenter_x - faceHalfWidth * 0.9, faceCenter_y + faceHalfHeight * 0.16);
    curveVertex(faceCenter_x - faceHalfWidth * 0.9, faceCenter_y + faceHalfHeight * 0.365);
    

    curveVertex(faceCenter_x - faceHalfWidth * 0.40, faceCenter_y + faceHalfHeight * 0.88);
    curveVertex(faceCenter_x - faceHalfWidth * 0.20, faceCenter_y + faceHalfHeight * 0.97);
    curveVertex(faceCenter_x - faceHalfWidth * 0.00, faceCenter_y + faceHalfHeight * 1.00);
    curveVertex(faceCenter_x + faceHalfWidth * 0.20, faceCenter_y + faceHalfHeight * 0.97);
    curveVertex(faceCenter_x + faceHalfWidth * 0.40, faceCenter_y + faceHalfHeight * 0.88);  
    
    curveVertex(faceCenter_x + faceHalfWidth * 0.9, faceCenter_y + faceHalfHeight * 0.365);  
    curveVertex(faceCenter_x + faceHalfWidth * 0.9, faceCenter_y + faceHalfHeight * 0.16);  
    curveVertex(faceCenter_x + faceHalfWidth * 0.9, faceCenter_y + faceHalfHeight * 0.00); 
    curveVertex(faceCenter_x + faceHalfWidth * 0.8, faceCenter_y - faceHalfHeight * 0.20);
    curveVertex(faceCenter_x + faceHalfWidth * 0.7, faceCenter_y - faceHalfHeight * 0.35); 
    curveVertex(faceCenter_x + faceHalfWidth * 0.6, faceCenter_y - faceHalfHeight * 0.42); 
    curveVertex(faceCenter_x + faceHalfWidth * 0.6, faceCenter_y - faceHalfHeight * 0.42); 
  endShape();

// hairline: Bangs
  stroke(50);
  strokeWeight(4);
  fill(53,40,30);
  bezier(faceCenter_x - faceHalfWidth * 0.81, 
        faceCenter_y - faceHalfHeight * 0.42, 
        
        faceCenter_x - faceHalfWidth * 0.40, 
        faceCenter_y - faceHalfHeight * 0.30, 

        faceCenter_x - faceHalfWidth * 0.00, 
        faceCenter_y - faceHalfHeight * 0.22, 
        
        faceCenter_x + faceHalfWidth * 0.81,
        faceCenter_y - faceHalfHeight * 0.42);

}

// EYE FUNCTION ***
void travisEyes(float leftEye_x, float  rightEye_x, float eye_y, float eyeWidth, float eyeHeight, float irisDiam, float pupilDiam){

if (mouseX > (leftEye_x-((eyeWidth/2)*1.4)) && mouseX < (leftEye_x + ((eyeWidth/2)*1.4)) &&  mouseY > eye_y-(eyeHeight/2)*1.1 && mouseY < eye_y+(eyeHeight/2)*1.1){
    fill(101, 53, 33);
    noStroke();
    quad(leftEye_x-eyeWidth/2, eye_y+pupilDiam*.3, leftEye_x-eyeWidth/2, eye_y-pupilDiam*.3, leftEye_x+ eyeWidth/2, eye_y-pupilDiam*.3,leftEye_x+ eyeWidth/2, eye_y+pupilDiam*.3);}               
else {
  //Left eye
  strokeWeight(2);
  stroke(145,145,145);
  fill(240, 230, 230);
  ellipse(leftEye_x, eye_y, eyeWidth, eyeHeight);
//Left Iris
  strokeWeight(1);
  stroke(40);
  fill(139,69,19);
  ellipse(leftEye_x, eye_y, irisDiam, irisDiam);
//Left Pupil
  stroke(50);
  fill(90);
  ellipse(leftEye_x, eye_y, pupilDiam, pupilDiam);
}

if (mouseX > (rightEye_x-((eyeWidth/2)*1.4)) && mouseX < (rightEye_x + ((eyeWidth/2)*1.4)) &&  mouseY > eye_y-(eyeHeight/2)*1.1 && mouseY < eye_y+(eyeHeight/2)*1.1){
    fill(101, 53, 33);
    noStroke();
    quad(rightEye_x-eyeWidth/2, eye_y+pupilDiam*.2, rightEye_x-eyeWidth/2, eye_y-pupilDiam*.2, rightEye_x+ eyeWidth/2, eye_y-pupilDiam*.2,rightEye_x+ eyeWidth/2, eye_y+pupilDiam*.2);}               
else {
//Right eye
  strokeWeight(2);
  stroke(145,145,145);
  fill(240, 230, 230);
  ellipse(rightEye_x, eye_y, eyeWidth, eyeHeight);
//Right Iris
  strokeWeight(1);
  stroke(40);
  fill(139,69,19);
  ellipse(rightEye_x, eye_y, irisDiam, irisDiam);
//Right Pupil
  stroke(50);
  fill(90);
  ellipse(rightEye_x, eye_y, pupilDiam, pupilDiam);
}
} 

// EYEBROW FUNCTION ***
void travisEyeBrows(float eyeBrow_y, float leftEye_x, float rightEye_x, float eyeBrowWidth, float eyeBrowDip, float faceHeight){
// Eyebrow - left side
  float eyeBrowLeft_x1 = leftEye_x - eyeBrowWidth / 2;
  float eyeBrowLeft_x2 = leftEye_x - eyeBrowWidth * 0.2;
  float eyeBrowLeft_x3 = leftEye_x + eyeBrowWidth * 0.2;
  float eyeBrowLeft_x4 = leftEye_x + eyeBrowWidth / 2;
  strokeWeight(6 * (faceHeight / 400));
  stroke(101, 53, 33);
  noFill();
  beginShape();
    curveVertex(eyeBrowLeft_x1, eyeBrow_y * eyeBrowDip);
    curveVertex(eyeBrowLeft_x1, eyeBrow_y * eyeBrowDip);
    curveVertex(eyeBrowLeft_x2, eyeBrow_y);
    curveVertex(eyeBrowLeft_x3, eyeBrow_y);
    curveVertex(eyeBrowLeft_x4, eyeBrow_y * eyeBrowDip);
    curveVertex(eyeBrowLeft_x4, eyeBrow_y * eyeBrowDip);
  endShape();

// Eyebrow - right side
  float eyeBrowRight_x1 = rightEye_x - eyeBrowWidth / 2;
  float eyeBrowRight_x2 = rightEye_x - eyeBrowWidth * 0.2;
  float eyeBrowRight_x3 = rightEye_x + eyeBrowWidth * 0.2;
  float eyeBrowRight_x4 = rightEye_x + eyeBrowWidth / 2;
  beginShape();
    curveVertex(eyeBrowRight_x1, eyeBrow_y * eyeBrowDip);
    curveVertex(eyeBrowRight_x1, eyeBrow_y * eyeBrowDip);
    curveVertex(eyeBrowRight_x2, eyeBrow_y);
    curveVertex(eyeBrowRight_x3, eyeBrow_y);
    curveVertex(eyeBrowRight_x4, eyeBrow_y * eyeBrowDip);
    curveVertex(eyeBrowRight_x4, eyeBrow_y * eyeBrowDip);
  endShape();
}

// NOSE FUNCTION ***
void travisNose(float faceCenter_x, float noseHalfWidth, float noseLength, float noseLeftTop_y, float noseLeftTop_x, float noseRightTop_x, float noseRightTop_y){
// nose - left side
  strokeWeight(2);
  stroke(0);
  beginShape();
  triangle(noseLeftTop_x + noseHalfWidth * 0.35, noseLeftTop_y + noseLength * 0.857, 
      faceCenter_x, noseLeftTop_y, 
      noseRightTop_x - noseHalfWidth * 0.35, noseRightTop_y + noseLength * 0.857);
}

// MOUTH FUNCTION ***
void travisMouth(float faceHeight, float faceCenter_x, float mouthHalfLength, float mouthCenter_y){
  noFill();
  strokeWeight(10 * (faceHeight / 400));
  stroke(101, 53, 33);
  bezier(faceCenter_x - mouthHalfLength, mouthCenter_y * 0.99, faceCenter_x - mouthHalfLength * 0.5, mouthCenter_y, faceCenter_x + mouthHalfLength * 0.5, mouthCenter_y, faceCenter_x + mouthHalfLength, mouthCenter_y * 0.99);
}

// HAIR FUNCTION
void travisHair(float faceCenter_x, float faceCenter_y, float faceWidth, float faceHeight){
  noStroke();
//  stroke(101, 53, 33);
  //fill(101, 53, 33);
  fill(53,40,30);
  ellipse(faceCenter_x, faceCenter_y * 0.93, faceWidth * 1.05, faceHeight * 0.70);


}

void travisEars(float faceCenter_x, float faceCenter_y, float faceWidth, float faceHeight) {
  fill(252, 234, 212);
  strokeWeight(2);
  stroke(0);
 // left ear
  //ellipse(faceCenter_x * 0.6, faceCenter_y * 1.1, faceWidth * 0.18, faceHeight * 0.15);
  ellipse(faceCenter_x - 0.48 * faceWidth, faceCenter_y + .06 * faceHeight, faceWidth * 0.18, faceHeight * 0.15);

  fill(252, 234, 212);
  strokeWeight(2);
  stroke(0);
  // right ear
  //ellipse(faceCenter_x * 1.4, faceCenter_y * 1.1, faceWidth * 0.18, faceHeight * 0.15);
  ellipse(faceCenter_x + 0.48 * faceWidth, faceCenter_y + .06 * faceHeight, faceWidth * 0.18, faceHeight * 0.15);
}
