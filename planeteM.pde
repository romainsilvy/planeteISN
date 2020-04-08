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

//float Me = 16, Ve = 21, Te = 27, Ma = 33, Ju = 45, Sa = 56, Ur = 70, Ne = 75;

void setup() 
{
    fullScreen();
    println(width + " " + height);
    background(20,20,40);
  noSmooth();
  imageMode(CENTER);
  ellipseMode(CENTER);
  
  // pour faire plus propre
  chargement_image(); ////////// !!!!!!
  
  
  mise_echelle(); ////////// !!!!!!!
  
  
  page = "accueil"; // au demarrage on va a l'accueil
} 

void draw() {
  
  // on test la variable page pour savoir ou l'on est
  switch(page){
    case "accueil": // si on doit etre a l'accueil on appel la fonction acueil
      accueil();
      break;
    case "systeme": // ...
      systeme();
      break;
    case "quizz": // ...
      quizz();
      break;
  }
}




 




 
