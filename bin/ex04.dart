import 'dart:math' as math;

void main() {
   
  DateTime dateNaissance;
  
  // Question 1
  Fibonacci(10);

  // Question 2
  CoordonneeRectangle(800, 600, 160, 45);
  
  // Question 3
  dateNaissance = new DateTime(1988,7,1,0,0,0);
  Age(dateNaissance);
  
  // Question 4
  Interet(1000.0, 5, 0.048);
  
  // Question 5
  TableDe8(16);
  
}

void Fibonacci(int nombreTermes){
  
  int compteur;
  List fibonacci;
  int n1, n2;
  
  fibonacci = new List(nombreTermes);
  
  print("");
  print("Question 1:");
   
  fibonacci[0] = 0;
  fibonacci[1] = 1;
  
  for (compteur = 0; compteur < nombreTermes; compteur++){
    
    if (compteur == 0 || compteur == 1 ){
      print("f(" + compteur.toString() + ") = " + fibonacci[compteur].toString());
    }
    else{
      n1 = fibonacci[compteur - 1];
      n2 = fibonacci[compteur - 2];
      
      fibonacci[compteur] = n1 + n2;
       print("f(" + compteur.toString() + ") = " + fibonacci[compteur].toString());
    }
    
  }
  
  print("");
  
}

void CoordonneeRectangle(int longueurRectangle, int hauteurRectangle, int deplacement, int angle) {
    
  double xPointCentral;
  double yPointCentral;
  
  double x, y;
  
  xPointCentral = longueurRectangle / 2;
  yPointCentral = hauteurRectangle / 2;
  
  x = math.sin(angle) * deplacement + xPointCentral;
  y = math.cos(angle) * deplacement + yPointCentral;
  
  print("Question 2:");
  print("(" + x.toStringAsFixed(2) + ", " + y.toStringAsFixed(2) + ")");
  print("");
  
}

void Age(DateTime dateNaissance){
  
  DateTime maintenant;
  Duration duree;
  int annee, mois, jour;

  maintenant = new DateTime.now();
  maintenant = maintenant.subtract(new Duration(hours:maintenant.hour, minutes:maintenant.minute,seconds:maintenant.second, milliseconds:maintenant.millisecond));
  
  duree = maintenant.difference(dateNaissance);
  
  annee = duree.inDays ~/ 365;
  mois = maintenant.month - dateNaissance.month;
  jour = maintenant.day - dateNaissance.day;

  print("Question 3:");
  print(annee.toString() + " années " + mois.toString() + " mois " + jour.toString() + " jour");
  print("");
  
}

void Interet(double somme, int annee, double tauxInteret){
  
  int compteur;
  
  print("Question 4:");
  
  for (compteur = 1; compteur <= annee; compteur++){
    
    somme = somme * (1+tauxInteret);
    print("Somme après " + compteur.toString() + " année(s): " + somme.toStringAsFixed(2));
    
  }
  
  print("");
  
}

void TableDe8(int nombreTermes){
  
  int compteur;
  
  print("Question 5:");
  
  for (compteur = 1; compteur <= nombreTermes; compteur++){
      
    print("8 x " + compteur.toString() + " = " + (8 * compteur).toString());
    
  }
  
}