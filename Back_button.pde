
void affiche_back(){
  textAlign(LEFT, BASELINE); // pour y mettre au centre de la boite
  // on commence par afficher le bouton en haut a gauche
  fill(30,30,30);
  rect(0.01*width, 0.01*height, 0.05*width, 0.03*height);
  fill(255);
  textSize(0.025*width);
  text("<--", 0.015*width, 0.035*height);
  
  
  if ((mousePressed == true) && (mouseX > width*0.01) && (mouseX < width*0.06) && (mouseY < height*0.04) && (mouseY > height*0.01)){
    page = "accueil"; // on change la page actuelle par l'accueil
  }
}
