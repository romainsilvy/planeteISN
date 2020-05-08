
// fonction appeler durant la page ou l'on choisi les reponses
void in_quizz(){
  background(35);
  image(fond, 512, 384);
  
  fill(250);
  if(les_questions[current_question].affiche() == true){ //quand la fonction pour afficher la question actuel renvoie true ca veut dire qu'il faut changer la question actuel
    // donc on change le question qui est affichée
    current_question = int(random(0, 19));
  }
  if (nb_page >= 11){ // des qu'on arrive a 11 on termine le quizz et on passe sur la page de fin
    etat_quizz = 3;
  }
}


class Quizz {           // début class Quizz
  String q;
  String[] r;
  int c;
  int rd;
  
  Quizz (String question, String[] reponse, int check){
    q = question;
    r = reponse;
    c = check; // le numero de la reponse juste
    rd = 0; // reponse donne par l'utilisateur
  }
  boolean affiche(){
    textAlign(LEFT, CENTER);
    rectMode(CENTER);

    //rectangle de fond
    fill(30, 30, 30);
    rect(width*0.5, height*0.25, width*0.81, height*0.07);  // fond de la question
    
    // boucle pour les rctangles de fond des reponse, cela change dynamiquement suivant la reponse mise
    for(int i = 0; i < 4; i++){
      if(rd == i + 1){ // si c'est la réponse sélectionnée
        fill(255, 0, 0); // en rouge
      }else{
        fill(30, 30, 30); // sinon en gris
      }
      rect(width*0.5, height*(0.42+(i*0.10)), width*0.81, height*0.07);// le rectangle pour une reponse (position relative a la question de la boucle)
    }

    //texte dans rectangle
    textSize(0.020*width);
    fill(255);
    textAlign(CENTER, CENTER);
    text(q, width*0.5, height*0.245, width*0.8, height*0.07); // la question
    // boucle pour toutes les reponses possible
    for(int i = 0; i < 4; i++){
      text(r[i], width*0.5, height*(0.42 + (i * 0.10)), width*0.8, height*0.07); // les réponses
    }

    
    rectMode(CORNER);
    testReponse(); // test si on clique sur les question et les mets a jour
    
    
    // ________________ BOUTON SUIVANT_________________//
    fill(30, 30, 30);
    rect(width*0.8, height*0.85, width*0.105, height*0.07);
    fill(250);
    textAlign(LEFT, BASELINE);
    text("suivant", width*0.81, height*0.9);  
    if ((mousePressed == true) && (mouseX > width*0.8) && (mouseX < width*0.905) && (mouseY < height*(0.85 + 0.07)) && (mouseY > height*0.85) && (rd != 0)){ // test du clic sur le bouton suivant
      nb_page = nb_page +1; // on ajoute 1 au nombre de pages de quizz visitées
      if(rd == c){
        point ++; // si la reponse est juste on augmente les points
      }
      return true; // on renvoie true pour afficher une nouvelle question du quizz
    }
    
    return false; // si on n'appuie pas en revoie false qui n'active rien
  }
  
  void testReponse(){ // on teste si on clique sur un carré pour sélectionner une réponse
    if (mousePressed == true) {
      for(int i = 0; i < 4; i++){ // pour toutes les cases
        if((mouseX > width*0.5) && (mouseX < width*0.5 + width*0.81) && (mouseY > height*(0.42+ (i * 0.10))) && (mouseY < height*(0.42 + (i * 0.10)) + height*0.07)){
          rd = i + 1;
        }
      }
    }
  }
}
