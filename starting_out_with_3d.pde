/*
Author:            Jonathan Irwin
Source of idea:    https://www.behance.net/gallery/18495421/Monilithics-Peruvian-Landscape
Date:              17 November 2014
*/
  size(600, 600, P3D);

  background(0);
  //pushMatrix();
 
  //translate(width/2, height/2);
  rotateY(map(mouseX, 0, width, 0, PI));
  //rotateX(map(mouseX, 0, width, 0, PI));
 lights();
fill(255);
noStroke();
  beginShape();
  vertex(0, 0,0);//top
  for (int z = 1; z < 3; z++){
    for (int y = 1; y < 10; y++){
      for (int x = 1; x < 10; x++){
        if(y%2 == 0){
          if(z%2 == 0){
            vertex(width-60*x, height-60*y, random(50));
          }
          else{
            vertex(width-60*x, 60*y, random(50));
          }
        }
        else{
          if(z%2 == 0){
            vertex(60*x, height-60*y, random(-150,150));
          }
          else{
            vertex(60*x, 60*y, random(-150,150));
          }
        }
      }
    }
  }
  //vertex(width, height, 0);
  endShape();
   

