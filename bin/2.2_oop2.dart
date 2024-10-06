// ignore_for_file: unnecessary_type_check

class Item {
  String name;
  double weight;

  Item({required this.name, required this.weight});

  void printItem() {
    print("Item name: $name, weight: $weight kg");
  }

  void printWeight() {
    print("$name weight: $weight kg");
  }
}

class Weapon extends Item {
  int damage;

  Weapon({required super.weight, required this.damage, required super.name});

  void attack(int enemyHealth) {
    int newEnemyHealth = enemyHealth - damage;
    print(
        "Weapon is attacking with damage $damage. Enemy health decreased from $enemyHealth to $newEnemyHealth.");
  }

  @override
  void printWeight() {
    print("Weapon weight: $weight kg");
  }
}

void main() {
  Item bread = Item(name: "Bread", weight: 0.5);

  print(bread.name);
  bread.printItem();
  bread.printWeight();

  Weapon sword = Weapon(name: "Sword", weight: 2, damage: 10);

  // We DID NOT implement printItem() in Weapon class, it is inherited from Item class
  sword.printItem();

  // We overrided printWeight() in Weapon class, it is not inherited from Item class
  sword.printWeight();

  // We created a new function attack() in Weapon class that Item class does not have
  sword.attack(100);

  print(sword is Item); // true
  print(sword is Weapon); // true
  
  print(bread is Item); // true
  print(bread is Weapon); // false
}
