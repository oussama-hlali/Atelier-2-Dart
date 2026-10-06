import 'package:console/console.dart' as console;

void main(List<String> arguments) {
  // TODO 1 : déclarer nom (String), age (int), moyenne (double), inscrit (bool)
  String nom = 'Oussama';
  int age = 20;
  double moyenne = 15.10;
  bool inscrit = true;

  // TODO 2 : déclarer const tva = 0.19 et final anneeCourante = DateTime.now().year
  const tva = 0.19;
  final anneeCourante = DateTime.now().year;

  // TODO 3 : afficher avec l'interpolation
  // print('Je m'appelle $nom, j'ai $age ans.');
  print("Je m'appele $nom,j'ai $age ans.");

  // TODO 4 : afficher la moyenne arrondie à 2 décimales
  // indice : moyenne.toStringAsFixed(2)
  print("Ma moyenne = ${moyenne.toStringAsFixed(2)}");

  // TODO 5 : décommenter la ligne suivante, lire l'erreur, puis la commenter
  //tva = 0.20;
  print("année :$anneeCourante");
}
