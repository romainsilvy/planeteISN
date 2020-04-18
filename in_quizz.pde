void in_quizz(){
  background(35);
  image(fond, 512, 384);
  fill(250);
  if(les_questions[current_question].affiche() == true){
    // donc on change le question qui est affichée
    current_question = int(random(0, 19));
  }
  if (nb_page >= 11){ 
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
    c = check;
    rd = 0;
  }
  boolean affiche(){
    textAlign(LEFT, CENTER);
    rectMode(CENTER);

    //rectangle de fond
    fill(30, 30, 30);
    rect(width*0.5, height*0.32, width*0.81, height*0.07);  //question
    rect(width*0.5, height*0.42, width*0.81, height*0.07);  //r1
    rect(width*0.5, height*0.52, width*0.81, height*0.07);  //r2
    rect(width*0.5, height*0.62, width*0.81, height*0.07);  //r3
    rect(width*0.5, height*0.72, width*0.81, height*0.07);  //r4

    //texte dans rectangle
    textSize(0.020*width);
    fill(255);
    text(q, width*0.5, height*0.33, width*0.8, height*0.07); // la question
    for(int i = 0; i < 4; i++){
      text(r[i], width*0.5, height*(0.43 + (i * 0.10)), width*0.8, height*0.07); // les reponses
    }

    //case a cocher interactive
    rectMode(CORNER);
    for(int i = 0; i < 4; i++){
      if(rd == i + 1){ // si c'est la reponse selectionne
        fill(255, 0, 0); // en rouge
      }else{
        fill(255); // sinon en blanc
      }
      rect(width*0.05, height*(0.4075+ (i * 0.10)), height*0.025, height*0.025); // le rectangle
    }
    testReponse(); // test si on clique sur les petites cases et les mets a jour
    
    
    // ________________ BOUTTON SUIVANT_________________//
    fill(30, 30, 30);
    rect(width*0.8, height*0.85, width*0.105, height*0.07);
    fill(250);
    textAlign(LEFT, BASELINE);
    text("suivant", width*0.81, height*0.9);  
    if ((mousePressed == true) && (mouseX > width*0.8) && (mouseX < width*0.905) && (mouseY < height*(0.85 + 0.07)) && (mouseY > height*0.85) && (rd != 0)){ // test du clique sur le bouton suivant
      nb_page = nb_page +1; // on ajout a 1 au nombre de page de quizz visiter
      return true; // on renvoie true pour afficher une nouvelle question du quizz
    }
    
    return false; // si on appuie pas en revoie false qui n'active rien
  }
  
  void testReponse(){ // on test si on clique et ou on clique pour voir si on cique sur les carre de selection de question
    if (mousePressed == true) {
      for(int i = 0; i < 4; i++){ // pour toutes les cases
        if((mouseX > width*0.05) && (mouseX < width*0.05 + height*0.025) && (mouseY > height*(0.4075+ ((i - 1) * 0.10))) && (mouseY > height*(0.4075+ ((i - 1) * 0.10)) + height*0.025)){
          rd = i + 1;
        }
      }
    }
  }
}