float xS, yS, r = 100;              //Soleil
float xMe, yMe, rMe = 15;                      //Mercure
float xVe, yVe, rVe = 25;                      //Venus
float xTe, yTe, rTe = 25;                      //Terre
float xMa, yMa, rMa = 20;                      //Mars
float xJu, yJu, rJu = 75;                      //Jupiter
float xSa, ySa, rSa = 80;                      //Saturne
float xUr, yUr, rUr = 35;                      //Uranus
float xNe, yNe, rNe = 30;                      //Neptune
float Me, Ve, Te, Ma, Ju, Sa, Ur, Ne;             // distances à la surface du soleil + rayon soleil => distances au centre
float eMe, eVe, eTe, eMa, eJu, eSa, eUr, eNe;             // rayons ellipses pour les orbites des planètes
float vMe = 0.04, vVe = 0.03, vTe = 0.02, vMa = 0.01, vJu = 0.008, vSa = 0.005, vUr = 0.002, vNe = 0.001;                  //vitesses
float tetaMe = 0, tetaVe = 0, tetaTe = 0, tetaMa = 0, tetaJu = 0, tetaSa = 0, tetaUr = 0, tetaNe = 0;
PImage fond, soleil, mercure, venus, terre, mars, jupiter, saturne, uranus, neptune;
float t;
String page;
String intro_s = "    Ceci est une représentation simplifiée de notre Système Solaire. Aucune distance n'est à l'échelle, de même pour les tailles des planètes. \n Pour obtenir des informations sur les planètes, passez simplement votre souris dessus ou sur leurs orbites. N’hésitez pas à tester vos connaissances avec le quizz. \n\n Bonne découverte !";
Quizz[] les_questions;
int point = 0, nb_page = 0;
int etat_quizz = 1; // pour savoir si on est à la page d'accueil, au milieu ou à la fin
int current_question = 0; // le numéro de la question actuelle du quizz

//float Me = 16, Ve = 21, Te = 27, Ma = 33, Ju = 45, Sa = 56, Ur = 70, Ne = 75;

void setup() 
{
  //size(400, 400);
  fullScreen();
  imageMode(CENTER);
  ellipseMode(CENTER);
 
  load_quizz();

  chargement_image();

  mise_echelle();

  page = "accueil"; // au démarrage on va à l'accueil
} 

void draw() {
  // on teste la variable page pour savoir où l'on est
  switch(page){
    case "accueil": // si on doit être à l'accueil on appelle la fonction accueil
      accueil();
      break;
    case "systeme": // ...
      systeme();
      break;
    case "quizz": // ...
      quizz();
      break;
  }
  affiche_back();
}




 
