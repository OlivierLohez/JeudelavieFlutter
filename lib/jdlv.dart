import 'package:flutter/material.dart';

class JDLV {
  List<List<Color>> tab =
      List.generate(10, (index) => List.generate(10, (index) => Colors.red));

  JDLV();

  //permet de pouvoir vérifier le nombre de cases vivantes pour faire vivre ou non notre case
  void corpsdujeu(x, y) {
    int largeur = y;
    int longueur = x;
    int compteur = 0;
    if (tab[largeur - 1][longueur - 1] == Colors.blue) {
      compteur++;
    }
    if (tab[largeur - 1][longueur] == Colors.blue) {
      compteur++;
    }
    if (tab[largeur - 1][longueur + 1] == Colors.blue) {
      compteur++;
    }
    if (tab[largeur][longueur - 1] == Colors.blue) {
      compteur++;
    }
    if (tab[largeur][longueur + 1] == Colors.blue) {
      compteur++;
    }
    if (tab[largeur + 1][longueur - 1] == Colors.blue) {
      compteur++;
    }
    if (tab[largeur + 1][longueur] == Colors.blue) {
      compteur++;
    }
    if (tab[largeur + 1][longueur + 1] == Colors.blue) {
      compteur++;
    }
    if (compteur == 2) {
      tab[largeur][longueur] = Colors.blue;
    } else {
      tab[largeur][longueur] = Colors.red;
    }
  }

  Color couleurdelacase(x, y) {
    return tab[x][y];
  }

  //permet de remettre toutes les cases sur la même couleur
  void restart() {
    for (var y = 0; y < tab.length; y++) {
      for (var x = 0; x < tab.length; x++) {
        tab[x][y] = Colors.red;
      }
    }
  }

  //permet de changer de couleur
  void changementdecouleur(x, y) {
    for (var y = 0; y < tab.length; y++) {
      for (var x = 0; x < tab.length; x++) {
        if (tab[x][y] == Colors.red) {
          tab[x][y] = Colors.black;
        } else {
          tab[x][y] = Colors.red;
        }
      }
    }
  }
}
