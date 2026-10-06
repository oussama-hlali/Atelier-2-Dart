import 'package:console/console.dart' as console;

class Cours {
  String nom;
  double coef;
  double note;

  Cours(this.nom, this.coef, this.note);
}

void main(List<String> arguments) {
  List<Cours> cours = [
    Cours("Dart", 2, 15),
    Cours("Java", 3, 14),
    Cours("Reseaux", 1, 10),
  ];

  double totalPnts = 0;
  double totalCoef = 0;
  for (var c in cours) {
    totalPnts += c.note * c.coef;
    totalCoef += c.coef;
  }
  double moyenne = totalPnts / totalCoef;
  Cours meilleur = cours[0];
  for (var c in cours) {
    if (c.note > meilleur.note) meilleur = c;
  }

  print("Moyenne pondérée : $moyenne");
  print("Cours ont la meilleur note : ${meilleur.nom}");
  print("note:${meilleur.note}");
}
