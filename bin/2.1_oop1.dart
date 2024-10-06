class Cat {
  String name;
  String color;
  int age;

  Cat({required this.name, required this.color, this.age = 0});
}

void main() {
  Cat myCat = Cat(name: "Garfield", color: "Orange", age: 7);

  print(myCat.name);
  print(myCat.color);
  print(myCat.age);

  // Garfield gets older
  myCat.age = myCat.age + 1; 

  print(myCat.age);

  //
  print("");
  print(myCat);
  print(myCat.runtimeType);
  print(myCat is Cat);
  print(myCat is Object);
}
