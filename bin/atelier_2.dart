import 'package:console/console.dart' as console;

class Produit {
  final String nom;
  final double prix;
  Produit({required this.nom, required this.prix});
  double get prixTTC => prix * 1.19;
  @override
  String toString() => '$nom : $prix DT';
}

void main(List<String> arguments) {
  final etudiants = [
    Etudiant(nom: 'Ahmed', moyenne: 14.5),
    Etudiant(nom: 'Sarra', moyenne: 9.0),
    Etudiant(nom: 'Youssef', moyenne: 12.0),
  ];
  // TODO 4 : afficher chaque étudiant (une boucle for)
  for (var etudiant in etudiants) {
    print(etudiant);
  }
  // TODO 5 : afficher uniquement les admis (moyenne >= 10)
  // indice : etudiants.where((e) => e.estAdmis)
  final admis = etudiants.where((e) => e.estAdmis);
  print("Admis : ${admis.map((e) => e.nom).join(', ')}");
}

class Etudiant {
  // TODO 1 : déclarer final nom (String) et final moyenne (double)
  final String nom;
  final double moyenne;

  // TODO 2 : constructeur avec paramètres nommés obligatoires
  Etudiant({required this.nom, required this.moyenne});

  // TODO 3 : getter estAdmis qui renvoie true si moyenne >= 10
  bool get estAdmis => moyenne >= 10;

  // TODO 3 bis : redéfinir toString() pour renvoyer
  // 'Ahmed - 14.5 (admis)' ou 'Sarra - 9.0 (non admis)'
  @override
  String toString() {
    return "$nom - $moyenne (${estAdmis ? 'admis' : 'non admis'})";
  }
}
