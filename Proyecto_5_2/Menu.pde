class Menu{
  
  Menu(){
    
  }

  void display(){
    if(p == 1){
      float volume = loudness.analyze();
      int size = int(map(volume, 0, 0.5, 1, 350));
      
      background(245);
      
      if(size > 1){
        cuatro.m += 0.001;
      }
      cuatro.display();
      
      uno.n2 = size/10;
      uno.n3 = size/10;
      uno.m = size/10;
      uno.display();
      
      dos.n2 = size/10;
      dos.n3 = size/10;
      dos.m = size/2;
      dos.display();
      
      tres.a = size/10;
      tres.b = size/10;
      tres.n1 = size/10;
      tres.n2 = size/10;
      tres.n3 = size/10;
      tres.display();
      
      cinco.n2 = size/10;
      cinco.n3 = size/10;
      cinco.display();
      
      seis.n3 = size/10;
      seis.m = size/2;
      seis.display();
      
      siete.a = size/10;
      siete.b = size/10;
      siete.n1 = size/10;
      siete.display();
      
      ocho.a = size/10;
      ocho.b = size/10;
      ocho.n1 = size/10;
      ocho.display();
    }
    
    if(p == 0){
      espectro.display();
    }
    
    if(p >= 2){
      p = 0;
    }
    
  }
  
}
