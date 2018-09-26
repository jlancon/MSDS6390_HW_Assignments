// MSDS 6390 - 402 Homework 1
// Jeffrey Lancon
// Reproduction - Art
// Image - Ronald McDonald by Igor Kislev

PImage bg;

void setup() {
 size(855, 952);
 bg = loadImage("ronald-mcdonald-igor-kislev.jpg");
 bg.resize(width, height);

}

void draw() {
//background(bg);
background(252,244,223);

//Bench
  stroke(110,107,90,200);
  fill(237,229,206);
  strokeWeight(2);
  //Rung2a
  quad(126,405,500,380,500,453,129,473);
  //Rung2b
  quad(600,405,750,405,753,433,600,442);  
   //Rung3
  quad(162,445,749,465,746,534,159,513); 
  //Rung4
  quad(113,534,777,523,777,600,115,605);   
  //Rung5
  quad(87,638,776,545,783,617,91,709);  
  //Rung1
  quad(114,328,772,362,768,417,113,381);   
  
// Ronald's Head  
  stroke(158,73,30);
  fill(232,92,36);
  strokeWeight(2);
  //right side of head
  quad(476,95,494,95,494,180,476,181);

  //left side of head
  quad(565,94,595,97,584,190,555,186);

  //top of head
  quad(488,52,579,60,574,114,484,106);

  //Beard
  quad(502,168,540,173,537,212,498,207);

//Right Arm Line 1
  quad(396,266,404,263,421,337,414,341);
  //right arm Line 2
  quad(380,282,390,279,405,340,395,342);
   //right arm Line 3
  quad(361,290,374,285,391,343,376,348); 
   //right arm Line 4
  quad(345,299,357,296,368,352,357,355);   
   //right arm Line 5
  quad(331,308,342,306,346,357,335,358);   
    //right arm Line 6
  quad(315,307,325,306,325,357,315,358);
      //right arm Line 7
  quad(276,317,305,316,305,358,276,358); 

//Right Hand
  stroke(110,107,90);
  fill(254,207,90);
  strokeWeight(2);
  quad(212,329,272,329,273,358,212,358);

//Waist
  quad(439,385,619,408,605,515,435,491);
//Torso
  quad(433,230,600,224,605,441,435,446);
//Right Pants Leg
  quad(398,512,455,470,539,625,478,665);

//Left Arm
  stroke(158,73,30);
//  stroke(127);
  fill(232,92,36);
  strokeWeight(2);
  //left Arm Line 1
  quad(602,273,654,269,653,279,603,284);
  //left Arm Line 2
  quad(607,298,655,283,657,292,610,308);
  //left Arm Line 3
  quad(610,317,660,301,662,311,614,327);
  //left Arm Line 4
  quad(611,336,659,320,662,329,614,346);
  //left Arm Line 5
  quad(617,355,667,338,671,352,622,367);
  //left Arm Line 6
  quad(620,373,669,357,670,367,624,383);
  //left Arm Line 7
  quad(622,390,669,370,673,380,625,399);
  //left Arm Line 8
  quad(624,408,662,400,665,412,626,420);
  //left Arm Line 9
  quad(618,428,656,431,654,442,618,437);

//Left Leg / Foot (minus 1 section)
  //left leg Line 1
  quad(689,438,700,437,708,486,698,488);
  //left leg Line 3
  quad(647,450,656,448,667,495,657,499);
  //left leg Line 4
  quad(592,471,600,469,616,523,608,527);
  //left leg Line 5
  quad(570,479,581,475,602,536,594,539);
  //left leg Line 6
  quad(553,488,563,483,584,544,574,548);
  //left leg Line 7
  quad(534,500,542,496,558,540,550,544);

  //left foot Line 1
  quad(425,523,521,497,529,543,432,569);
  //left foot Line 2
  quad(425,523,462,516,472,580,436,580);
  //left foot Line 3
  quad(433,576,484,576,484,636,435,635);

//Right Leg / Foot
  //right leg Line 1
  quad(475,659,515,660,516,669,475,669);
  //right leg Line 2
  quad(470,677,511,677,510,685,470,685);
  //right leg Line 3
  quad(474,692,511,692,510,701,475,701);
  //right leg Line 4
  quad(477,708,516,709,515,717,477,717);
  //right leg Line 5
  quad(481,724,516,724,515,732,481,732);

  //right leg foot
  quad(465,836,529,826,538,889,474,900);
  //right ankle
  quad(474,743,513,740,519,845,479,848);

//Left Pants Leg / Sock Stripes / Left Hand
  stroke(110,107,90);
//  stroke(127);
  fill(254,207,90);
  strokeWeight(2);
  //left pants leg
  quad(558,531,683,484,700,541,576,587);
  //left sock stripe
  quad(449,549,514,520,520,535,456,562);
  //right sock stripe
  quad(490,751,501,751,501,824,490,824);
  //left hand
  quad(615,443,652,448,644,525,603,518);
  
//Tie and Left leg line 2
  stroke(158,73,30);
//  stroke(127);
  fill(232,92,36);
  strokeWeight(2);
  //left leg line 2
  quad(663,447,676,442,689,485,678,489);  
  //tie background
  quad(505,237,539,234,551,437,517,439);  

//tie stripe
  stroke(110,107,90);
//  stroke(127);
  fill(254,207,90);
  strokeWeight(2);
  //tie stripe
  quad(527,242,533,242,533,435,527,435); 

//fill(10);
//text( "x: " + mouseX + " y: " + mouseY, mouseX, mouseY );
}
