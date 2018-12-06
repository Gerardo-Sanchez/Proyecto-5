class Luciernaga{
  
  float x;
  float y;
  float t = 0;
  
  Luciernaga(float x_, float y_){
    x = x_;
    y = y_;
  }
  
  void mover(){
    x = x + random(-0.6, 0.6);
    y = y + random(-2.7);
    
    if(y <= -5){
      x = random(5, 720);
      y = random(700, 730);
    }
  }
  
  void display(){
    t = t + 0.06;
    noStroke();
    fill(246, 238, 140, 235);
    ellipse(x, y, sin(t)*13, sin(t)*13);
  }
  
}
