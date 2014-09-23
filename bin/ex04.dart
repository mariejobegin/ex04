import 'dart:math' as math;

void main() {
   
  // Question 1
  print("");
  print("Question 1:");
  
  // Référence: https://docs.google.com/presentation/d/1dnz-3b4-KsdgTnLDzI381SILc26fCgyuuYLbe96gBC0/edit#slide=id.g2e60941c_0_20, diapositive 43
  int count = 9;
  String sequence = fibonacciIteration(count);
  print('Fibonacci with iteration: '
        '${count + 1} numbers sequence');
  print(sequence);

  // Question 2
  print("");
  print("Question 2:");
  print(CoordonneeRectangle(800, 600, 160, 45));
  
  // Question 3
  print("");
  print("Question 3:");
  DateTime dateNaissance;
  dateNaissance = new DateTime(1988,7,1,0,0,0);
  print(Age(dateNaissance));
  
  // Question 4
  print("");
  print("Question 4:");
  print(Interet(1000.0, 5, 0.048));
  
  // Question 5
  print("");
  print("Question 5:");
  print(TableDe8(16));
  
}

//Référence provient de : https://docs.google.com/presentation/d/1dnz-3b4-KsdgTnLDzI381SILc26fCgyuuYLbe96gBC0/edit#slide=id.g2e60941c_0_20, diapositive 42
String fibonacciIteration(int t) {
  
  int a = 0, b = 1, f = 1, n = 1;
  String result = '0' ' 1';
  
  while (n < t) {
    f = a + b;
    result = '$result $f';
    a = b; 
    b = f;
    n = n + 1;
  }
  
  return result;
  
}

String CoordonneeRectangle(int longueurRectangle, int hauteurRectangle, int deplacement, int angle) {
    
  double xPointCentral;
  double yPointCentral;
  
  double x, y;
  
  String resultat;
  
  xPointCentral = longueurRectangle / 2;
  yPointCentral = hauteurRectangle / 2;
  
  x = math.sin(angle) * deplacement + xPointCentral;
  y = math.cos(angle) * deplacement + yPointCentral;
  
  resultat = "(" + x.toStringAsFixed(2) + ", " + y.toStringAsFixed(2) + ")";
  
  return resultat;
  
}

String Age(DateTime dateNaissance){
  
  DateTime maintenant;
  Duration duree;
  int annee, mois, jour;
  String resultat;

  maintenant = new DateTime.now();
  maintenant = maintenant.subtract(new Duration(hours:maintenant.hour, minutes:maintenant.minute,seconds:maintenant.second, milliseconds:maintenant.millisecond));
  
  duree = maintenant.difference(dateNaissance);
  
  annee = duree.inDays ~/ 365;
  mois = maintenant.month - dateNaissance.month;
  jour = maintenant.day - dateNaissance.day;

  resultat = annee.toString() + " années " + mois.toString() + " mois " + jour.toString() + " jour";

  return resultat;
 
}

String Interet(double somme, int annee, double tauxInteret){
  
  int compteur;
  String resultat;
    
  for (compteur = 1; compteur <= annee; compteur++){
    
    somme = somme * (1+tauxInteret);
    resultat = "Somme après " + compteur.toString() + " année(s): " + somme.toStringAsFixed(2) + " \$";
    
  }
  
  return resultat;
  
}

String TableDe8(int nombreTermes){
  
  int compteur;
  String resultat= "";

  for (compteur = 1; compteur <= nombreTermes; compteur++){
      
    resultat = "$resultat 8 x " + compteur.toString() + " = " + (8 * compteur).toString() + "\n";
    
  }
  
  return resultat;
  
}