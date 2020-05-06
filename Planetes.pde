
class Planetes {
  float x,y,rayon,ellipse,distanceSurface,vitesse,teta; // toutes les informations pour le deplacement de la planete
  PImage image; // image de la planete
  
  Planetes (float xp, float yp, float r, float e,float d, float v, float t, String file_name) {
    x = xp;
    y = yp;
    rayon=r;
    ellipse=e;
    distanceSurface= d ;
    vitesse=v;
    teta=t;
    image=loadImage(file_name); // chargement de l'image dans l'objet avec le nom du fichier donne
  }

  void affiche(){
    background(35);
    stroke(250);
    noFill();
    calcul_coord();
    ellipse(x, y, ellipse, ellipse);
    image(image, x, y, r, r);
    background(35);
    stroke(250);
    noFill();
  }
  
  void calcul_coord(){
  x = x + distanceSurface*cos(teta);
  y = y + distanceSurface*sin(teta);
  teta = teta + vitesse;
  }
}

//Planetes []lesplanetes= new Planetes[9];
//void setup() {
//  fullScreen();
//  background(20,20,40);
//  noSmooth();
//  imageMode(CENTER);
//  ellipseMode(CENTER);
//  for(int k=0; k<9;k=k+1){
//    lesplanetes[k]= new Planetes(1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, "image.png"); // les valeurs qui seront entre parenthese seront dans le fichier
//  } 
//}
//void draw() {
//  background(#FFFFFF);
//  for(int k=0; k<6; k=k+1){
//    lesplanetes[k].affiche();
//  }
//}
