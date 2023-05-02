abstract class Animal {
  String name;
  String type;
  String color;
  Animal(this.name, this.type, this.color);
}

abstract class AnimalDetails {
  String getDetails();
}

class Dog extends Animal implements AnimalDetails {
  Dog(String name, String type, String color) : super(name, type, color);

  @override
  String getDetails() {
    return 'Name: $name, Breed: $type, Color: $color, Sound: Bark';
  }
}

class Cat extends Animal implements AnimalDetails {
  Cat(String name, String type, String color) : super(name, type, color);

  @override
  String getDetails() {
    return 'Name: $name, Type: $type, Color: $color, Sound: Meow';
  }
}

class Bird extends Animal implements AnimalDetails {
  Bird(String name, String type, String color) : super(name, type, color);

  @override
  String getDetails() {
    return 'Name: $name, Type: $type, Color: $color, Sound: Chirp';
  }
}

class AnimalDetailsPrinter {
  // AnimalDetails animalDetails;

  AnimalDetailsPrinter();

  void printDetails(AnimalDetails animalDetails) {
    print(animalDetails.getDetails());
  }
}

void main(List<String> args) {
  Dog dog = Dog('Jack', 'Doberman', 'black');
  AnimalDetails cat = Cat('Lisa', 'Abyssinian', 'brown');
  AnimalDetails bird = Bird('Arci', 'Parrot', 'blue-yellow');
  AnimalDetailsPrinter printer = AnimalDetailsPrinter();
  printer.printDetails(dog);
  printer.printDetails(cat);
  printer.printDetails(bird);
}
