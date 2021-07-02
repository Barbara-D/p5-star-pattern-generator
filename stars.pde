void setup() {
  size(800, 800);
  frameRate(30);
  background(220);
  //background(#F9665E);
  //background(#799FCB);
  //noLoop();
}

void draw() {
  
  float posX= random(1);
  float posY=random(1);
  float siz= random(0.5, 1.5);
  float rot=random(360);
  float gr= random(0.25, 1.25);
  //for (int i=0; i<200; i++)

     pushMatrix();
    translate(width*posX, height*posY);
   rotate(rot);
    stroke(123*gr);
    strokeWeight(9*siz);

    star(0, 0, 50*siz, 100*siz, 5); 
    star(0, 0, 30*siz, 60*siz, 5); 
    star(0, 0, 10*siz, 20*siz, 5);
    popMatrix();
}

void mousePressed()
{
  background(220);
  //redraw();
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
