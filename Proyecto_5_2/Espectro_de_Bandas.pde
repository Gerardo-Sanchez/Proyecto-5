class Espectro{
  
  float a;
  float b;
  float c;
  float d;
  float e;
  float f;
  float g;
  float h;
  float i;
  float j;
  float k;
  float l;
  float m;
  float n;
  float o;
  float p;
  float q;
  float r;
  float s;
  float t;
  
  Espectro(){
  }
  
  void display(){
    background(250);
    fill(30,0);
    noStroke();
  
    fft.analyze();
  
    for (int i = 0; i < bands; i++) {
      sum[i] += (fft.spectrum[i] - sum[i]) * smoothingFactor;
  
      rect(i*barWidth, height, barWidth, -sum[i]*height*scale); 
    }
    
    pushMatrix();
    image(fondo, 0, 0);
    image(splano, 0, 0);
    
    a = -sum[0]*height*scale;
    ichi.display();
    if(a <= -3){
      ichi.mover();
    }
    
    b = -sum[1]*height*scale;
    ni.display();
    if(a <= -5){
      ni.mover();
    }
    
    c = -sum[2]*height*scale;
    san.display();
    if(a <= -7){
      san.mover();
    }
    
    d = -sum[3]*height*scale;
    chi.display();
    if(a <= -7){
      chi.mover();
    }
    
    e = -sum[4]*height*scale;
    go.display();
    if(a <= -5){
      go.mover();
    }
    
    f = -sum[5]*height*scale;
    roku.display();
    if(a <= -5){
      roku.mover();
    }
    
    g = -sum[6]*height*scale;
    shichi.display();
    if(a <= -5){
      shichi.mover();
    }
    
    h = -sum[7]*height*scale;
    hachi.display();
    if(a <= -5){
      hachi.mover();
    }
    
    i = -sum[8]*height*scale;
    kyu.display();
    if(a <= -3){
      kyu.mover();
    }
    
    j = -sum[9]*height*scale;
    ju.display();
    if(a <= -7){
      ju.mover();
    }
    
    k = -sum[10]*height*scale;
    juichi.display();
    if(a <= -3){
      juichi.mover();
    }
    
    l = -sum[11]*height*scale;
    juni.display();
    if(a <= -5){
      juni.mover();
    }
    
    m = -sum[12]*height*scale;
    jusan.display();
    if(a <= -7){
      jusan.mover();
    }
    
    n = -sum[13]*height*scale;
    juchi.display();
    if(a <= -7){
      juchi.mover();
    }
    
    o = -sum[14]*height*scale;
    jugo.display();
    if(a <= -5){
      jugo.mover();
    }
    
    p = -sum[15]*height*scale;
    juroku.display();
    if(a <= -7){
      juroku.mover();
    }
    
    image(pplano, 0, 0);
    
    q = -sum[16]*height*scale;
    jushichi.display();
    if(a <= -3){
      jushichi.mover();
    }
    
    r = -sum[17]*height*scale;
    juhachi.display();
    if(a <= -9){
      juhachi.mover();
    }
    
    s = -sum[18]*height*scale;
    jukyu.display();
    if(a <= -5){
      jukyu.mover();
    }
    
    t = -sum[19]*height*scale;
    niju.display();
    if(a <= -7){
      niju.mover();
    }
    
    image(sup, 0, 0);
    popMatrix();
  }
  
}
