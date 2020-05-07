/* 
* contenu:
* calculPosition(): met à jour les coordonnées des planètes
* system(): toute la partie pour afficher le système solaire
* chargement_image(): charge les images dans les variables
* mise_echelle(): calcul les positions/distance pour que ça rentre dans l'écran
*/



void calculPosition()
{
  // Mercure
  xMe = xS + Me*cos(tetaMe);
  yMe = yS + Me*sin(tetaMe);
  tetaMe = tetaMe + vMe;
  
  // Venus
  xVe = xS + Ve*cos(tetaVe);
  yVe = yS + Ve*sin(tetaVe);
  tetaVe = tetaVe + vVe;
  
  // Terre
  xTe = xS + Te*cos(tetaTe);
  yTe = yS + Te*sin(tetaTe);
  tetaTe = tetaTe + vTe;
  
  // Mars
  xMa = xS + Ma*cos(tetaMa);
  yMa = yS + Ma*sin(tetaMa);
  tetaMa = tetaMa + vMa;
  
  // Jupiter
  xJu = xS + Ju*cos(tetaJu);
  yJu = yS + Ju*sin(tetaJu);
  tetaJu = tetaJu + vJu;
  
  // Saturne
  xSa = xS + Sa*cos(tetaSa);
  ySa = yS + Sa*sin(tetaSa);
  tetaSa = tetaSa + vSa;
  
  // Uranus
  xUr = xS + Ur*cos(tetaUr);
  yUr = yS + Ur*sin(tetaUr);
  tetaUr = tetaUr + vUr;
  
  // Neptune
  xNe = xS + (Ne+100)*cos(tetaNe);
  yNe = yS + Ne*sin(tetaNe);
  tetaNe = tetaNe + vNe;
}



void systeme() { 
  background(35);
  image(fond, 512, 384);
  stroke(250);
  noFill();
  //Soleil
  image(soleil, xS, yS, r, r);
  //Mercure
  ellipse(xS, yS, eMe, eMe);
  image(mercure, xMe, yMe, rMe, rMe);
  //Venus
  ellipse(xS, yS, eVe, eVe);
  image(venus, xVe, yVe, rVe, rVe);
  //Terre
  ellipse(xS, yS, eTe, eTe);
  image(terre, xTe, yTe, rTe, rTe);
  //Mars
  ellipse(xS, yS, eMa, eMa);
  image(mars, xMa, yMa, rMa, rMa);
  //Jupiter
  ellipse(xS, yS, eJu, eJu);
  image(jupiter, xJu, yJu, rJu, rJu);
  //Saturne
  ellipse(xS, yS, eSa, eSa);
  image(saturne, xSa, ySa, rSa+80, rSa);
  //Uranus
  ellipse(xS, yS, eUr, eUr);
  image(uranus, xUr, yUr, rUr, rUr);
  //Neptune
  ellipse(xS, yS, eNe+200, eNe);
  image(neptune, xNe, yNe, rNe, rNe);
  calculPosition();
  fill(20,20,40);
  rect(t-10,0,width*0.25,height - 10);
  informations();
  fill(15,15,30);
  rect(width*0.755,height*0.9,width*0.235,height*0.08,5);
  fill(250);
  textSize(0.022*width);
  text("accès au quizz >>",width*0.775,height*0.95);
  textSize(20);
  if ((mousePressed == true) && (mouseX > width*0.755) && (mouseX < width*0.755+width*0.235) && (mouseY < height*0.9+height*0.08) && (mouseY > height*0.9)) page = "quizz";
 } 


void chargement_image(){
  fond = loadImage("spacestarblue.jpg");
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
    t = width*0.75;
}
