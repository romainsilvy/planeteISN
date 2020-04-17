


void quizz() {
  background(35);
  image(fond, 512, 384);
  fill(250);
  textSize(0.025*width);
  text("Le Quizz", width*0.3, height*0.2);
}


void load_quizz(){
  XML file_quizz = loadXML("data_quizz.xml"); // on charge le fichier ou sont toutes les donnees des questions
  XML[] all_questions = file_quizz.getChildren("question"); // on transforme ce fichier en tableau d'enfant XML, donc c'est toutes les questions avec les reponses
   les_questions = new Question_quizz[all_questions.length];
  for(int i = 0;i < all_questions.length ;i++){ // pour tout les questions 
    String question = all_questions[i].getString("quest"); // on recupere la questions
    int check = all_questions[i].getInt("just"); //           on recupere le check pour savoir la quelle est juste
    XML[] reponse_children = all_questions[i].getChildren("reponse");// pour recupere les reponse possible on prend tout les enfants
    String[] reponse = new String[4]; //                             on cree un tableau de String
    for(int j = 0; j < 4; j++){ //                                   pour tout les reponse possible
      reponse[j] = reponse_children[j].getString("r");//                 on met une reponse dans chaque case
    }
    les_questions[i] = new Question_quizz(question, reponse, check);  // on remplie le tableaux de notre objet questions
  }
}


class Question_quizz{
  Question_quizz(String question, String[] reponses, int check){
  
  }
}
