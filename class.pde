class spaceOrb {                                                                              //Class Space Orb
  int spaceOrbPositionx;                                                                      //Declared Variables
  int spaceOrbPositiony;                                                                      
  float spaceOrbGrowth;




  spaceOrb(int spaceOrbPositionxvalue, int spaceOrbPositionyvalue) {                           //constructor
//Passing the data type into the variable * Initializing variables
    spaceOrbPositionx = spaceOrbPositionxvalue;                                                //tempvalue
    spaceOrbPositiony = spaceOrbPositionyvalue;                                                //tempvalue
    spaceOrbGrowth = 0;                                                                        //Orb growth
  }

  void display() {
    fill(255, 255, 255);                                                                       //orbs color
    ellipse(spaceOrbPositionx, spaceOrbPositiony, spaceOrbGrowth, spaceOrbGrowth);             //orb position and size
    spaceOrbGrowth= random(1, 15);                                                             //makes the orb flash
  }

  void collisionANDcollisionEvent() {                                                          //collision event
    if (playerpositionx == spaceOrbPositionx && playerpositiony == spaceOrbPositiony) {        //if player grabs orb it vanishes and you get a point
      int random = int(random(0, 3));
      spaceOrbPositionx = locationx[random];                                                   //hides orb after received
      spaceOrbPositiony = locationy[random];                                                   //hides orb after recieved
      println("You got the SPACE ORB! ");                                                      //console print
    }
  }
}



//player controls if keycode pressed the player speed is changed causing movement
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      playerpositiony -= playermoveSpeed;
    } else if (keyCode == DOWN) {
      playerpositiony += playermoveSpeed;
    } else if (keyCode == LEFT) {
      playerpositionx -= playermoveSpeed;
    } else if (keyCode == RIGHT) {
      playerpositionx += playermoveSpeed;
    }
  }
}


//animated background
void animatedBG() {
  float spacing = 10;
  for (float i = 0; i < 500; i = i + 20 + spacing) {
    stroke(40);
    line(0, i, 500, i);
    spacing = random(0, .9);
    
    //Sensor shape
    strokeWeight(0.9);
    noFill();
    stroke(20);
    strokeWeight(random(1,4));                                                            //Shakes the shape
    line(50,100,250,400);
    line(450,100,250,400);
    ellipse(250,450,600,600);
    strokeWeight(0.9);
  }
}