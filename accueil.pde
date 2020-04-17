void accueil() {
  background(35);
  image(fond, 512, 384);
  textSize(0.025*width); // Texte moyen
  fill(30,30,30);
  rect(width*0.05, height*0.75, width*0.4, height*0.08, height*0.008);
  rect(width*0.55, height*0.75, width*0.4, height*0.08, height*0.008);
  fill(250);
  textAlign(CENTER, CENTER); // pour y mettre au centre de la boite
  
  text("accès au système >>",0, height*0.75, width*0.5, height*0.08); // on marque les acces
  text("accès au quizz >>", width*0.5, height*0.75, width*0.5, height*0.08);

  // texte d'intro dans une boite qui fait toute la longueuer et on met le texte au centre. separation de sur 2 ligne avec \n
  text("Ce programme vous propose une reconstitution sans échelle de notre Système Solaire, ainsi qu'un quizz pour tester vos connaissances.",0,height*0.3, width,height*0.4);
  textSize(0.062*width);// texte en tres gros
  text("Le Système Solaire", 0, height*0.1, width, height*0.2); // titre
  textSize(20);// on remet la taille par defaut
  textAlign(LEFT);
  if ((mousePressed == true) && (mouseX > width*0.05) && (mouseX < (width*0.05)+width*0.4) && (mouseY < height*0.75+height*0.08) && (mouseY > height*0.75)) page = "systeme";
  if ((mousePressed == true) && (mouseX > width*0.55) && (mouseX < width*0.6+width*0.4) && (mouseY < height*0.75+height*0.08) && (mouseY > height*0.75)) page = "quizz";
}
