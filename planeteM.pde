float xS, yS, r = 100;                             //Soleil
float xMe, yMe, rMe = 15;                          //Mercure
float xVe, yVe, rVe = 25;                          //Venus
float xTe, yTe, rTe = 25;                          //Terre
float xMa, yMa, rMa = 20;                          //Mars
float xJu, yJu, rJu = 75;                          //Jupiter
float xSa, ySa, rSa = 80;                          //Saturne
float xUr, yUr, rUr = 35;                          //Uranus
float xNe, yNe, rNe = 30;                          //Neptune
float Me, Ve, Te, Ma, Ju, Sa, Ur, Ne;              // distances à la surface du soleil + rayon soleil => distances au centre
float eMe, eVe, eTe, eMa, eJu, eSa, eUr, eNe;      // rayons ellipses pour les orbites des planètes
float vMe = 0.04, vVe = 0.03, vTe = 0.02, vMa = 0.01, vJu = 0.008, vSa = 0.005, vUr = 0.002, vNe = 0.001;    //vitesses
float tetaMe = 0, tetaVe = 0, tetaTe = 0, tetaMa = 0, tetaJu = 0, tetaSa = 0, tetaUr = 0, tetaNe = 0;
PImage fond, fleche, soleil, mercure, venus, terre, mars, jupiter, saturne, uranus, neptune;    //chargement de toutes les images des planetes
String page;
String texteSoleil, texteMercure, texteVenus, texteTerre, texteMars, texteJupiter, texteSaturne, texteUranus, texteNeptune, texteIntro;    //variables contenant les infos sur les planetes
Quizz[] les_questions;
int point = 0, nb_page = 0;
int etat_quizz = 1; // pour savoir si on est à la page d'accueil, au milieu ou à la fin
int current_question = int(random(0, 19)); // le numéro de la question actuelle du quizz on prend un nombre au hasard



void setup() {
  fullScreen();
  imageMode(CENTER);
  ellipseMode(CENTER);
  noStroke();
 
  load_quizz();    //chargement des données pour le quizz

  chargement_image();    //chargement de toutes les images utilisées

  mise_echelle();    //responsive pour toutes les valeurs

  page = "accueil"; // pour arriver sur la page d'accueil
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
  affiche_back_button();  //affichage du bouton retour 
}
