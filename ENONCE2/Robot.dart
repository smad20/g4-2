import 'dart:math';

void main() {
  // premier robot
  Robot robot1 = new Robot("Sumayat", 100, 3, 0, 0);
  // second robot
  Robot robot2 = new Robot("Bedios", 100, 2, 0, 0);
  // troisième robot
  Robot robot3 = new Robot("Pepeno", 100, 1, 0, 0);
  // quatrième robot
  Robot robot4 = new Robot("Kouloulou", 100, 1, 0, 0);
  //
  // Presentation des robot1 & robots 2
  robot1.presentation();
  robot2.presentation();
  //
  // Creation du tableau et presentation des robots avec la boucle for
  List<Robot> robots = [robot1, robot2, robot3, robot4];
  for (var x = 0; x < robots.length; x++) {
    robots[x].presentation();
  }
  // robots sont deplacer dans toutes les directions au choix
  print(robot1.seDeplacerVers("haut"));
  print(robot2.seDeplacerVers("bas"));
  print(robot3.seDeplacerVers("gauche"));
  print(robot4.seDeplacerVers("droite"));
  // Presentation des robots dans des cases aux coordonnées differentes
  robot1.presentation();
  robot2.presentation();
  robot3.presentation();
  robot4.presentation();
  //
  robot1.seDeplacerAleatoirement(4);
}

// la class robot
class Robot {
  int x = 0;
  int y = 0;
  String nom = "";
  int vie = 0;
  int vitesse = 0;

  // Construteur robot
  Robot(String nom, int vie, int vitesse, int x, int y) {
    this.nom = nom;
    this.vie = vie;
    this.vitesse = vitesse;
    this.x = x;
    this.y = y;
  }
  // methode de presentation
  void presentation() {
    print(
        "Bonjour je m'appelle ${this.nom}. J'ai ${this.vie} points de vie et je me déplace à ${this.vitesse} cases par seconde. Je suis à la case de coordonnées (${this.x};${this.y}) ");
  }

  String seDeplacerVers(String direction) {
    switch (direction) {
      case "haut":
        {
          this.y++;
          return "haut";
        }
      case "bas":
        {
          this.y--;
          return "gauche";
        }
      case "gauche":
        {
          this.x--;
          return "gauche";
        }
      case "droite":
        {
          this.x++;
          return "bas";
        }
      default:
        {
          return "";
        }
    }
  }

  void seDeplacerAleatoirement(int nombreDeCoup) {
    int cases = 3;
    var randomGenerator = Random();
    var randInt = randomGenerator.nextInt(cases);
    for (var i = 0; i < nombreDeCoup; i++) {
      randInt;
      print("Une fois vers le ${seDeplacerVers(" ")} vers le $randInt");
    }
  }
}