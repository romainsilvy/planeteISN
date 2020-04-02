float xS = 600, yS = 450, r = 100;              //Soleil
float xMe, yMe, rMe = 15;                      //Mercure
float xVe, yVe, rVe = 25;                      //Venus
float xTe, yTe, rTe = 25;                      //Terre
float xMa, yMa, rMa = 20;                      //Mars
float xJu, yJu, rJu = 75;                      //Jupiter
float xSa, ySa, rSa = 80;                      //Saturne
float xUr, yUr, rUr = 35;                      //Uranus
float xNe, yNe, rNe = 30;                      //Neptune
float Me = 80, Ve = 105, Te = 135, Ma = 165, Ju = 225, Sa = 280, Ur = 350, Ne = 375;             // distances à la surface du soleil + rayon soleil => distances au centre
float eMe = 162, eVe = 210, eTe = 270, eMa = 330, eJu = 465, eSa = 570, eUr = 695, eNe = 750;             // rayons ellipses pour les orbites des planètes
float vMe = 0.04, vVe = 0.03, vTe = 0.02, vMa = 0.01, vJu = 0.008, vSa = 0.005, vUr = 0.002, vNe = 0.001;                  //vitesses
float tetaMe = 0, tetaVe = 0, tetaTe = 0, tetaMa = 0, tetaJu = 0, tetaSa = 0, tetaUr = 0, tetaNe = 0;
PImage fond, soleil, mercure, venus, terre, mars, jupiter, saturne, uranus, neptune;

//float Me = 16, Ve = 21, Te = 27, Ma = 33, Ju = 45, Sa = 56, Ur = 70, Ne = 75;

Stellar test, testM, testJ, testN;
Slider slT, slE, slZ;
float t = 0;

void setup() 
{
  size(1700, 900);
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
  
  test = new Stellar(150 * pow(10, 6));
  testM = new Stellar(227 * pow(10, 6));
  testJ = new Stellar(800 * pow(10, 6));
  testN = new Stellar(4600 * pow(10, 6));
  
  slT = new Slider(800, 700, 1, 100);
  slZ = new Slider(1000, 700, 10, 50, 20);
  slE = new Slider(1200, 700, 1.3, 2, 1.5);

}


void draw() 
{ 
  background(35);
  image(fond, 512, 384);
  stroke(250);
  noFill();
  informations();
  fill(223);
  rect(60,800,60,60);
  fill(0);
  textSize(50);
  text("?",80,850);
  textSize(20);
  pushMatrix();
  translate(600, 450);
  
  test.affiche(t, slZ.getVal(), slE.getVal());
  testM.affiche(t, slZ.getVal(), slE.getVal());
  testJ.affiche(t, slZ.getVal(), slE.getVal());
  testN.affiche(t, slZ.getVal(), slE.getVal());
  
  popMatrix();
  slT.update();
  slE.update();
  slZ.update();
  t += slT.getVal();
 } 



void informations()
{
  fill(250);
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (r/2)*(r/2)) {
    text("Soleil", xS, yS);
    fill(255, 97, 0);
    textSize(35);
    text("Soleil:", 1220, 55);
    fill( 223,223,223);
    textSize(13);
    text("     Le Soleil est l’étoile au centre du Système solaire, faisant partie",1240,80);
    text("de la galaxie appelée la Voie lactée. Autour de lui, et faisant sept",1240,100);
    text("également partie du Système solaire, gravitent la Terre, ",1240,120);
    text("autres planètes, au moins cinq planètes naines, de très nombreuses",1240,140);
    text("comètes et une bande de poussière.",1240,160);
    text("Type : étoile naine jaune ",1240,200);
    text("Rayon équatorial : 696 342 km ",1240,220);
    text("Volume : 1,412 × 1018 km3 ",1240,240);
    text("Masse : 1,9891 × 1030 kg ",1240,260);
    text("Particularités : - Il représente à lui seul environ 99,854 % de la",1240,280);
    text("masse du Système solaire.",1240,300);
    text("                       - Il est âgé d'environ 4,57 milliards d’années.",1240,320);
    text("Période de rotation : ≈ 27 jours, n’étant pas un objet solide, il",1240,340);
    text("tourne plus rapidement à l’équateur (25 jours) qu’aux pôles (35 jours).",1240,360);
    text("Température : entre 15,1 MK au centre et 5 750 K à sa surface. ",1240,380);
    text("Fun facts: - Le mot soleil est issu du gallo-roman *soliculu,",1240,400);
    text("diminutif du latin classique sol, solis désignant l’astre et la divinité. ",1240,420);
    text("                 - Il existe dans la Voie lactée plus de 100 millions",1240,440);
    text("d’étoiles de type spectral identique, ce qui fait du Soleil une étoile",1240,460);
    text("assez ordinaire, bien qu’il soit en fait plus brillant que 85 % des",1240,480);
    text("étoiles de la Galaxie, qui sont en majorité des naines rouges. ",1240,500);
  }
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eMe/2+10)*(eMe/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eMe/2-10)*(eMe/2-10)) {
    text("Mercure", xMe, yMe);
    fill( 187, 187, 187);
    textSize(35);
    text("Mercure:", 1220, 55);
    fill( 223,223,223);
    textSize(13);
    text("     Mercure est la planète la plus proche du Soleil et la moins",1240,80);
    text("massive du Système solaire.",1240,100);
    text("Type : planète tellurique",1240,140);
    text("Rayon équatorial : 2 439,7 km (0,383 Terre)",1240,160);
    text("Volume : 60,83×109 km3 (0,056 Terre)",1240,180);
    text("Masse : 3,3011×1023 kg (0,055 Terre)",1240,200);
    text("Particularités:- sa densité remarquable, dépassée seulement par ",1240,220);
    text("celle de la Terre, est due à l'importance de son noyau métallique,",1240,240);
    text("qui occuperait plus de 40 % de son volume.",1240,260);
    text("                     - son champ magnétique",1240,280);
    text("                     - dépourvue de véritable atmosphère, sa surface est",1240,300);
    text("très fortement cratérisée, et globalement similaire à la face cachée",1240,320);
    text("de la Lune.",1240,340);
    text("Période de révolution : 88 jours",1240,360);
    text("Période de rotation : 59 jours",1240,380);
    text("Température moyenne de surface:442 K entre 90 K et 700 K",1240,400);
    text("Fun facts: -La planète Mercure doit son nom au dieu Mercure du ",1240,420);
    text("commerce et des voyages, également messager des autres dieux",1240,440);
    text("dans la mythologie romaine. La planète a été nommée ainsi par",1240,460);
    text("les Romains à cause de la vitesse à laquelle elle se déplaçait.",1240,480);
    text("                -Mercure laissa également son nom au troisième jour de",1240,500);
    text("la semaine, mercredi (« Mercurii dies »).",1240,520);
  }
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eVe/2+10)*(eVe/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eVe/2-10)*(eVe/2-10)) {
    text("Vénus", xVe, yVe);
    fill(250, 215, 160);
    textSize(35);
    text("Vénus:", 1220, 55);
    fill( 223,223,223);
    textSize(13);
    text("     Vénus est la deuxième planète par ordre d'éloignement au",1240,80);
    text(" Soleil, et la sixième par masse ou par taille décroissante.",1240,100);
    text("Type : planète tellurique",1240,140);
    text("Rayon équatorial : 6 051,8 ± 1,0 km (0,949 Terre)",1240,160);
    text("Volume : 928,43×109 km3 (0,857 Terre)",1240,180);
    text("Masse : 4,8685×1024 kg (0,815 Terre)",1240,200);
    text("Particularités: - champ magnétique très faible et n'a aucun",1240,220);
    text("satelllite naturel.",1240,240);
    text("                      - c’est la seule planète du Système solaire ayant",1240,260);
    text("une période de rotation supérieure à sa période de révolution.",1240,280);
    text("                      - son atmosphère, la plus épaisse de toutes les ",1240,300);
    text("planètes telluriques, est parcourue en permanence de vents",1240,320);
    text("violents de plus de 360 km/h et contient d'épaisses couches",1240,340);
    text("nuageuses opaques qui donnent à la planète son aspect laiteux, ",1240,360);
    text("gérèrent un très puissant effet de serre et réfléchissent l'essentiel",1240,380);
    text("du rayonnement solaire, en faisant une planète très",1240,400);
    text("lumineuse",1240,420);
    text("Période de révolution : 225 jours",1240,440);
    text("Période de rotation : 243 jours",1240,460);
    text("Température moyenne de surface : 735 K entre 719 K et 763 K",1240,480);
    text("Fun facts: - La planète Vénus a été baptisée du nom de la déesse",1240,500);
    text("Vénus de la mythologie romaine.",1240,520);
    text("                - Dans la culture populaire, la planète Vénus est ",1240,540);
    text("surnommée l’« étoile du berger » car elle peut être facilement ",1240,560);
    text("visible dans le ciel du matin avant l'aurore, ou dans le ciel du soir",1240,580);
    text("après le crépuscule. On lui attribua ce nom car les gardiens de",1240,600);
    text("troupeaux dans les temps anciens en tenaient compte pour aller",1240,620);
    text("dans les pâturages ou en revenir.",1240,640);
  }
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eTe/2+10)*(eTe/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eTe/2-10)*(eTe/2-10)) {
    text("Terre", xTe, yTe);
    fill(111, 255, 82);
    textSize(35);
    text("Terre:", 1220, 55);
    fill( 223,223,223);
    textSize(13);
    text("     La Terre est la troisième planète la plus proche du Soleil et la ",1240,80);
    text("cinquième plus grande, tant en taille qu'en masse. ",1240,100);
    text("Elle est également la plus massive des planètes telluriques. ",1240,120);
    text("Type : planète tellurique ",1240,160);
    text("Rayon équatorial : 6 378,137 km ",1240,180);
    text("Volume : 1,083 21×1012 km3 ",1240,200);
    text("Masse : 5,9736×1024 kg ",1240,220);
    text("Particularités: - abrite des millions d'espèces vivantes, dont",1240,240);
    text("l'Homme.",1240,260);
    text("                       - a un seul satellite naturel « permanent » connu, la",1240,280);
    text("Lune, située à environ 380 000 kilomètres de sa surface. ",1240,300);
    text("Période de révolution : 1 année ",1240,320);
    text("Période de rotation : 24 heures ",1240,340);
    text("Température moyenne de surface:15 °C entre −93,2 °C et 56,7 °C.",1240,360);
    text("Fun facts: - environ 71 % de sa surface est couverte d'océans d'eau",1240,380);
    text("salée, d’où son surnom de “planète bleue.",1240,400);
    text("                 - La Lune s'éloigne de la Terre à un rythme d'environ",1240,420);
    text("38 millimètres par an, produisant aussi l'allongement du jour ",1240,440);
    text("terrestre de 23 microsecondes par an. Sur plusieurs millions  ",1240,460);
    text("d'années, l'effet cumulé de ces petites modifications produit",1240,480);
    text("d'importants changements. Durant la période du Dévonien, il y a",1240,500);
    text("approximativement 410 millions d'années, il y avait ainsi 400 jours",1240,520);
    text("dans une année, chaque jour durant 21,8 heures. ",1240,540);


  }
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eMa/2+10)*(eMa/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eMa/2-10)*(eMa/2-10)) {
    text("Mars", xMa, yMa);
    fill(211, 111, 58);
    textSize(35);
    text("Mars:", 1220, 55);
    fill( 223,223,223);
    textSize(13);
    text("   Mars est la quatrième planète par ordre de distance croissante",1240,80);
    text("au Soleil et la deuxième par masse et par tailles croissantes.",1240,100);
    text("Type : planète tellurique ",1240,140);
    text("Rayon équatorial : 3 396,2 ± 0,1 km (0,533 Terre) ",1240,160);
    text("Volume : 163,18×109 km3 (0,151 Terre) ",1240,180);
    text("Masse : 6,4185×1023 kg (0,107 Terre) ",1240,200);
    text("Particularités : -présence de nuages, donc d’eau, attirant des ",1240,220);
    text("scientifiques à la recherche d’une forme de vie. ",1240,240);
    text("                       -possède 2 satellites: Phobos et Déimos ",1240,260);
    text("Période de révolution : 1 année +321 jours ",1240,280);
    text("Période de rotation : 24h et 37min ",1240,300);
    text("Température moyenne de surface : 210 K (−63 °C ) ",1240,320);
    text("Fun facts: -La plus grande montagne connue du système solaire est  ",1240,340);
    text("sur Mars (21 km de hauteur et 600 km de diamètre). ",1240,360);
    text("                -Des morceau de Mars ont été retrouvés sur Terre. ",1240,380);
    text("                -Cette planète a été nommé d’après Mars le Dieu",1240,400);
    text(" romain de la guerre. ",1240,420);

  }
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eJu/2+10)*(eJu/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eJu/2-10)*(eJu/2-10)) {
    text("Jupiter", xJu, yJu);
    fill(214, 116, 43);
    textSize(35);
    text("Jupiter:", 1220, 55);
    fill( 223,223,223);
    textSize(13);
    text("    Jupiter est la plus grosse planète du Système solaire," ,1240,80);
    text("plus volumineuse et massive que toutes les autres planètes réunies,",1240,100);
    text(" et la cinquième planète par sa distance au Soleil.",1240,120);
    text("Type: Planète géante gazeuse",1240,160);
    text("Rayon équatorial: 71 492 km (11,209 Terres)",1240,180);
    text("Volume :  1,431 28×1015 km3 (1 321,3 Terres)",1240,200);
    text("Masse :  1,8986×1027 kg (317,8 Terres)",1240,220);
    text("Particularités: -possède un champ magnétique, 14 fois plus" ,1240,240);
    text("puissant que celui de la Terre, le plus intense du Système solaire." ,1240,260);
    text("                       -possède 79 satellites naturels confirmés dont 50",1240,280);
    text("nommés. Quatre sont de grands satellites, connus depuis plusieurs",1240,300);
    text("siècles et regroupés sous la dénomination de « lunes galiléennes ».",1240,320);
    text("Période de révolution: 11 années +315 jours",1240,340);
    text("Période de rotation:  9 h 55 min",1240,360);
    text("Température moyenne à la surface: 210 K (−63 °C)",1240,380);
    text("Fun facts: -Les 16 satellites principaux de Jupiter ont été nommés",1240,400);
    text("d'après les conquêtes amoureuses de Zeus, l'équivalent grec",1240,420);
    text("du dieu romain Jupiter.",1240,440);
    text("                -La Grande Tache rouge est une tornade de Jupiter, ",1240,460);
    text("de 24 à 40 000 km de long sur 12 000 km de large,",1240,480);
    text("d’une altitude maximale de 8 km pouvant contenir deux ou trois",1240,500);
    text("planètes de la taille de la Terre. ",1240,520);
    text("                -Elle tourne sur elle-même dans le sens contraire ",1240,540);
    text("des aiguilles d'une montre, avec une période d'environ 6 jours; ",1240,560);
    text("et les vents soufflent à plus de 400 km/h sur ses bords.",1240,580);

  }
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eSa/2+10)*(eSa/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eSa/2-10)*(eSa/2-10)) {
    fill(250);
    text("Saturne", xSa, ySa);
    fill( 238, 225, 175 );
    textSize(35);
    text("Saturne:", 1220, 55);
    fill(223);
    textSize(13);
    text("    Saturne est la sixième planète du Système solaire" ,1240,80);
    text("par ordre de distance au Soleil et la deuxième après Jupiter tant",1240,100);
    text("par sa taille que par sa masse.",1240,120);
    text("Type: Planète géante gazeuse",1240,160);
    text("Rayon équatorial: 60 268 km (9,4492 Terres)",1240,180);
    text("Volume :  827,13×1012 km3 (763 Terres)",1240,200);
    text("Masse :  568,46×1024 kg (95,152 Terres)",1240,220);
    text("Particularité : Saturne possède des anneaux qui sont constitués" ,1240,240);
    text("d'innombrables particules de glace et de poussière dont la taille" ,1240,260);
    text("varie de quelques micromètres à quelques centaines de mètres, ils",1240,280);
    text("ont chacun une orbite différente et forment un disque dont le",1240,300);
    text("diamètre est de 360 000km.",1240,320);
    text("Période de révolution: 29 années + 167 jours",1240,340);
    text("Période de rotation:  0, 448 jour (10 h 33 min)",1240,360);
    text("Température moyenne à la surface:  84 K (-189° C) à 10kPa et 134 K",1240,380);
    text("(−139 °C) à 100 kPa",1240,400);
    text("Fun facts: -Saturne peut être vue à l'œil nu",1240,420);
    text("                -Saturne est la planète du Système Solaire qui a le plus de",1240,440);
    text("lunes (150 et plusieurs autres petits satellites).",1240,460);

  }
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eUr/2+10)*(eUr/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eUr/2-10)*(eUr/2-10)) {
    text("Uranus", xUr, yUr);
    fill( 161, 232, 227 );
    textSize(35);
    text("Uranus:", 1220, 55);
    fill(223);
    textSize(13);
    text("    Uranus est la septième planète du Système solaire par sa distance",1240,80);
    text("au Soleil, la troisième par la taille et la quatrième par la masse.",1240,100);
    text("Type : Planète géante de glace",1240,140);
    text("Rayon équatorial : 25 559 ± 4 km",1240,160);
    text("Volume : 6,833 44×1013 km3",1240,180);
    text("Masse : 8,6810×1025 kg",1240,200);
    text("Particularités : -Uranus est la plus froide des planètes du système",1240,220);
    text("solaire.",1240,240);
    text("                       -Uranus possède 27 satellites et 13 anneaux étroits",1240,260);
    text("                       -Le système uranien est unique dans le Système solaire",1240,280);
    text("car son axe de rotation est pratiquement dans son plan de révolution",1240,300);
    text("autour du Soleil",1240,320);
    text("Période de révolution : 84 années",1240,340);
    text("Période de rotation : 17 heures (rétrograde, dans le sens inverse",1240,360);
    text("de la Terre)",1240,380);
    text("Température à la surface : environ −224°C entre 53 K (−220 °C)",1240,400);
    text("à 10 kPa et 76 K (−197 °C) à 100 kPa",1240,420);
    text("Fun facts : -Cette planète n’est pas visible à l’oeil nu, elle a été la",1240,440);
    text("première planète découverte à l’aide d’un télescope.",1240,460);
    text("                  -Herschel, le découvreur de cette planète, la nomme",1240,480);
    text("« Georgium Sidus » (étoile de George), ou « Georgian Planet » (planète",1240,500);
    text("Géorgienne) en l'honneur de son mécène, le roi George III",1240,520);
  }
  if (((mouseX-xS+200)*(mouseX-xS+200)) + ((mouseY-yS)*(mouseY-yS)) <= (eNe/2+10)*(eNe/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eNe/2-10)*(eNe/2-10)||((mouseX-xS-200)*(mouseX-xS-200)) + ((mouseY-yS)*(mouseY-yS)) <= (eNe/2+10)*(eNe/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eNe/2-10)*(eNe/2-10)) {
    text("Neptune", xNe, yNe);
    fill(54, 113, 223 );
    textSize(35);
    text("Neptune:", 1220, 55);
    fill(223);
    textSize(13);
    text("    Neptune est la huitième et dernière planète du Système solaire",1240,80);
    text("par distance croissante au Soleil.",1240,100);
    text("Type : Planète géante de glace",1240,140);
    text("Rayon équatorial : 24 764 ± 15 km",1240,160);
    text("Volume : 62,526×1012 km3",1240,180);
    text("Masse : 102,43×1024 kg",1240,200);
    text("Particularité : Neptune est la planète la plus éloigné du système",1240,220);
    text("solaire",1240,240);
    text("Période de révolution : 164 années + 280 jours",1240,260);
    text("Période de rotation : 0,671 25 d(16 h 6,6 min)",1240,280);
    text("Température à la surface : 55 K (−218 °C )",1240,300);
    text("Fun facts : -1 ans sur Neptune dure 165 ans sur Terre.",1240,320);
    text("                  -Neptune est nommé d’après le Dieu romain de la mer.",1240,340);
    text("                  -L'origine de la couleur bleue de Neptune est toujours",1240,360);
    text("inexpliquée",1240,380);
    text("                  -La découverte de Neptune a été faite uniquement par le",1240,400); 
    text("calcul à partir de la trajectoire et des caractéristiques d'Uranus.",1240,420);
    text("La planète n'est jamais observable à l'œil nu contrairement aux sept",1240,440);
    text("autres planètes du Système Solaire.",1240,460);
  }
  if (mouseX<=120 && mouseX>=60 && mouseY<=860 && mouseY>=800) {
    fill( 23, 51, 90);
    textSize(35);
    text("Le Système Solaire:", 1220, 55);
    fill( 223,223,223);
    textSize(13);
    text("Ceci est une représentation simplifiée de notre système solaire,",1240,80);
    text("aucune distance n'est à l'échelle de même que les tailles des",1240,100);
    text("planètes.",1240,120);
    text("Pour obtenir des informations sur les planètes, passez",1240,160);
    text("simplement votre souris dessus.",1240,180);
    textSize(20);
    text("Bonne découverte !",1240,220);
  }
}
