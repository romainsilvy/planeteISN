class Quizz {           // début class Quizz
  String q;
  String[] r;
  int c;
  int rd;
  boolean dejaRepondu;
  
  Quizz (String question, String[] reponse, int check){
    q = question;
    r = reponse;
    c = check; // le numero de la reponse juste
    rd = 0; // reponse donne par l'utilisateur
    dejaRepondu = false;
  }
  boolean affiche(){
    textAlign(LEFT, CENTER);
    rectMode(CENTER);

    //rectangle de fond
    fill(30, 30, 30);
    rect(width*0.5, height*0.25, width*0.81, height*0.07, height*0.025);  // fond de la question
    
    // boucle pour les rctangles de fond des reponse, cela change dynamiquement suivant la reponse mise
    for(int i = 0; i < 4; i++){
      if(rd == i + 1){ // si c'est la réponse sélectionnée
        fill(255, 0, 0); // en rouge
      }else{
        fill(30, 30, 30); // sinon en gris
      }
      rect(width*0.5, height*(0.42+(i*0.10)), width*0.81, height*0.07, height*0.025);// le rectangle pour une reponse (position relative a la question de la boucle)
    }

    //texte dans rectangle
    textSize(size3);
    fill(255);
    textAlign(CENTER, CENTER);
    text(q, width*0.5, height*0.245, width*0.8, height*0.07); // la question
    // boucle pour toutes les reponses possible
    for(int i = 0; i < 4; i++){
      if(r[i].length() > 100){ // si c'est trop grand on met une police plus petite
        textSize(size2);
      }else{
        textSize(size3);
      }
      text(r[i], width*0.5, height*(0.42 + (i * 0.10)), width*0.8, height*0.07); // les réponses
    }

    
    rectMode(CORNER);
    testReponse(); // test si on clique sur les question et les mets a jour
    
    
    // ________________ BOUTON SUIVANT_________________//
    fill(30, 30, 30);
    rect(width*0.8, height*0.85, width*0.105, height*0.07, height*0.025);
    fill(250);
    textAlign(LEFT, BASELINE);
    textSize(size3);
    text("suivant", width*0.81, height*0.9);  
    if ((mousePressed == true) && (mouseX > width*0.8) && (mouseX < width*0.905) && (mouseY < height*(0.85 + 0.07)) && (mouseY > height*0.85) && (rd != 0)){ // test du clic sur le bouton suivant
      nb_page = nb_page +1; // on ajoute 1 au nombre de pages de quizz visitées
      if(rd == c){
        point ++; // si la reponse est juste on augmente les points
      }
      // pour le prochaine fois que l'on refait le quizz il faut que ce soit remis a 0
      rd = 0;
      
      dejaRepondu = true;
      
      return true; // on renvoie true pour afficher une nouvelle question du quizz
    }
    
    return false; // si on n'appuie pas en revoie false qui n'active rien
  }
  
  boolean isRepondu(){
    return dejaRepondu;
  }
  
  void testReponse(){ // on teste si on clique sur un carré pour sélectionner une réponse
    if (mousePressed == true) {
      for(int i = 0; i < 4; i++){ // pour toutes les cases
        if((mouseX > width*0.095) && (mouseX < width*0.095 + width*0.81) && (mouseY > height*(0.38 + (i * 0.10))) && (mouseY < height*(0.38 + (i * 0.10)) + height*0.07)){
          rd = i + 1;
        }
      }
    }
  }
}


//___________________________FONCTION_POUR_INTERAGIR_AVEC_LE_QUIZZ________________________//


// lien entre les differentes pages du quizz
// est toujours appele pendant le quizz
void quizz() { 
  background(35);
  image(fond, 512, 384);
  switch(etat_quizz) { // suivant les differentes positions dans le quizz
  case 1:
    intro_quizz(); // a l'introdution
    break;
  case 2:
    in_quizz(); // devant les questions
    break;
  case 3:
    fin_quizz(); // a la fin pour voir les points
    break;
  }
}

// affiche le quizz et permet de commencer les questions
void intro_quizz() {
  
  // tous les rectangles de fond
  fill(30, 30, 30);
  rect(width*0.09, height*0.15, width*0.13, height*0.07, height*0.025); // fond "le Quizz"
  rect(width*0.8, height*0.85, width*0.105, height*0.07, height*0.025); // fond "suivant"
  rectMode(CENTER);
  rect(width*0.5, height*0.52, width*0.81, height*0.55, height*0.025); // fond texte central
  
  // tous les textes
  fill(250);
  textSize(size6);
  text("Le Quizz", width*0.1, height*0.2);
  text("suivant", width*0.81, height*0.9);
  textSize(size4);
  text("Bienvenue dans le quizz sur le Système Solaire ! Ici vous allez pouvoir tester vos connaisances sur le Système Solaire et ses planètes. \n Il est fortement conseillé de consulter attentivement l'animation sur le Système Solaire avant de commencer le quizz, car une fois le quizz commencé, aucun retour en arrière ne sera possible ! \n\n ATTENTION ! Il n'y a qu'une seule réponse juste par question.", width*0.5, height*0.65, width*0.8, height*0.8);
 
  if (mousePressed && mouseX>width*0.8 && mouseX<width*0.905 && mouseY<height*0.92 && mouseY>height*0.85) {  //test bouton suivant sur l'intro du quizz
      etat_quizz = 2;
    }
  rectMode(CORNER); // on retourne en CORNER
}


// fonction appeler durant la page ou l'on choisi les reponses
void in_quizz(){
  background(35);
  image(fond, 512, 384);
  
  fill(250);
  if(les_questions[current_question].affiche() == true){ //quand la fonction pour afficher la question actuel renvoie true ca veut dire qu'il faut changer la question actuel
    do{
      // donc on change le question qui est affichée
      current_question = int(random(0, 18));
    }while(les_questions[current_question].isRepondu() == true); // si la question choisi au hasard est deja repondu on en choisi une autre
  }
  if (nb_page >= 10){ // des qu'on arrive a 11 on termine le quizz et on passe sur la page de fin
    etat_quizz = 3;
  }
}


// page de fin du quizz, affichage des points
void fin_quizz() {
  background(35);
  image(fond, 512, 384);
  rectMode(CENTER);
  fill(30, 30, 30);
  rect(width*0.5, height*0.45, width*0.81, height*0.45, height*0.025);
  fill(255);
  String text_fin = "";
  text_fin += "Félicitations ! Vous avez obtenu un score de " + point + " points \n";
  if(point < 3){
    text_fin += "Oula, c'est une catastrophe, vous ne connaissez rien sur le systeme solaire. allez sur notre magnifique animation pour en apprendre plus!!";
  }else if(point < 6){
    text_fin += "Ce score est tres moyen, nous sommes sur que vous pouvez faire mieux, et en apprendre plus sur notre systeme solaire, allez donc voir notre magnifique animation!!";
  }else{
    text_fin += "Wouah, c'est que vous etes bon, une grosse tete je presume, mais meme avec toutes ces connaissances j'en suis sur que vous pouvez en apprendre encore plus avec notre magnifique animation!!";
  }
  text_fin += "\nVous pouvez refaire de quizz avec de toutes nouvelles questions pour tester vos connaissances";
  
  text(text_fin, width*0.5, height*0.7, width*0.8, height*0.8);
  rectMode(CORNER);
}
