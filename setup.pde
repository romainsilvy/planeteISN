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

void mise_echelle(){
    xS = width*0.36;
    yS = height*0.5;
    eMe = width*0.08; 
    eVe = width*0.11;
    eTe = width*0.15;
    eMa = width*0.2;
    eJu = width*0.31;
    eSa = width*0.41;
    eUr = width*0.51;
    eNe = width*0.55;
    Me = eMe*0.5;
    Ve = eVe*0.5;
    Te = eTe*0.5;
    Ma = eMa*0.5;
    Ju = eJu*0.5;
    Sa = eSa*0.5;
    Ur = eUr*0.5;
    Ne = eNe*0.5;
    
    size1 = 0.008*width;  //info planetes 
    size2 = 0.012*width; //possibilité 2 quizz utilisée si le texte est trop long 
    size3 = 0.020*width; //taille du texte par defaut pour les questions du quizz
    size4 = 0.0235*width; //texte d'explication du quizz
    size5 = 0.022*width; //texte utilisé dans future classe 
    size6 = 0.025*width; // Texte moyen accueil et taille du texte affiché sur les planetes dans systeme et quizz
    size7 = 0.062*width;// texte en tres gros accueil
    
}
