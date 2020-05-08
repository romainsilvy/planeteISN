void load_quizz(){
  XML file_quizz = loadXML("data_quizz.xml"); // on charge le fichier XML où sont toutes les données des questions
  XML[] all_questions = file_quizz.getChildren("question"); // on transforme ce fichier en tableau d'enfant XML, ce tableau contient donc toutes les questions avec leurs réponses
   les_questions = new Quizz[all_questions.length];

  for(int i = 0;i < all_questions.length ;i++){ // pour toutes les questions 
    String question = all_questions[i].getString("quest"); // on récupère la question
    int check = all_questions[i].getInt("just"); //           on récupère le check pour savoir quelle réponse est juste
    XML[] reponse_children = all_questions[i].getChildren("reponse");// pour récupérer les réponses possibles, on prend tous les enfants
    String[] reponse = new String[4]; //                             on crée un tableau de String
    for(int j = 0; j < 4; j++){ //                                   pour toutes les réponses possibles
      reponse[j] = reponse_children[j].getString("r");//                 on met une réponse dans chaque case
    }
    les_questions[i] = new Quizz(question, reponse, check);  // on remplit le tableau de notre objet question
  }
}

// juste la porte d'entrée (d'introduction) vers les differentes pages du quizz
// est toujours appele quand on est dans la page quizz
void quizz() { 
  background(35);
  image(fond, 512, 384);
  switch(etat_quizz) { // suivant les differents etat ou l'on est dans le quizz
  case 1:
    intro_quizz(); // soit a l'introdution
    break;
  case 2:
    in_quizz(); // soit devant les questions
    break;
  case 3:
    fin_quizz(); // soit a la fin pour voir les points
    break;
  }
}

// affiche le quizz et permet de commencer les questions
void intro_quizz() {
  
  // tous les rectangles de fond
  fill(30, 30, 30);
  rect(width*0.09, height*0.15, width*0.13, height*0.07); // fond "le Quizz"
  rect(width*0.8, height*0.85, width*0.105, height*0.07); // fond "suivant"
  rectMode(CENTER);
  rect(width*0.5, height*0.52, width*0.81, height*0.55); // fond texte central
  
  // tous les textes
  fill(250);
  textSize(0.025*width);
  text("Le Quizz", width*0.1, height*0.2);
  text("suivant", width*0.81, height*0.9);
  textSize(0.0235*width);
  text("Bienvenue dans le quizz sur le Système Solaire ! Ici vous allez pouvoir tester vos connaisances sur le Système Solaire et ses planètes. \n Il est fortement conseillé de consulter attentivement l'animation sur le Système Solaire avant de commencer le quizz, car une fois le quizz commencé, aucun retour en arrière ne sera possible ! \n\n ATTENTION ! Il n'y a qu'une seule réponse juste par question.", width*0.5, height*0.65, width*0.8, height*0.8);
 
  if (mousePressed && mouseX>width*0.8 && mouseX<width*0.905 && mouseY<height*0.92 && mouseY>height*0.85) { 
      etat_quizz = 2;
    }
  rectMode(CORNER); // on retourne en CORNER
}

// page de fin du quizz, on l'on affiche les points
void fin_quizz() {
  background(35);
  image(fond, 512, 384);
  rectMode(CENTER);
  fill(30, 30, 30);
  rect(width*0.5, height*0.57, width*0.81, height*0.55);
  fill(255);
  text("Félicitations ! Vous avez réussi le quizz et avez obtenu un score de " + point + " points \nVous pouvez recommencer le quizz si vous souhaitez améliorer votre score ou simplement pour vous testez sur d'autres questions, mais pensez d'abord à aller voir l'animation sur le Système Solaire.", width*0.5, height*0.7, width*0.8, height*0.8);
  rectMode(CORNER);
}
