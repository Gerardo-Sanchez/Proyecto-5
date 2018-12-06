import processing.sound.*;

Espectro espectro;

int bands = 128;
float smoothingFactor = 0.2;
float[] sum = new float[bands];
int scale = 10;
float barWidth;

AudioIn input;
FFT fft;
Amplitude loudness;

Menu menu;

Superformula uno;
Superformula dos;
Superformula tres;
Superformula cuatro;
Superformula cinco;
Superformula seis;
Superformula siete;
Superformula ocho;

Luciernaga ichi;
Luciernaga ni;
Luciernaga san;
Luciernaga chi;
Luciernaga go;
Luciernaga roku;
Luciernaga shichi;
Luciernaga hachi;
Luciernaga kyu;
Luciernaga ju;
Luciernaga juichi;
Luciernaga juni;
Luciernaga jusan;
Luciernaga juchi;
Luciernaga jugo;
Luciernaga juroku;
Luciernaga jushichi;
Luciernaga juhachi;
Luciernaga jukyu;
Luciernaga niju;

int p = 0;

PImage luci;
PImage fondo;
PImage pplano;
PImage splano;
PImage sup;

void setup(){
  size(720, 720);
  
  barWidth = 2700/float(bands);
  
  input = new AudioIn(this, 0);
  loudness = new Amplitude(this);
  
  fft = new FFT(this, bands);
  fft.input(input);
  
  loudness.input(input);
  
  espectro = new Espectro();
  
  menu = new Menu();
  
  uno = new Superformula(30, 0, 2, 2, 10, 1, 2, 2);
  dos = new Superformula(30, 0, 3, 4, 12, 1, 3, 3);
  tres = new Superformula(30, 0, 4, 4, 8, 1, 5, 5);
  cuatro = new Superformula(30, 0, 2, 2, 6, 1, 5, 2);
  cinco = new Superformula(30, 0, 2, 2, 10, 1, 2, 2);
  seis = new Superformula(30, 0, 5, 4, 12, 1, 3, 3);
  siete = new Superformula(30, 0, 4, 6, 8, 1, 5, 5);
  ocho = new Superformula(30, 0, 7, 3, 8, 1, 5, 5);
  
  ichi = new Luciernaga(random(5, 720), random(10, 730));
  ni = new Luciernaga(random(5, 720), random(10, 730));
  san = new Luciernaga(random(5, 720), random(10, 730));
  chi = new Luciernaga(random(5, 720), random(10, 730));
  go = new Luciernaga(random(5, 720), random(10, 730));
  roku = new Luciernaga(random(5, 720), random(10, 730));
  shichi = new Luciernaga(random(5, 720), random(10, 730));
  hachi = new Luciernaga(random(5, 720), random(10, 730));
  kyu = new Luciernaga(random(5, 720), random(10, 730));
  ju = new Luciernaga(random(5, 720), random(10, 730));
  juichi = new Luciernaga(random(5, 720), random(10, 730));
  juni = new Luciernaga(random(5, 720), random(10, 730));
  jusan = new Luciernaga(random(5, 720), random(10, 730));
  juchi = new Luciernaga(random(5, 720), random(10, 730));
  jugo = new Luciernaga(random(5, 720), random(10, 730));
  juroku = new Luciernaga(random(5, 720), random(10, 730));
  jushichi = new Luciernaga(random(5, 720), random(10, 730));
  juhachi = new Luciernaga(random(5, 720), random(10, 730));
  jukyu = new Luciernaga(random(5, 720), random(10, 730));
  niju = new Luciernaga(random(5, 720), random(10, 730));
  
  fondo = loadImage("Paisaje de bosque.png");
  pplano = loadImage("Paisaje de bosque3.png");
  splano = loadImage("Paisaje de bosque2.png");
  sup = loadImage("Paisaje de bosque4.png");
}

void draw(){ 
  menu.display();
}

void keyPressed () {
  if (key == 'a' || key == 'A'){
    p = p+1;
    }
}
