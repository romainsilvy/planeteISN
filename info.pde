/*dans ce fichier on a ce qui est nescesaire a l'affichage des informations lorsqu'on se trouve sur le systeme solaire*/

void informations() {
  /*declaration des textes de description des planetes a integrer au xml*/
  texteSoleil = "    Le Soleil est l’étoile au centre du Système solaire, faisant partie de la galaxie appelée la Voie lactée. Autour de lui, et faisant sept également partie du Système solaire, gravitent la Terre, autres planètes, au moins cinq planètes naines, de très nombreuses comètes et une bande de poussière. \nType : étoile naine jaune \nRayon équatorial : 696 342 km \nVolume : 1,412 × 1018 km3 \nMasse : 1,9891 × 1030 kg \nParticularités : \n \t- Il représente à lui seul environ 99,854 % de la masse du Système solaire. \n \t- Il est âgé d'environ 4,57 milliards d’années. \nPériode de rotation : ≈ 27 jours, n’étant pas un objet solide, il tourne plus rapidement à l’équateur (25 jours) qu’aux pôles (35 jours). \nTempérature : entre 15,1 MK au centre et 5 750 K à sa surface. \nFun facts: \n \t- Le mot soleil est issu du gallo-roman *soliculu, diminutif du latin classique sol, solis désignant l’astre et la divinité. \n \t- Il existe dans la Voie lactée plus de 100 millions d’étoiles de type spectral identique, ce qui fait du Soleil une étoile assez ordinaire, bien qu’il soit en fait plus brillant que 85 % des étoiles de la Galaxie, qui sont en majorité des naines rouges. ";
  texteMercure = "    Mercure est la planète la plus proche du Soleil et la moins massive du Système solaire. \nType : planète tellurique \nRayon équatorial : 2 439,7 km (0,383 Terre) \nVolume : 60,83×109 km3 (0,056 Terre) \nMasse : 3,3011×1023 kg (0,055 Terre) \nParticularités:\n- sa densité remarquable, dépassée seulement par celle de la Terre, est due à l'importance de son noyau métallique, qui occuperait plus de 40 % de son volume. \n- son champ magnétique \n- dépourvue de véritable atmosphère, sa surface est très fortement cratérisée, et globalement similaire à la face cachée de la Lune. \nPériode de révolution : 88 jours \nPériode de rotation : 59 jours \nTempérature moyenne de surface:442 K entre 90 K et 700 K \nFun facts: \n-La planète Mercure doit son nom au dieu Mercure du commerce et des voyages, également messager des autres dieux dans la mythologie romaine. La planète a été nommée ainsi par les Romains à cause de la vitesse à laquelle elle se déplaçait. \n-Mercure laissa également son nom au troisième jour de la semaine, mercredi (« Mercurii dies »).";
  texteVenus = "    Vénus est la deuxième planète par ordre d'éloignement au Soleil, et la sixième par masse ou par taille décroissante. \nType : planète tellurique \nRayon équatorial : 6 051,8 ± 1,0 km (0,949 Terre) \nVolume : 928,43×109 km3 (0,857 Terre) \nMasse : 4,8685×1024 kg (0,815 Terre) \nParticularités: \n- champ magnétique très faible et n'a aucun satelllite naturel. \n- c’est la seule planète du Système solaire ayant une période de rotation supérieure à sa période de révolution. \n- son atmosphère, la plus épaisse de toutes les planètes telluriques, est parcourue en permanence de vents violents de plus de 360 km/h et contient d'épaisses couches nuageuses opaques qui donnent à la planète son aspect laiteux, gérèrent un très puissant effet de serre et réfléchissent l'essentiel du rayonnement solaire, en faisant une planète très lumineuse \nPériode de révolution : 225 jours \nPériode de rotation : 243 jours \nTempérature moyenne de surface : 735 K entre 719 K et 763 K \nFun facts: \n- La planète Vénus a été baptisée du nom de la déesse Vénus de la mythologie romaine. \n- Dans la culture populaire, la planète Vénus est surnommée l’« étoile du berger » car elle peut être facilement visible dans le ciel du matin avant l'aurore, ou dans le ciel du soir après le crépuscule. On lui attribua ce nom car les gardiens de troupeaux dans les temps anciens en tenaient compte pour aller dans les pâturages ou en revenir.";
  texteTerre = "    La Terre est la troisième planète la plus proche du Soleil et la cinquième plus grande, tant en taille qu'en masse. Elle est également la plus massive des planètes telluriques. \nType : planète tellurique \nRayon équatorial : 6 378,137 km \nVolume : 1,083 21×1012 km3 \nMasse : 5,9736×1024 kg \nParticularités: \n- abrite des millions d'espèces vivantes, dont l'Homme. \n- a un seul satellite naturel « permanent » connu, la Lune, située à environ 380 000 kilomètres de sa surface. \nPériode de révolution : 1 année \nPériode de rotation : 24 heures \nTempérature moyenne de surface:15 °C entre −93,2 °C et 56,7 °C. \nFun facts: \n- environ 71 % de sa surface est couverte d'océans d'eau salée, d’où son surnom de “planète bleue. \n- La Lune s'éloigne de la Terre à un rythme d'environ 38 millimètres par an, produisant aussi l'allongement du jour terrestre de 23 microsecondes par an. Sur plusieurs millions d'années, l'effet cumulé de ces petites modifications produit d'importants changements. Durant la période du Dévonien, il y a approximativement 410 millions d'années, il y avait ainsi 400 jours dans une année, chaque jour durant 21,8 heures.";
  texteMars = "    Mars est la quatrième planète par ordre de distance croissante Au Soleil et la deuxième par masse et par tailles croissantes. \nType : planète tellurique \nRayon équatorial : 3 396,2 ± 0,1 km (0,533 Terre) \nVolume : 163,18×109 km3 (0,151 Terre) \nMasse : 6,4185×1023 kg (0,107 Terre) \nParticularités : \n-présence de nuages, donc d’eau, attirant des scientifiques à la recherche d’une forme de vie. \n-possède 2 satellites: Phobos et Déimos \nPériode de révolution : 1 année +321 jours \nPériode de rotation : 24h et 37min \nTempérature moyenne de surface : 210 K (−63 °C ) \nFun facts: \n-La plus grande montagne connue du système solaire est sur Mars (21 km de hauteur et 600 km de diamètre). \n-Des morceau de Mars ont été retrouvés sur Terre. \n-Cette planète a été nommé d’après Mars le Dieu romain de la guerre";
  texteJupiter = "    Jupiter est la plus grosse planète du Système solaire plus volumineuse et massive que toutes les autres planètes réunies, et la cinquième planète par sa distance au Soleil. \nType: Planète géante gazeuse \nRayon équatorial: 71 492 km (11,209 Terres) \nVolume : 1,431 28×1015 km3 (1 321,3 Terres) \nMasse : 1,8986×1027 kg (317,8 Terres) \nParticularités: \n-possède un champ magnétique, 14 fois plus puissant que celui de la Terre, le plus intense du Système solaire. \n-possède 79 satellites naturels confirmés dont 50 nommés. Quatre sont de grands satellites, connus depuis plusieurs siècles et regroupés sous la dénomination de « lunes galiléennes ». \nPériode de révolution: 11 années +315 jours \nPériode de rotation: 9 h 55 min \nTempérature moyenne à la surface: 210 K (−63 °C) \nFun facts: \n-Les 16 satellites principaux de Jupiter ont été nommés d'après les conquêtes amoureuses de Zeus, l'équivalent grec du dieu romain Jupiter. \n-La Grande Tache rouge est une tornade de Jupiter, de 24 à 40 000 km de long sur 12 000 km de large, d’une altitude maximale de 8 km pouvant contenir deux ou trois planètes de la taille de la Terre. \n-Elle tourne sur elle-même dans le sens contraire des aiguilles d'une montre, avec une période d'environ 6 jours; et les vents soufflent à plus de 400 km/h sur ses bords";
  texteSaturne = "    Saturne est la sixième planète du Système solaire par ordre de distance au Soleil et la deuxième après Jupiter tant par sa taille que par sa masse. \nType: Planète géante gazeuse \nRayon équatorial: 60 268 km (9,4492 Terres) \nVolume : 827,13×1012 km3 (763 Terres) \nMasse : 568,46×1024 kg (95,152 Terres) \nParticularité : Saturne possède des anneaux qui sont constitués d'innombrables particules de glace et de poussière dont la taille varie de quelques micromètres à quelques centaines de mètres, ils ont chacun une orbite différente et forment un disque dont le diamètre est de 360 000km. \nPériode de révolution: 29 années + 167 jours \nPériode de rotation: 0, 448 jour (10 h 33 min) \nTempérature moyenne à la surface: 84 K (-189° C) à 10kPa et 134 K (−139 °C) à 100 kPa \nFun facts: \n-Saturne peut être vue à l'œil nu \n-Saturne est la planète du Système Solaire qui a le plus de lunes (150 et plusieurs autres petits satellites).";
  texteUranus = "    Uranus est la septième planète du Système solaire par sa distance au Soleil, la troisième par la taille et la quatrième par la masse. \nType : Planète géante de glace \nRayon équatorial : 25 width*0.2459 ± 4 km \nVolume : 6,833 44×1013 km3 \nMasse : 8,6810×1025 kg \nParticularités : \n-Uranus est la plus froide des planètes du système solaire. \n-Uranus possède 27 satellites et 13 anneaux étroits \n-Le système uranien est unique dans le Système solaire car son axe de rotation est pratiquement dans son plan de révolution autour du Soleil \nPériode de révolution : 84 années \nPériode de rotation : 17 heures (rétrograde, dans le sens inverse de la Terre) \nTempérature à la surface : environ −224°C entre 53 K (−220 °C) à 10 kPa et 76 K (−197 °C) à 100 kPa \nFun facts : \n-Cette planète n’est pas visible à l’oeil nu, elle a été la première planète découverte à l’aide d’un télescope. \n-Herschel, le découvreur de cette planète, la nomme « Georgium Sidus » (étoile de George), ou « Georgian Planet » (planète Géorgienne) en l'honneur de son mécène, le roi George III";
  texteNeptune = "    Neptune est la huitième et dernière planète du Système solaire par distance croissante au Soleil. \nType : Planète géante de glace \nRayon équatorial : 24 764 ± 15 km \nVolume : 62,526×1012 km3 \nMasse : 102,43×1024 kg \nParticularité : Neptune est la planète la plus éloigné du système solaire \nPériode de révolution : 164 années + 280 jours \nPériode de rotation : 0,671 25 d(16 h 6,6 min) \nTempérature à la surface : 55 K (−218 °C ) \nFun facts : \n-1 ans sur Neptune dure 165 ans sur Terre. \n-Neptune est nommé d’après le Dieu romain de la mer. \t\t\t\t\t -L'origine de la couleur bleue de Neptune est toujours inexpliquée \n-La découverte de Neptune a été faite uniquement par le calcul à partir de la trajectoire et des caractéristiques d'Uranus. La planète n'est jamais observable à l'œil nu contrairement aux sept autres planètes du Système Solaire";
  texteIntro = "    Ceci est une représentation simplifiée de notre Système Solaire. Aucune distance n'est à l'échelle, de même pour les tailles des planètes. \n Pour obtenir des informations sur les planètes, passez simplement votre souris dessus ou sur leurs orbites. N’hésitez pas à tester vos connaissances avec le quizz. \n\n Bonne découverte !";

  /*tous les test nescesaires pour savoir sur quelle planete se trouve la souris*/

  //soleil
  if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (r/2)*(r/2)) {
    fill(250);
    textSize(size6);
    text("Soleil", xS, yS);  //texte sur la planete
    fill(#ff8000);
    text("Soleil:", width*0.76, height*0.051);  //affichage du nom de la planete a droite
    fill(223);
    textSize(size1);
    text(texteSoleil, width*0.75, height*0.075, width*0.245, height);  //texte avec les infos de la planete
  } 
    
    //mercure
  else if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eMe/2+10)*(eMe/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eMe/2-10)*(eMe/2-10)) {
    fill(250);
    textSize(size6);
    text("Mercure", xMe, yMe);  //texte sur la planete
    fill( 187, 187, 187);
    text("Mercure:", width*0.76, height*0.051);  //affichage du nom de la planete a droite
    fill(223);
    textSize(size1);
    text(texteMercure, width*0.75, height*0.075, width*0.245, height);  //texte avec les infos de la planete
  } 
  
  //venus
  else if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eVe/2+10)*(eVe/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eVe/2-10)*(eVe/2-10)) {
    fill(250);
    textSize(size6);
    text("Vénus", xVe, yVe);  //texte sur la planete
    fill(250, 215, 160);
    text("Vénus:", width*0.76, height*0.051);  //affichage du nom de la planete a droite
    fill(223);
    textSize(size1);
    text(texteVenus, width*0.75, height*0.075, width*0.245, height);  //texte avec les infos de la planete
  } 
  
  //terre
  else if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eTe/2+10)*(eTe/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eTe/2-10)*(eTe/2-10)) {
    fill(250);
    textSize(size6);
    text("Terre", xTe, yTe);  //texte sur la planete
    fill(111, 255, 82);
    text("Terre:", width*0.76, height*0.051);  //affichage du nom de la planete a droite
    fill(223);
    textSize(size1);
    text(texteTerre, width*0.75, height*0.075, width*0.245, height);  //texte avec les infos de la planete
  } 
  
  //mars
  else if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eMa/2+10)*(eMa/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eMa/2-10)*(eMa/2-10)) {
    fill(250);
    textSize(size6);
    text("Mars", xMa, yMa);  //texte sur la planete
    fill(211, 111, 58);
    text("Mars:", width*0.76, height*0.051);  //affichage du nom de la planete a droite
    fill(223);
    textSize(size1);
    text(texteMars, width*0.75, height*0.075, width*0.245, height);  //texte avec les infos de la planete
  } 
  
  //jupiter
  else if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eJu/2+10)*(eJu/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eJu/2-10)*(eJu/2-10)) {
    fill(250);
    textSize(size6);
    text("Jupiter", xJu, yJu);  //texte sur la planete
    fill(214, 116, 43);
    text("Jupiter:", width*0.76, height*0.051);  //affichage du nom de la planete a droite
    fill(223);
    textSize(size1);
    text(texteJupiter, width*0.75, height*0.075, width*0.245, height);  //texte avec les infos de la planete
  } 
  
  //saturne
  else if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eSa/2+10)*(eSa/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eSa/2-10)*(eSa/2-10)) {
    fill(250);
    textSize(size6);
    text("Saturne", xSa, ySa);  //texte sur la planete
    fill( 238, 225, 175 );
    text("Saturne:", width*0.76, height*0.051);  //affichage du nom de la planete a droite
    fill(223);
    textSize(size1);
    text(texteSaturne, width*0.75, height*0.075, width*0.245, height);  //texte avec les infos de la planete
  } 
  
  //uranus
  else if (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS)) <= (eUr/2+10)*(eUr/2+10) && (((mouseX-xS)*(mouseX-xS)) + ((mouseY-yS)*(mouseY-yS))) >= (eUr/2-10)*(eUr/2-10)) {
    fill(250);
    textSize(size6);
    text("Uranus", xUr, yUr);  //texte sur la planete
    fill( 161, 232, 227 );
    text("Uranus:", width*0.76, height*0.051);  //affichage du nom de la planete a droite
    fill(223);
    textSize(size1);
    text(texteUranus, width*0.75, height*0.075, width*0.245, height);  //texte avec les infos de la planete
  } 
  
  //neptune
  else if (((mouseX-xS+100)*(mouseX-xS+100)) + ((mouseY-yS)*(mouseY-yS)) <= (eNe/2+10)*(eNe/2+10) && (((mouseX-xS+90)*(mouseX-xS+90)) + ((mouseY-yS)*(mouseY-yS))) >= (eNe/2-10)*(eNe/2-10)||((mouseX-xS-100)*(mouseX-xS-100)) + ((mouseY-yS)*(mouseY-yS)) <= (eNe/2+10)*(eNe/2+10) && (((mouseX-xS-90)*(mouseX-xS-90)) + ((mouseY-yS)*(mouseY-yS))) >= (eNe/2-10)*(eNe/2-10)) {
    fill(250);
    textSize(size6);
    text("Neptune", xNe, yNe);  //texte sur la planete
    fill(54, 113, 223 );
    text("Neptune:", width*0.76, height*0.051);  //affichage du nom de la planete a droite
    fill(223);
    textSize(size1);
    text(texteNeptune, width*0.75, height*0.075, width*0.245, height);  //texte avec les infos de la planete 
  } 
  
  //description du systeme
  else {
    fill(223);
    textSize(size6);
    text("Le Système Solaire:", width*0.76, height*0.051);
    textSize(size1);
    text(texteIntro, width*0.75, height*0.075, width*0.25, height); // on affiche les infos du systeme solaire dans le cardre
  }
}
