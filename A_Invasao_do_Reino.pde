


PImage cenario;
PImage dragao;
PImage mago;
PImage espada;
PImage coracao;
PImage lanca;
PImage fogo;
PImage derrota;
PImage menu;


String fase = "Menu";


int heart = 3;

int pontos = 0;


int x = 240;
int vx = 2;

int vbala = 10;
int ybala = 1105;
int xbala;
//int iniy = 200;

boolean existe1 = true;
boolean existe2 = true;
boolean existe3 = true;
boolean existe4 = true;
boolean existe5 = true;
boolean existe6 = true;
boolean existe7 = true;
boolean existe8 = true;
boolean existe9 = true;
boolean existe10 = true;

  int cont = 0;
  
  
int timer = 0;


int veloy = 5;

boolean tala = true;
boolean jose = true;

float rand;

float nsei;

boolean batata = true;

float iniy1 = 0;
float iniy2 = -400;
float iniy3 = -800;
float iniy4 = -1200;
float iniy5 = -1600;
float iniy6 = -2000;
float iniy7 = -2400;
float iniy8 = -2800;
float iniy9 = -3200;
float iniy10 = -3600;


int tbala = 0;
boolean dir;
boolean esq;



void setup(){

size(720,1280);
 cenario = loadImage("cenario.png");
 dragao = loadImage("dragao.png");
 mago = loadImage("mago.png");
 espada = loadImage("espadachim.png");
 coracao = loadImage("coracao.png");
 lanca = loadImage("lanceiro.png");
 fogo = loadImage("fogo.png");
 derrota = loadImage("derrota.png");
 menu = loadImage("logo1.png");
}

void draw(){
  
  

  if(fase == "Menu"){
   Menu(); 
  }
  if(fase == "derrota"){
    cont++;
    Derrota();
  }
  if(fase == "Jogo"){
   imageMode(CENTER);
    image(cenario,width/2,height/2);
    fill(255);
  varini(230,155,305);
  varini2(250,175,325);
  varini3(300,225,375);
  varini4(350,275,425);
  varini5(190,115,265);
  varini6(340,265,415);
  varini7(200,125,275);
  varini8(320,245,395);
  varini9(240,165,315);
  varini10(390,315,465);
 // println(iniy1);
 // println(existe1);
  //rect(400,400,150,150);
    pontos();
  coracoes();
  frameRate(60);

  rectMode(CENTER);
  image(dragao,mouseX,1000);
  move();
  bala();
  paratiro();
  
  
  

  
  }
}
void mousePressed(){
  if(mouseX>x)dir = true;    
  if(mouseX<x) esq = true;
}
void mouseReleased(){
 dir = false;
 esq = false;
}

void move(){
  if(dir) x += vx; 
  if(esq) x -= vx;
}

void bala(){
  
ybala -= vbala;
if(ybala>50)
image(fogo,xbala,ybala);
// som de bola de fogo
fogob.play();
if(ybala<50)
 ybala = 1105;
}
void paratiro(){
 if(ybala<60){
   xbala = mouseX;
 }
}


void varini(float x1, int xmi, int xma){


  
 
  if(existe1){ 
    iniy1 += veloy;
    image(espada, x1, iniy1);
  }
  
 if(xbala > xmi && xbala< xma && ybala< iniy1 + 75 && ybala> iniy1 +55 && existe1){
   pontos++;
   existe1 = false;
   //inimigo morrendo
   
 }
 if(iniy1<1002&& iniy1>998) heart--;//perde vida
//println(iniy1);
//println(ybala);
}

void varini2(float x1, int xmi, int xma){


  
 
  if(existe2){ 
    iniy2 += veloy;
    image(mago,x1, iniy2);
  }
  
 if(xbala > xmi && xbala< xma && ybala< iniy2 + 75 && ybala> iniy2 +55 && existe2){
   pontos++;
   existe2 = false;  
      //inimigo morrendo

 }
  if(iniy2<1002&& iniy2>998) heart--;//perde vida
}
void varini3(float x1, int xmi, int xma){


 
 
  if(existe3){ 
     iniy3 += veloy;
    image(lanca, x1, iniy3);//perde vida
  }
  
 if(xbala > xmi && xbala< xma && ybala< iniy3 + 75 && ybala> iniy3 +55 && existe3){
   pontos++;
   existe3 = false;  
    //inimigo morrendo

 }
 if(iniy3<1002&& iniy3>998) heart--; //perde vida
}
void varini4(float x1, int xmi, int xma){


  
 
  if(existe4){ 
    iniy4 += veloy;
    image(lanca, x1, iniy4);
  }
  
 if(xbala > xmi && xbala< xma && ybala< iniy4 + 75 && ybala> iniy4 +55 && existe4){
   pontos++;
   existe4 = false;  
      //inimigo morrendo

 }
 
  if(iniy4<1002&& iniy4>998) heart--;//perde vida
}
void varini5(float x1, int xmi, int xma){


  
 
  if(existe5){ 
    iniy5 += veloy;
    image(mago,x1, iniy5);
  }
  
 if(xbala > xmi && xbala< xma && ybala< iniy5 + 75 && ybala> iniy5 +55 && existe5){
   pontos++;
   existe5 = false;
      //inimigo morrendo

 }
 
  if(iniy5<1002&& iniy5>998) heart--;//perde vida
}
void varini6(float x1, int xmi, int xma){


  
 
  if(existe6){ 
    iniy6 += veloy;
    image(espada,x1, iniy6);//perde vida
  }
  
 if(xbala > xmi && xbala< xma && ybala< iniy6 + 75 && ybala> iniy6 +55 && existe6){
   pontos++;
  existe6 = false; 
     //inimigo morrendo

 }
 
  if(iniy6<1002&& iniy6>998) heart--;
}
void varini7(float x1, int xmi, int xma){


  
 
  if(existe7){ 
    iniy7 += veloy;
    image(mago,x1, iniy7);//perde vida
  }
  
 if(xbala > xmi && xbala< xma && ybala< iniy7 + 75 && ybala> iniy7 +55 && existe7){
   pontos++;
   existe7 = false; 
      //inimigo morrendo

 }
 
 if(iniy7<1002&& iniy7>998) heart--; //perde vida
 
}
void varini8(float x1, int xmi, int xma){


  
 
  if(existe8){ 
    iniy8 += veloy;
    image(lanca, x1, iniy8);
       //inimigo morrendo

  }
  
 if(xbala > xmi && xbala< xma && ybala< iniy8 + 75 && ybala> iniy8 +55 && existe8){
   pontos++;
   existe8 = false; 
      //inimigo morrendo

 }
 
  if(iniy8<1002&& iniy8>998) heart--;//perde vida
 
}
void varini9(float x1, int xmi, int xma){


  
 
  if(existe9){ 
    iniy9 += veloy;
    image(espada,x1, iniy9);
  }
  
 if(xbala > xmi && xbala< xma && ybala< iniy9 + 75 && ybala> iniy9 +55 && existe9){
   pontos++;
   existe9 = false;
      //inimigo morrendo

 }
 
  if(iniy9<1002&& iniy9>998) heart--;
 
}
void varini10(float x1, int xmi, int xma){
  iniy10 += veloy;
  if(existe10){ 
    
    image(mago, x1, iniy10);
  }
  
 if(xbala > xmi && xbala< xma && ybala< iniy10 + 75 && ybala> iniy10 +55){
   pontos++;
   existe10 = false;
   //reset();
      //inimigo morrendo

 }
 
  if(iniy10<1002&& iniy10>998 && existe10) heart--; //perde vida
  if(iniy10<1282&& iniy10>1278) reset();
 println(iniy10);
}

void coracoes(){
  if(heart>=1)image(coracao,46,1184);
  if(heart>=2)image(coracao,96,1184);
  if(heart>=3)image(coracao,146,1184);
 // println(heart);
  if(heart<= 0) fase = "derrota";
}

void pontos(){
  fill(0);
  textSize(35);
  text("Pontos " + pontos, 450, 1184);
}

void reset(){
 existe1 = true;
 existe2 = true;
 existe3 = true;
 existe4 = true;
 existe5 = true;
 existe6 = true;
 existe7 = true;
 existe8 = true;
 existe9 = true;
 existe10 = true;
 
 iniy1 = 0;
 iniy2 = -400;
 iniy3 = -800;
 iniy4 = -1200;
 iniy5 = -1600;
 iniy6 = -2000;
 iniy7 = -2400;
 iniy8 = -2800;
 iniy9 = -3200;
 iniy10 = -3600;
  
}

void Menu(){
  image(menu,0,0);
  if(mousePressed){
   fase = "Jogo"; 
  }
  
}

void Derrota(){

  println(cont);
  image(derrota, width/2, height/2);
  if(cont >=120){
  if(mousePressed){
    fase = "Jogo";
   heart = 3;
   pontos = 0;
   reset();
   cont = 0;
  }
  }
}
