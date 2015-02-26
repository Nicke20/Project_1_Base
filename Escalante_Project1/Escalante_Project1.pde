
int step;
float rotateAmt= 0.0;

void setup(){
 size(800, 800);
 step=0; 
}

void draw(){
  background(127);
  fill(156, 33, 0);
  strokeWeight(2);
  ellipseMode(CENTER);
      fill(242, 255, 252);
      ellipse(400, 400, 30, 800);
      ellipse(400, 400, 800, 30);
      ellipse(400, 400, 800, 30);
  fill(156, 33, 0);
  rect(400, 400, 50, 50);
  ellipse(0+step, 700, 50, 50);
  fill(255);
  ellipse(0, 700-step, 50, 50);
  fill(0);
  ellipse(800, 0+step, 50, 50);
  fill(107);
  ellipse(0, 700, 50, 50);
  fill(57, 109, 35);
  ellipse(800, 0, 50, 50);
  fill(146, 25, 252);
  ellipse(0, 0, 50, 50);

  
  step++;
  
  pushMatrix();
    translate(width/2, height/2);
    rotate(rotateAmt*TWO_PI/360);
    rectMode(CENTER);
    rect(0, 0, 8, 238, 68); //grayish blue rect center
    fill(25, 243, 30);
    rect(0, 0, 8, 238, 68); //sky blue rect center
    fill(232, 184, 12);
    rect(width/2, height/2, 50, 50); //center rect
    fill(0); //black square
    rotate(rotateAmt*TWO_PI/360);
    rect(-100, 100, 50, 50);
    fill(12, 52, 82); //color for ellipse
    pushMatrix();
      translate(200, 0);
      ellipse(0, 0, 25, 25); 
      fill(20, 163, 138);
      ellipse(75, 75, 50, 50); //teal circle
      translate(201, 0);
      fill(252, 237, 25); //yellow triangle
      triangle(30, 75, 58, 20, 86, 75);
      rect(-200, 100, 50, 50);
      fill(255, 84, 20, 127); //orange rect
      rect(-400, 100, 50, 50);
     
      
      if (keyPressed) {
        if (key=='w') {
          fill(127);
          translate(10, 0);
          rect(-199, 99, 60, 60);
          ellipse(0, 0, 25, 25);
          fill(0);
          rect(0, 0, 8, 238);
        }
      }
        
    popMatrix();
    
  popMatrix();
  
  fill(18, 183, 232, 127);
  rect(width/2, height/2, 150, 150); //center big ellipse
  fill( 95, 101, 125, 120);
  rect(width/2, height/2, 100, 100);
  rotateAmt++; 
  
}
