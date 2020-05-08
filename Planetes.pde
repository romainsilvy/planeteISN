
class Planetes {
  float x,y,rayon,ellipse,distanceSurface,vitesse,teta; // toutes les informations pour le deplacement de la planete
  PImage image; // image de la planete
  String info;
  
  Planetes (float xp, float yp, float _rayon, float _ellipse,float _distanceSurface, float _vitesse, float _teta, String _info, String file_name) {
    x = xp;
    y = yp;
    rayon=_rayon;
    ellipse=_ellipse;
    distanceSurface= _distanceSurface ;
    vitesse= _vitesse;
    teta= _teta;
    image=loadImage(file_name); // chargement de l'image dans l'objet avec le nom du fichier donne
    info = _info;
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
    testInfo();
  }
  
  void calcul_coord(){
  x = x + distanceSurface*cos(teta);
  y = y + distanceSurface*sin(teta);
  teta = teta + vitesse;
  }
  
  void testInfo(){
    if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (ellipse/2+10)*(ellipse/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (ellipse/2-10)*(ellipse/2-10)){
       // TODO mettre l'infos 
    }
  }
}
