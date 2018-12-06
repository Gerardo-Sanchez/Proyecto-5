class Superformula{
  
  color c;
  float theta;
  float a, b;
  float m;
  float n1, n2, n3;
  float r;
  float t = 0;
  
  Superformula(color c_, float theta_, float a_, float b_, float m_, float n1_, float n2_, float n3_){
    
    c = c_;
    theta = theta_;
    a = a_;
    b = b_;
    m = m_;
    n1 = n1_;
    n2 = n2_;
    n3 = n3_;
  }
  
  void display(){
    noFill();
    stroke(c);
    strokeWeight(2);
    
    pushMatrix();  
    translate(width/2, height/2);
    
    rotate(t*0.03);
  
    beginShape();
    
    for(float theta = 0; theta <= 2 * PI; theta += 0.01){
      float rad = r(theta,
        a,
        b,
        m,
        n1,
        //sin(n2 + t),
        //cos(n3 + t)
        n2, 
        n3
      );
      float x = rad * cos(theta) * 50;
      float y = rad * sin(theta) * 50;
      vertex (x, y);
    }
    
    endShape();
    popMatrix();
    
    t += 0.05;   
  }
  
  float r(float theta, float a, float b, float m, float n1, float n2, float n3){
    return pow(pow(abs(cos(m * theta / 4.0) / a), n2) + 
      pow(abs(sin(m * theta / 4.0) / b), n3), -1 / n1);
  }
}
