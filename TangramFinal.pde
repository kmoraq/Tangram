int PosicionXA=20;
int PosicionYA=600;
int RotarA= 0;
color colorA= color(255, 204, 204);
boolean MoverPiezaA;

int PosicionXB=160;
int PosicionYB=700;
int RotarB= 0;
int RotarY= 0;
int RotarY2=0;
boolean fig=true;
color colorB= color(204, 229, 255);
boolean MoverPiezaB;

int PosicionXC=320;
int PosicionYC=700;
int RotarC= 0;
color colorC= color(204, 255, 255);
boolean MoverPiezaC;

int PosicionXD=460;
int PosicionYD=700;
int RotarD= 0;
color colorD= color(229, 204, 255);
boolean MoverPiezaD;

int PosicionXE=610;
int PosicionYE=700;
int RotarE= 0;
color colorE= color(229, 255, 204);
boolean MoverPiezaE;

int PosicionXF=760;
int PosicionYF=700;
int RotarF= 0;
color colorF= color(255, 229, 204);
boolean MoverPiezaF;

int PosicionXG=1010;
int PosicionYG=700;
int RotarG= 0;
color colorG= color(255, 255, 204);
boolean MoverPiezaG;

int figure;
boolean select;
color colorR = 21;
int back;
boolean cambio=false;
boolean cambio2=false;
void setup() {
  size(1080, 900);
  
}

void keyPressed() {
  if (MoverPiezaA) {

    if (key == CODED) {
      if (keyCode == LEFT) {
        RotarA +=1;
      }
    }

    if (keyCode == RIGHT) {
      RotarA -=1;
    }
  }
  if (MoverPiezaB) {

    if (key == CODED) {
      if (keyCode == LEFT) {
        RotarB+=1;
      }
    }

    if (keyCode == RIGHT) {
      RotarB -=1;
    }
  }

  if (key == CODED && MoverPiezaB==true) {
    if (keyCode == UP) {
      
      fig=true;
      RotarY =1;
      RotarY2=-1;
    }
  }
if (key == CODED && MoverPiezaB==true) {
  if (keyCode == DOWN) {
    fig=false;
    RotarY =1;
    RotarY2=-1;
  }
}
  if (MoverPiezaC) {
    
    if (key == CODED) {
      if (keyCode == LEFT) {
        RotarC +=1;
      }
    }
 
    if (keyCode == RIGHT) {
      RotarC -=1;
    }
  }
  if (MoverPiezaD) {
 
    if (key == CODED) {
      if (keyCode == LEFT) {
        RotarD +=1;
      }
    }
 
    if (keyCode == RIGHT) {
      RotarD -=1;
    }
  }
  if (MoverPiezaE) {
   
    if (key == CODED) {
      if (keyCode == LEFT) {
        RotarE +=1;
      }
    }
    if (keyCode == RIGHT) {
      RotarE -=1;
    }
  }
  if (MoverPiezaF) {
    if (key == CODED) {
      if (keyCode == LEFT) {
        RotarF +=1;
      }
    }

    if (keyCode == RIGHT) {
      RotarF -=1;
    }
  }
  if (MoverPiezaG) {
  
    if (key == CODED) {
      if (keyCode == LEFT) {
        RotarG +=1;
      }
    }

    if (keyCode == RIGHT) {
      RotarG -=1;
    }
  }
 if (key == ' ') {
    select = false;
    MoverPiezaA=false;
    MoverPiezaB=false;
    MoverPiezaC=false;
    MoverPiezaD=false;
    MoverPiezaE=false;
    MoverPiezaF=false;
    MoverPiezaG=false;
  }

  if (key == '1'){
  back=1;
  }
  if (key == '2'&& cambio==true){
  back=2;
  }
  if (key == '3'&& cambio2==true){
  back=3;
  }
}


void draw() {

  background(20);
fill(colorR);
  stroke(255);
  rect(750, 250, 200, 200);

    textSize(32);
    textAlign(CENTER, CENTER);
    fill(255, 255, 255);
    text("Tangram", 540, 40);
    textSize(30);
    text("Primer reto: Intente completar con las figuras, la silueta dada.", 540, 110);
    
    pushMatrix();
    textSize(28);
    textAlign(CENTER, CENTER);
    fill(255, 255, 255);
    text("Instrucciones:", 200, 200);

    textSize(15);
    textAlign(LEFT);
    
    text("1. Para seleccionar una pieza haga clic izquierdo sobre ella.", 100, 250);
    text("2. Para soltar una pieza haga clic derecho sobre ella o presione espacio.", 100, 290);
    text("3. Para mover una pieza selecciónela y mueva el mouse.", 100, 330);
    text("4. Para rotar una pieza use:", 100, 370);
    text("← para rotar a la izquierda.", 120, 410);
    text("→ para rotar a la derecha.", 120, 450);
    text("↑ para rotar en Y positivo al paralelogramo.", 120, 490);
    text("↓ para rotar en Y negativo al paralelogramo.", 120, 530);

    popMatrix(); 

    pushMatrix();
    translate(PosicionXA, PosicionYA);
    rotate(RotarA*PI/4);
    fill(colorA);
    triangle(0, 0, 0, 200, 100, 100);
    popMatrix();

    pushMatrix();
    translate(PosicionXB, PosicionYB);
    rotate(RotarB*PI/4);

    if (fig) {
      fill(colorB);
      quad(0, 0, 100, 0, 150, 50, 50, 50);
    } else {
   
      scale(RotarY, RotarY2);
      fill(colorB);
      quad(0, 0, 100, 0, 150, 50, 50, 50);
    }
    popMatrix();

    pushMatrix();
    translate(PosicionXC, PosicionYC);
    rotate(RotarC*PI/4);
    fill(colorC);
    triangle(0, 0, 100, 0, 50, 50);
    popMatrix();

    pushMatrix();
    translate(PosicionXD, PosicionYD);
    rotate(RotarD*PI/4);
    fill(colorD);
    triangle(0, 0, 100, 0, 100, 100);
    popMatrix();

    pushMatrix();
    translate(PosicionXE, PosicionYE);
    rotate(RotarE*PI/4);
    fill(colorE);
    quad(0, 0, 50, 50, 100, 0, 50, -50);
    popMatrix();

    pushMatrix();
    translate(PosicionXF, PosicionYF);
    rotate(RotarF*PI/4);
    fill(colorF);
    triangle(0, 0, 100, -100, 200, 0);
    popMatrix();

    pushMatrix();
    translate(PosicionXG, PosicionYG);
    rotate(RotarG*PI/4);
    fill(colorG);
    triangle(0, 0, 50, -50, 50, 50);
    popMatrix();

    loadPixels();
     int c=0;
  for (int i=0; i<(width*height); i++) {
    if (pixels[i]==-15395563) {
      c++;
    }
  }
    updatePixels();
    if (c<50) {
      cambio=true;
     textSize(15);
    textAlign(LEFT);
    text("Usted ha superado el primer reto. Presione 2 para continuar con el segundo reto.",120,570);
    fill(255,255,255);
    
    }
    
     switch(back){
       case 2:
    background(20);
    fill(255,255,255);
    textSize(32);
    textAlign(CENTER,CENTER);
    text("Segundo reto: Intente completar con las figuras, la silueta dada.",540,40);
    textSize(15);
    textAlign(LEFT);
    text("Presione 1 para volver al primer reto.",100,620);
    fill(colorR);
    triangle(540,200,340,400,740,400); 
    pushMatrix();
    translate(PosicionXA, PosicionYA);
    rotate(RotarA*PI/4);
    fill(colorA);
    stroke(255);
    triangle(0, 0, 0, 200, 100, 100);
    popMatrix();

    pushMatrix();
    translate(PosicionXB, PosicionYB);
    rotate(RotarB*PI/4);

    if (fig) {
      fill(colorB);
      quad(0, 0, 100, 0, 150, 50, 50, 50);
    } else {
      scale(RotarY, RotarY2);
      fill(colorB);
      quad(0, 0, 100, 0, 150, 50, 50, 50);
    }
    popMatrix();

    pushMatrix();
    translate(PosicionXC, PosicionYC);
    rotate(RotarC*PI/4);
    fill(colorC);
    triangle(0, 0, 100, 0, 50, 50);
    popMatrix();

    pushMatrix();
    translate(PosicionXD, PosicionYD);
    rotate(RotarD*PI/4);
    fill(colorD);
    triangle(0, 0, 100, 0, 100, 100);
    popMatrix();

    pushMatrix();
    translate(PosicionXE, PosicionYE);
    rotate(RotarE*PI/4);
    fill(colorE);
    quad(0, 0, 50, 50, 100, 0, 50, -50);
    popMatrix();

    pushMatrix();
    translate(PosicionXF, PosicionYF);
    rotate(RotarF*PI/4);
    fill(colorF);
    triangle(0, 0, 100, -100, 200, 0);
    popMatrix();

    pushMatrix();
    translate(PosicionXG, PosicionYG);
    rotate(RotarG*PI/4);
    fill(colorG);
    triangle(0, 0, 50, -50, 50, 50);
    popMatrix();
    
    loadPixels();
     int d=0;
  for (int i=0; i<(width*height); i++) {
    if (pixels[i]==-15395563) {
      d++;
    }
  }
    updatePixels();
    if (d<70) {
      cambio=true;
     textSize(15);
    textAlign(LEFT);
    text("Usted ha superado el segundo reto. Presione 3 para continuar con el tercer reto.",120,570);
    fill(255,255,255);
    
    }
    break;
    case 3:
    background(20);
    fill(255,255,255);
    textSize(32);
    textAlign(CENTER,CENTER);
    text("Tercer reto: Intente completar con las figuras, la silueta dada.",540,40);
    textSize(15);
    textAlign(LEFT);
    text("Presione 1 para volver al primer reto, o 2 para volver al segundo reto.",100,620);
    
    pushMatrix();
    stroke(255);
    fill(colorR);
    translate(670,400);
    rotate((3*PI)/4);
    triangle(0, 0, 200, 0, 200, 200);
    popMatrix();
    
    pushMatrix();
    translate(430,300);
    fill(colorR);
    quad(0,0,100,-100,200,0,100,100);
    popMatrix();
    
    pushMatrix();
    
    translate(PosicionXA, PosicionYA);
    rotate(RotarA*PI/4);
    fill(colorA);
    triangle(0, 0, 0, 200, 100, 100);
    popMatrix();

    pushMatrix();
    translate(PosicionXB, PosicionYB);
    rotate(RotarB*PI/4);

    if (fig) {
      fill(colorB);
      quad(0, 0, 100, 0, 150, 50, 50, 50);
    } else {
      scale(RotarY, RotarY2);
      fill(colorB);
      quad(0, 0, 100, 0, 150, 50, 50, 50);
    }
    popMatrix();

    pushMatrix();
    translate(PosicionXC, PosicionYC);
    rotate(RotarC*PI/4);
    fill(colorC);
    triangle(0, 0, 100, 0, 50, 50);
    popMatrix();

    pushMatrix();
    translate(PosicionXD, PosicionYD);
    rotate(RotarD*PI/4);
    fill(colorD);
    triangle(0, 0, 100, 0, 100, 100);
    popMatrix();

    pushMatrix();
    translate(PosicionXE, PosicionYE);
    rotate(RotarE*PI/4);
    fill(colorE);
    quad(0, 0, 50, 50, 100, 0, 50, -50);
    popMatrix();

    pushMatrix();
    translate(PosicionXF, PosicionYF);
    rotate(RotarF*PI/4);
    fill(colorF);
    triangle(0, 0, 100, -100, 200, 0);
    popMatrix();

    pushMatrix();
    translate(PosicionXG, PosicionYG);
    rotate(RotarG*PI/4);
    fill(colorG);
    triangle(0, 0, 50, -50, 50, 50);
    popMatrix();
    
    loadPixels();
     int e=0;
  for (int i=0; i<(width*height); i++) {
    if (pixels[i]==-15395563) {
      e++;
    }
  }
    updatePixels();
    if (e<20) {
      
     textSize(15);
    textAlign(LEFT);
    text("Usted ha superado el tercer reto ¡FELICITACIONES!",120,570);
    fill(255,255,255);
    
    }
  }
     
}


  void mouseClicked() {
    if (mouseButton == LEFT) {
      if (get(mouseX, mouseY)==colorA) {
        figure = 1;
        select= true;
        MoverPiezaA=true;
      }
      if (get(mouseX, mouseY)==colorB) {
        figure = 2;
        select= true;
        MoverPiezaB=true;
      }
      if (get(mouseX, mouseY)==colorC) {
        figure = 3;
        select= true;
        MoverPiezaC=true;
      }
      if (get(mouseX, mouseY)==colorD) {
        figure = 4;
        select= true;
        MoverPiezaD=true;
      }
      if (get(mouseX, mouseY)==colorE) {
        figure = 5;
        select= true;
        MoverPiezaE=true;
      }
      if (get(mouseX, mouseY)==colorF) {
        figure = 6;
        select= true;
        MoverPiezaF=true;
      }
      if (get(mouseX, mouseY)==colorG) {
        figure = 7;
        select= true;
        MoverPiezaG=true;
      }
    } else if (mouseButton == RIGHT) {
      select = false;
      MoverPiezaA=false;
      MoverPiezaB=false;
      MoverPiezaC=false;
      MoverPiezaD=false;
      MoverPiezaE=false;
      MoverPiezaF=false;
      MoverPiezaG=false;
    }
    
  }



  void mouseMoved() {

    if (select) {
      switch(figure) {
      case 1: 
        PosicionXA = mouseX;
        PosicionYA = mouseY;
        break;
      case 2:
        PosicionXB = mouseX;
        PosicionYB = mouseY;
        break;
      case 3:
        PosicionXC = mouseX;
        PosicionYC = mouseY;
        break;
      case 4:
        PosicionXD = mouseX;
        PosicionYD = mouseY;
        break; 
      case 5:
        PosicionXE = mouseX;
        PosicionYE = mouseY;
        break;
      case 6:
        PosicionXF = mouseX;
        PosicionYF = mouseY;
        break;
      case 7:
        PosicionXG = mouseX;
        PosicionYG = mouseY;
        break;
      }
    }
  }
  

  