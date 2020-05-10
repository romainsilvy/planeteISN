/*procedure permettant d'afficher la page d'accueil*/

void accueil() {
  background(35);
  image(fond, 512, 384);
  textSize(size6); // Texte moyen
  fill(30);
  rect(width*0.05, height*0.75, width*0.4, height*0.08, height*0.025); // rectangle systeme
  rect(width*0.55, height*0.75, width*0.4, height*0.08, height*0.025); // rectangle quizz 
  fill(250);
  textAlign(CENTER, CENTER); // pour mettre le texte au centre de la boîte
  text("accès au système >>",0, height*0.745, width*0.5, height*0.08); // on marque les accès aux autres pages du programme
  text("accès au quizz >>", width*0.5, height*0.745, width*0.5, height*0.08);

  //texte de presentation du programme écris au centre de la page d'accueil
  textSize(size7);// texte en tres gros
  text("Le Système Solaire", 0, height*0.1, width, height*0.2); // titre
  textSize(size6); // Texte moyen
  text("Ce programme vous propose une reconstitution sans échelle de notre Système Solaire, ainsi qu'un quizz pour tester vos connaissances.",0,height*0.3, width,height*0.4);
  textAlign(LEFT);
  
  //test sur quel bouton on clique
  if ((mousePressed == true) && (mouseX > width*0.05) && (mouseX < (width*0.05)+width*0.4) && (mouseY < height*0.75+height*0.08) && (mouseY > height*0.75)) page = "systeme"; // test du clic sur systeme
  if ((mousePressed == true) && (mouseX > width*0.55) && (mouseX < width*0.6+width*0.4) && (mouseY < height*0.75+height*0.08) && (mouseY > height*0.75)) page = "quizz";      // test du clic sur quizz
  
  // on renitialise les points et la page du quizz quand on va sur l'acceil
  if(nb_page != 0){
    point = 0;
    nb_page = 0;
    etat_quizz = 1;
  }
}
