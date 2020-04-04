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

//float Me = 16, Ve = 21, Te = 27, Ma = 33, Ju = 45, Sa = 56, Ur = 70, Ne = 75;

void setup() 
{
    fullScreen();
    background(20,20,40);
  noSmooth();
  imageMode(CENTER);
  ellipseMode(CENTER);
  fond = loadImage("spacestarblue.jpg");
  soleil = loadImage("soleil.png");
  mercure = loadImage("mercure.png");
  venus = loadImage("vénus.png");
  terre = loadImage("Terre.png");
  mars = loadImage("Mars.png");
  jupiter = loadImage("jupiter.png");
  saturne = loadImage("saturne2.png");
  uranus = loadImage("uranus.png");
  neptune = loadImage("Neptune.png");
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


void draw() 
{ 
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
    rect(t-10,0,t,height);
  informations();
  fill(223);
  rect(60,800,60,60);
  fill(0);
  textSize(50);
  text("?",80,850);
  textSize(20);
 } 

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

void informations()
{
  fill(250);
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (r/2)*(r/2)) {
    text("Soleil", xS, yS);
    fill(255, 97, 0);
    textSize(35);
    text("Soleil:", t+20, 55);
    fill( 223,223,223);
    textSize(13);
    text("     Le Soleil est l’étoile au centre du Système solaire, faisant partie",t,80);
    text("de la galaxie appelée la Voie lactée. Autour de lui, et faisant sept",t,100);
    text("également partie du Système solaire, gravitent la Terre, ",t,120);
    text("autres planètes, au moins cinq planètes naines, de très nombreuses",t,140);
    text("comètes et une bande de poussière.",t,160);
    text("Type : étoile naine jaune ",t,200);
    text("Rayon équatorial : 696 342 km ",t,220);
    text("Volume : 1,412 × 1018 km3 ",t,240);
    text("Masse : 1,9891 × 1030 kg ",t,260);
    text("Particularités : - Il représente à lui seul environ 99,854 % de la",t,280);
    text("masse du Système solaire.",t,300);
    text("                       - Il est âgé d'environ 4,57 milliards d’années.",t,320);
    text("Période de rotation : ≈ 27 jours, n’étant pas un objet solide, il",t,340);
    text("tourne plus rapidement à l’équateur (25 jours) qu’aux pôles (35 jours).",t,360);
    text("Température : entre 15,1 MK au centre et 5 750 K à sa surface. ",t,380);
    text("Fun facts: - Le mot soleil est issu du gallo-roman *soliculu,",t,400);
    text("diminutif du latin classique sol, solis désignant l’astre et la divinité. ",t,420);
    text("                 - Il existe dans la Voie lactée plus de 100 millions",t,440);
    text("d’étoiles de type spectral identique, ce qui fait du Soleil une étoile",t,460);
    text("assez ordinaire, bien qu’il soit en fait plus brillant que 85 % des",t,480);
    text("étoiles de la Galaxie, qui sont en majorité des naines rouges. ",t,500);
  }
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eMe/2+10)*(eMe/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eMe/2-10)*(eMe/2-10)) {
    text("Mercure", xMe, yMe);
    fill( 187, 187, 187);
    textSize(35);
    text("Mercure:", t+20, 55);
    fill( 223,223,223);
    textSize(13);
    text("     Mercure est la planète la plus proche du Soleil et la moins",t,80);
    text("massive du Système solaire.",t,100);
    text("Type : planète tellurique",t,140);
    text("Rayon équatorial : 2 439,7 km (0,383 Terre)",t,160);
    text("Volume : 60,83×109 km3 (0,056 Terre)",t,180);
    text("Masse : 3,3011×1023 kg (0,055 Terre)",t,200);
    text("Particularités:- sa densité remarquable, dépassée seulement par ",t,220);
    text("celle de la Terre, est due à l'importance de son noyau métallique,",t,240);
    text("qui occuperait plus de 40 % de son volume.",t,260);
    text("                     - son champ magnétique",t,280);
    text("                     - dépourvue de véritable atmosphère, sa surface est",t,300);
    text("très fortement cratérisée, et globalement similaire à la face cachée",t,320);
    text("de la Lune.",t,340);
    text("Période de révolution : 88 jours",t,360);
    text("Période de rotation : 59 jours",t,380);
    text("Température moyenne de surface:442 K entre 90 K et 700 K",t,400);
    text("Fun facts: -La planète Mercure doit son nom au dieu Mercure du ",t,420);
    text("commerce et des voyages, également messager des autres dieux",t,440);
    text("dans la mythologie romaine. La planète a été nommée ainsi par",t,460);
    text("les Romains à cause de la vitesse à laquelle elle se déplaçait.",t,480);
    text("                -Mercure laissa également son nom au troisième jour de",t,500);
    text("la semaine, mercredi (« Mercurii dies »).",t,520);
  }
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eVe/2+10)*(eVe/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eVe/2-10)*(eVe/2-10)) {
    text("Vénus", xVe, yVe);
    fill(250, 215, 160);
    textSize(35);
    text("Vénus:", t+20, 55);
    fill( 223,223,223);
    textSize(13);
    text("     Vénus est la deuxième planète par ordre d'éloignement au",t,80);
    text(" Soleil, et la sixième par masse ou par taille décroissante.",t,100);
    text("Type : planète tellurique",t,140);
    text("Rayon équatorial : 6 051,8 ± 1,0 km (0,949 Terre)",t,160);
    text("Volume : 928,43×109 km3 (0,857 Terre)",t,180);
    text("Masse : 4,8685×1024 kg (0,815 Terre)",t,200);
    text("Particularités: - champ magnétique très faible et n'a aucun",t,220);
    text("satelllite naturel.",t,240);
    text("                      - c’est la seule planète du Système solaire ayant",t,260);
    text("une période de rotation supérieure à sa période de révolution.",t,280);
    text("                      - son atmosphère, la plus épaisse de toutes les ",t,300);
    text("planètes telluriques, est parcourue en permanence de vents",t,320);
    text("violents de plus de 360 km/h et contient d'épaisses couches",t,340);
    text("nuageuses opaques qui donnent à la planète son aspect laiteux, ",t,360);
    text("gérèrent un très puissant effet de serre et réfléchissent l'essentiel",t,380);
    text("du rayonnement solaire, en faisant une planète très",t,400);
    text("lumineuse",t,420);
    text("Période de révolution : 225 jours",t,440);
    text("Période de rotation : 243 jours",t,460);
    text("Température moyenne de surface : 735 K entre 719 K et 763 K",t,480);
    text("Fun facts: - La planète Vénus a été baptisée du nom de la déesse",t,500);
    text("Vénus de la mythologie romaine.",t,520);
    text("                - Dans la culture populaire, la planète Vénus est ",t,540);
    text("surnommée l’« étoile du berger » car elle peut être facilement ",t,560);
    text("visible dans le ciel du matin avant l'aurore, ou dans le ciel du soir",t,580);
    text("après le crépuscule. On lui attribua ce nom car les gardiens de",t,600);
    text("troupeaux dans les temps anciens en tenaient compte pour aller",t,620);
    text("dans les pâturages ou en revenir.",t,640);
  }
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eTe/2+10)*(eTe/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eTe/2-10)*(eTe/2-10)) {
    text("Terre", xTe, yTe);
    fill(111, 255, 82);
    textSize(35);
    text("Terre:", t+20, 55);
    fill( 223,223,223);
    textSize(13);
    text("     La Terre est la troisième planète la plus proche du Soleil et la ",t,80);
    text("cinquième plus grande, tant en taille qu'en masse. ",t,100);
    text("Elle est également la plus massive des planètes telluriques. ",t,120);
    text("Type : planète tellurique ",t,160);
    text("Rayon équatorial : 6 378,137 km ",t,180);
    text("Volume : 1,083 21×1012 km3 ",t,200);
    text("Masse : 5,9736×1024 kg ",t,220);
    text("Particularités: - abrite des millions d'espèces vivantes, dont",t,240);
    text("l'Homme.",t,260);
    text("                       - a un seul satellite naturel « permanent » connu, la",t,280);
    text("Lune, située à environ 380 000 kilomètres de sa surface. ",t,300);
    text("Période de révolution : 1 année ",t,320);
    text("Période de rotation : 24 heures ",t,340);
  text("Température moyenne de surface:15 °C entre −93,2 °C et 56,7 °C.",t,360);
    text("Fun facts: - environ 71 % de sa surface est couverte d'océans d'eau",t,380);
    text("salée, d’où son surnom de “planète bleue.",t,400);
    text("                 - La Lune s'éloigne de la Terre à un rythme d'environ",t,420);
    text("38 millimètres par an, produisant aussi l'allongement du jour ",t,440);
    text("terrestre de 23 microsecondes par an. Sur plusieurs millions  ",t,460);
    text("d'années, l'effet cumulé de ces petites modifications produit",t,480);
    text("d'importants changements. Durant la période du Dévonien, il y a",t,500);
    text("approximativement 410 millions d'années, il y avait ainsi 400 jours",t,520);
    text("dans une année, chaque jour durant 21,8 heures. ",t,540);


  }
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eMa/2+10)*(eMa/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eMa/2-10)*(eMa/2-10)) {
    text("Mars", xMa, yMa);
    fill(211, 111, 58);
    textSize(35);
    text("Mars:", t+20, 55);
    fill( 223,223,223);
    textSize(13);
    text("   Mars est la quatrième planète par ordre de distance croissante",t,80);
    text("au Soleil et la deuxième par masse et par tailles croissantes.",t,100);
    text("Type : planète tellurique ",t,140);
    text("Rayon équatorial : 3 396,2 ± 0,1 km (0,533 Terre) ",t,160);
    text("Volume : 163,18×109 km3 (0,151 Terre) ",t,180);
    text("Masse : 6,4185×1023 kg (0,107 Terre) ",t,200);
    text("Particularités : -présence de nuages, donc d’eau, attirant des ",t,220);
    text("scientifiques à la recherche d’une forme de vie. ",t,240);
    text("                       -possède 2 satellites: Phobos et Déimos ",t,260);
    text("Période de révolution : 1 année +321 jours ",t,280);
    text("Période de rotation : 24h et 37min ",t,300);
    text("Température moyenne de surface : 210 K (−63 °C ) ",t,320);
    text("Fun facts: -La plus grande montagne connue du système solaire est  ",t,340);
    text("sur Mars (21 km de hauteur et 600 km de diamètre). ",t,360);
    text("                -Des morceau de Mars ont été retrouvés sur Terre. ",t,380);
    text("                -Cette planète a été nommé d’après Mars le Dieu",t,400);
    text(" romain de la guerre. ",t,420);

  }
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eJu/2+10)*(eJu/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eJu/2-10)*(eJu/2-10)) {
    text("Jupiter", xJu, yJu);
    fill(214, 116, 43);
    textSize(35);
    text("Jupiter:", t+20, 55);
    fill( 223,223,223);
    textSize(13);
    text("    Jupiter est la plus grosse planète du Système solaire," ,t,80);
    text("plus volumineuse et massive que toutes les autres planètes réunies,",t,100);
    text(" et la cinquième planète par sa distance au Soleil.",t,120);
    text("Type: Planète géante gazeuse",t,160);
    text("Rayon équatorial: 71 492 km (11,209 Terres)",t,180);
    text("Volume :  1,431 28×1015 km3 (1 321,3 Terres)",t,200);
    text("Masse :  1,8986×1027 kg (317,8 Terres)",t,220);
    text("Particularités: -possède un champ magnétique, 14 fois plus" ,t,240);
    text("puissant que celui de la Terre, le plus intense du Système solaire." ,t,260);
    text("                       -possède 79 satellites naturels confirmés dont 50",t,280);
    text("nommés. Quatre sont de grands satellites, connus depuis plusieurs",t,300);
    text("siècles et regroupés sous la dénomination de « lunes galiléennes ».",t,320);
    text("Période de révolution: 11 années +315 jours",t,340);
    text("Période de rotation:  9 h 55 min",t,360);
    text("Température moyenne à la surface: 210 K (−63 °C)",t,380);
    text("Fun facts: -Les 16 satellites principaux de Jupiter ont été nommés",t,400);
    text("d'après les conquêtes amoureuses de Zeus, l'équivalent grec",t,420);
    text("du dieu romain Jupiter.",t,440);
    text("                -La Grande Tache rouge est une tornade de Jupiter, ",t,460);
    text("de 24 à 40 000 km de long sur 12 000 km de large,",t,480);
    text("d’une altitude maximale de 8 km pouvant contenir deux ou trois",t,500);
    text("planètes de la taille de la Terre. ",t,520);
    text("                -Elle tourne sur elle-même dans le sens contraire ",t,540);
    text("des aiguilles d'une montre, avec une période d'environ 6 jours; ",t,560);
    text("et les vents soufflent à plus de 400 km/h sur ses bords.",t,580);

  }
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eSa/2+10)*(eSa/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eSa/2-10)*(eSa/2-10)) {
    fill(250);
    text("Saturne", xSa, ySa);
    fill( 238, 225, 175 );
    textSize(35);
    text("Saturne:", t+20, 55);
    fill(223);
    textSize(13);
    text("    Saturne est la sixième planète du Système solaire" ,t,80);
    text("par ordre de distance au Soleil et la deuxième après Jupiter tant",t,100);
    text("par sa taille que par sa masse.",t,120);
    text("Type: Planète géante gazeuse",t,160);
    text("Rayon équatorial: 60 268 km (9,4492 Terres)",t,180);
    text("Volume :  827,13×1012 km3 (763 Terres)",t,200);
    text("Masse :  568,46×1024 kg (95,152 Terres)",t,220);
    text("Particularité : Saturne possède des anneaux qui sont constitués" ,t,240);
    text("d'innombrables particules de glace et de poussière dont la taille" ,t,260);
    text("varie de quelques micromètres à quelques centaines de mètres, ils",t,280);
    text("ont chacun une orbite différente et forment un disque dont le",t,300);
    text("diamètre est de 360 000km.",t,320);
    text("Période de révolution: 29 années + 167 jours",t,340);
    text("Période de rotation:  0, 448 jour (10 h 33 min)",t,360);
    text("Température moyenne à la surface:  84 K (-189° C) à 10kPa et 134 K",t,380);
    text("(−139 °C) à 100 kPa",t,400);
    text("Fun facts: -Saturne peut être vue à l'œil nu",t,420);
    text("                -Saturne est la planète du Système Solaire qui a le plus de",t,440);
    text("lunes (150 et plusieurs autres petits satellites).",t,460);

  }
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eUr/2+10)*(eUr/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eUr/2-10)*(eUr/2-10)) {
    text("Uranus", xUr, yUr);
    fill( 161, 232, 227 );
    textSize(35);
    text("Uranus:", t+20, 55);
    fill(223);
    textSize(13);
    text("    Uranus est la septième planète du Système solaire par sa distance",t,80);
    text("au Soleil, la troisième par la taille et la quatrième par la masse.",t,100);
    text("Type : Planète géante de glace",t,140);
    text("Rayon équatorial : 25 559 ± 4 km",t,160);
    text("Volume : 6,833 44×1013 km3",t,180);
    text("Masse : 8,6810×1025 kg",t,200);
    text("Particularités : -Uranus est la plus froide des planètes du système",t,220);
    text("solaire.",t,240);
    text("                       -Uranus possède 27 satellites et 13 anneaux étroits",t,260);
    text("                       -Le système uranien est unique dans le Système solaire",t,280);
    text("car son axe de rotation est pratiquement dans son plan de révolution",t,300);
    text("autour du Soleil",t,320);
    text("Période de révolution : 84 années",t,340);
    text("Période de rotation : 17 heures (rétrograde, dans le sens inverse",t,360);
    text("de la Terre)",t,380);
    text("Température à la surface : environ −224°C entre 53 K (−220 °C)",t,400);
    text("à 10 kPa et 76 K (−197 °C) à 100 kPa",t,420);
    text("Fun facts : -Cette planète n’est pas visible à l’oeil nu, elle a été la",t,440);
    text("première planète découverte à l’aide d’un télescope.",t,460);
    text("                  -Herschel, le découvreur de cette planète, la nomme",t,480);
    text("« Georgium Sidus » (étoile de George), ou « Georgian Planet » (planète",t,500);
    text("Géorgienne) en l'honneur de son mécène, le roi George III",t,520);
  }
  if (((mouseX-xS+200)*(mouseX-xS+200)) + ((mouseY-yS)*(mouseY-yS)) <= (eNe/2+10)*(eNe/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eNe/2-10)*(eNe/2-10)||((mouseX-xS-200)*(mouseX-xS-200)) + ((mouseY-yS)*(mouseY-yS)) <= (eNe/2+10)*(eNe/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eNe/2-10)*(eNe/2-10)) {
    text("Neptune", xNe, yNe);
    fill(54, 113, 223 );
    textSize(35);
    text("Neptune:", t+20, 55);
    fill(223);
    textSize(13);
    text("    Neptune est la huitième et dernière planète du Système solaire",t,80);
    text("par distance croissante au Soleil.",t,100);
    text("Type : Planète géante de glace",t,140);
    text("Rayon équatorial : 24 764 ± 15 km",t,160);
    text("Volume : 62,526×1012 km3",t,180);
    text("Masse : 102,43×1024 kg",t,200);
    text("Particularité : Neptune est la planète la plus éloigné du système",t,220);
    text("solaire",t,240);
    text("Période de révolution : 164 années + 280 jours",t,260);
    text("Période de rotation : 0,671 25 d(16 h 6,6 min)",t,280);
    text("Température à la surface : 55 K (−218 °C )",t,300);
    text("Fun facts : -1 ans sur Neptune dure 165 ans sur Terre.",t,320);
    text("                  -Neptune est nommé d’après le Dieu romain de la mer.",t,340);
    text("                  -L'origine de la couleur bleue de Neptune est toujours",t,360);
    text("inexpliquée",t,380);
    text("                  -La découverte de Neptune a été faite uniquement par le",t,400); 
    text("calcul à partir de la trajectoire et des caractéristiques d'Uranus.",t,420);
    text("La planète n'est jamais observable à l'œil nu contrairement aux sept",t,440);
    text("autres planètes du Système Solaire.",t,460);
  }
  if (mouseX<=120 && mouseX>=60 && mouseY<=860 && mouseY>=800) {
    fill( 23, 51, 90);
    textSize(35);
    text("Le Système Solaire:", t+20, 55);
    fill( 223,223,223);
    textSize(13);
    text("Ceci est une représentation simplifiée de notre système solaire,",t,80);
    text("aucune distance n'est à l'échelle de même que les tailles des",t,100);
    text("planètes.",t,120);
    text("Pour obtenir des informations sur les planètes, passez",t,160);
    text("simplement votre souris dessus.",t,180);
    textSize(20);
    text("Bonne découverte !",t,220);
  }
}
