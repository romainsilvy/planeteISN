void affiche_back_button(){
  imageMode(CORNER);
  image(fleche, 0.015*width, 0.035*height, 0.05*width, 0.03*height);
  imageMode(CENTER);
  
  
  if ((mousePressed == true) && (mouseX > width*0.015) && (mouseX < width*0.065) && (mouseY < height*0.065) && (mouseY > height*0.035)){
    page = "accueil"; // on change la page actuelle par l'accueil
  }
}
