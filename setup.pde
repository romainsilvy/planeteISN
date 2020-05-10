  void chargement_image(){
  fond = loadImage("spacestarblue.jpg");
  fleche = loadImage("fleche.png");
  soleil = loadImage("soleil.png");
  mercure = loadImage("mercure.png");
  venus = loadImage("venus.png");
  terre = loadImage("terre.png");
  mars = loadImage("mars.png");
  jupiter = loadImage("jupiter.png");
  saturne = loadImage("saturne.png");
  uranus = loadImage("uranus.png");
  neptune = loadImage("neptune.png");
}

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
