import 'package:console/console.dart' as console;

void main(List<String> arguments) {
  print(carre(5));
  print(moyenne(12, 16));
  afficherFiche(nom: 'Ahmed');
  afficherFiche(nom: 'Sarra', classe: 'DSI3', moyenne: 15.5);
}

// TODO 1 : fonction fléchée qui renvoie le carré d'un entier
int carre(int n) => n * n;

// TODO 2 : renvoie la moyenne de deux notes (double)
double moyenne(double n1, double n2) {
  return (n1 + n2) / 2;
}

// TODO 3 : compléter la signature
// nom : nommé et obligatoire
// classe : nommé, valeur par défaut 'Non précisée'
// moyenne : nommé, peut être null
// TODO 4 : afficher
// Nom : Ahmed | Classe : Non précisée | Moyenne : non renseignée
void afficherFiche({
  required String nom,
  String classe = 'Non précisée',
  double? moyenne,
}) {
  print(
    'Nom: $nom | Clasee: $classe | Moyenne: ${moyenne ?? 'non renseignée'}',
  );
}
