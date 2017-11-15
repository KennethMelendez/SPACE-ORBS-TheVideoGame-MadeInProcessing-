/*===========================================

      SPACE ORBS THE GAME!
          //By Kenneth Melendez//

===========================================*/


//==============[Global Variables]


//Player
int playerpositiony = 400;                            //Player Position Y coord
int playerpositionx = 50;                             //Player Position X coord
int playermoveSpeed = 20;                             //The Speed of the player

//spaceOrbs declared variables
spaceOrb s1;                                          //Space Orbs class1
spaceOrb s2;                                          //Space Orbs Class2


//==============[Array of random locations]


//array of coordinates
int[] locationx = new int[3];                        //creates 3 arrays for x coord
int[] locationy = new int[3];                        //creates 3 arrays for y coord    

//setup//==================[setup function]
void setup() {                                       //setup function
  size(500, 500);                                    //canvas size
  
  
  s1 = new spaceOrb(50, 200);                        //Initialized Space Orb
  s2 = new spaceOrb(210, 200);                       //Initialized space Orb2

  
  //Array for the X coord                            
  locationx[0] = 50;                            
  locationx[1] = 210;
  locationx[2] = 450;
  //Array for the Y coord
  locationy[0] = 200;
  locationy[1] = 400;
  locationy[2] = 220;
}


//draw//==================[draw function]
void draw() {                                  

  //text(scoreText, 10, 20);
  background(0,0,0);
  animatedBG();



  //player (CALLING PLAYER FUNCTION)
  player();

  //space orbs (CALLING CLASS FUNCTION)
  s1.display();
  s1.collisionANDcollisionEvent();
  
  //Second space orbs
  s2.display();
  s2.collisionANDcollisionEvent();


}


//player//==============[Player function]
void player() {
  fill(255, 255, 255);
  noStroke();
  ellipse(playerpositionx, playerpositiony, random(20,23), random(20,23));
}