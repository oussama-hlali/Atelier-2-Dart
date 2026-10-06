import 'package:console/console.dart' as console;

void main(List<String> arguments) {
  List<int> notes = [12, 8, 15, 17, 9];
  // TODO 1 : ajouter la note 11 à la liste
  notes.add(11);

  // TODO 2 : afficher le nombre de notes (propriété length)
  print('${notes.length} notes');

  // TODO 3 : afficher chaque note, une par ligne,
  // avec une boucle for
  for (int note in notes) {
    print(note);
  }
  // TODO 4 : créer une liste des notes >= 10 avec where, puis l'afficher
  // indice : notes.where((n) => ...).toList()
  List<int> notesValides = notes.where((n) => n >= 10).toList();
  print('notes>=10 : $notesValides');
  // TODO 5 : calculer et afficher la moyenne
  // indice : une boucle et une variable somme
  int somme = 0;
  for (int note in notes) {
    somme += note;
  }
  double moyenne = somme / notes.length;
  print('Moyenne : ${moyenne.toStringAsFixed(2)}');
  Map<String, int> ages = {'Ahmed': 22, 'Sarra': 21};
  // TODO 6 : ajouter 'Youssef' avec l'âge 23
  ages['Youssef'] = 23;

  // TODO 7 : parcourir la map et afficher 'Ahmed a 22 ans'
  // indice : ages.forEach((cle, valeur) { ... });
  ages.forEach((cle, valeur) {
    print('$cle a $valeur ans');
  });
}
