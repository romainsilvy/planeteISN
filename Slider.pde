class Slider{
  
  float _x, _y;  // coordonne du Slider
  float _posX; // la position du point
  float _taille; // la taille du Slider
  float _max,  _min; // les valeurs minimal et maximum que pourras atteindre la valeur (son encadrement)
   
  Slider(float x, float y, float min, float max){ // surchage de fonction, plusieurs fonctions qui fonction qui s'appele pareille mais dont les arguments change, comme ca on peut mettre ou pas de valeur par defaut
       /*
       * initialisation de l'object avec les donnees donne en paramettre
       */
       _x = x;
       _y = y;
       _min = min;
       _posX = x;
       _max = max;
       _taille = 100;
  }
  
  Slider(float x, float y, float min, float max, float  defaut){
       /*
       * initialisation de l'object avec les donnees donne en paramettre
       * calcul de la position de point par raport a la valeur par defaut
       */
       _x = x;
       _y = y;
       _min = min;
       _posX = map(defaut, min, max, 0, 100) + x;
       _max = max;
       _taille = 100;
  }
  
  
  /*
  * methode affichant le slider
  * et si clique sur le Slider change la valeur par defaut
  */
  void update(){
    line(_x, _y, _x+_taille, _y);
    if(mousePressed){
      if(mouseX > _x && mouseX < _x + _taille && mouseY > _y - 10 && mouseY < _y + 10){
        _posX = mouseX; // nouvelle position du point si on clique et que c'est sur le Slider
      }
    }
    circle(_posX, _y, 10); // dessine un cercle montrant l'endroit actuel de la valeur sur le Slider
  }
  /*
  * getter pour avoir la valeur du slider
  * calcul de la veleur avec la fonction map et la return
  */
  float getVal(){
    return map(_posX, _x, _x + _taille, _min, _max);
  }

}
