class Stellar{
  
  float rayon;
  float G;
  float MS;
  PImage illustration;
  String info;
  
  
  Stellar(float _rayon, float taille){
    rayon = _rayon;
    G = 6.67430 * pow(10, -11);
    MS = 1.9891 * pow(10, 30); 
  }
  
  float getX(float t, float zoom, float echelle){
    float x = varLog(rayon / pow(10, 6), echelle) * zoom * cos(1.0/(rayon * sqrt(rayon/(G*MS))) * t); // TODO: optimisation avec precalcule de la periode
    return x;
  }
  float getY(float t, float zoom, float echelle){
    float y = varLog(rayon / pow(10, 6), echelle) * zoom * sin(1.0/(rayon * sqrt(rayon/(G*MS))) * t); // TODO: optimisation avec precalcule de la periode
    return y;
  }
  
  void affiche(float t, float zoom, float echelle){
    circle(getX(t, zoom, echelle), getY(t, zoom, echelle), 10);
    
  }
  
  float varLog(float x, float l){
    if(x > 0){
      return (log(x)/log(l));
    }else{
      x = -x;
      return -(log(x)/log(l));
    }
  }
  
  
}
