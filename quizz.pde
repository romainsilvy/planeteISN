void load_quizz(){
  XML file_quizz = loadXML("data_quizz.xml"); // on charge le fichier ou sont toutes les donnees des questions
  XML[] all_questions = file_quizz.getChildren("question"); // on transforme ce fichier en tableau d'enfant XML, donc c'est toutes les questions avec les reponses
   les_questions = new Quizz[all_questions.length];

  for(int i = 0;i < all_questions.length ;i++){ // pour tout les questions 
    String question = all_questions[i].getString("quest"); // on recupere la questions
    int check = all_questions[i].getInt("just"); //           on recupere le check pour savoir la quelle est juste
    XML[] reponse_children = all_questions[i].getChildren("reponse");// pour recupere les reponse possible on prend tout les enfants
    String[] reponse = new String[4]; //                             on cree un tableau de String
    for(int j = 0; j < 4; j++){ //                                   pour tout les reponse possible
      reponse[j] = reponse_children[j].getString("r");//                 on met une reponse dans chaque case
    }
    les_questions[i] = new Quizz(question, reponse, check);  // on remplie le tableaux de notre objet questions
  }
}

void quizz() { // juste la porte d'enter vers les differentes page du quizz
  background(35);
  image(fond, 512, 384);
  switch(etat_quizz) {
  case 1:
    intro_quizz();
    break;
  case 2:
    in_quizz();
    break;
  case 3:
    fin_quizz();
    break;
  }
}

void intro_quizz() {
  fill(30, 30, 30);
  rect(width*0.09, height*0.15, width*0.13, height*0.07);
  fill(250);
  textSize(0.025*width);
  text("Le Quizz", width*0.1, height*0.2);
  fill(30, 30, 30);
  rect(width*0.8, height*0.85, width*0.105, height*0.07);
  fill(250);
  text("suivant", width*0.81, height*0.9);
  if (mousePressed && mouseX>width*0.8 && mouseX<width*0.905 && mouseY<height*0.92 && mouseY>height*0.85) { 
      etat_quizz = 2;
    }
  rectMode(CENTER);
  fill(30, 30, 30);
  rect(width*0.5, height*0.57, width*0.81, height*0.55);
  fill(255);
  text("Bienvenue dans le quizz sur le systeme solaire ! ici vous allez pouvoir tester vos connaisances sur le systeme solaire et les planetes. \nIl est fortement conseillé de regarder l'annimation sur le systeme solaire avant d'entrer dans le quizz car une fois que vous serez dedans, aucun retour en arriere ne sera possible ! \n\n ATTENTION ! Une seule reponse sera accéptée par question.", width*0.5, height*0.7, width*0.8, height*0.8);
  rectMode(CORNER);
}


void fin_quizz() {
  background(35);
  image(fond, 512, 384);
  rectMode(CENTER);
  fill(30, 30, 30);
  rect(width*0.5, height*0.57, width*0.81, height*0.55);
  fill(255);
  text("Felicitations ! Vous avez réussi le quizz et vous avez obtenu un total de NOMBRE DE POINTS. \n Vous pouvez recommencer si vous voulez améliorer votre score mais pensez d'abord a aller voir l'animation du systeme solaire.", width*0.5, height*0.7, width*0.8, height*0.8);
  rectMode(CORNER);
}
