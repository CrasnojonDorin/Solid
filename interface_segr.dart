abstract class IWorker {
  void work();
}

abstract class IEater {
  void eat();
}

abstract class ISleeper {
  void sleep();
}

class Human implements IWorker, IEater, ISleeper {
  String name;
  int age;
  String occupation;

  Human(this.name, this.age, this.occupation);

  void work() {
    print('$name is working as a $occupation');
  }

  void eat() {
    print('$name is eating');
  }

  void sleep() {
    print('$name is sleeping');
  }
}

class Robot implements IWorker {
  String name;
  String function;

  Robot(this.name, this.function);

  void work() {
    print('$name is working as a $function');
  }
}

class Animal implements IEater, ISleeper {
  String name;
  String species;

  Animal(this.name, this.species);

  void eat() {
    print('$name the $species is eating');
  }

  void sleep() {
    print('$name the $species is sleeping');
  }
}

void main() {
  var human = Human('Alice', 30, 'Software Engineer');
  var robot = Robot('Robo', 'Factory Worker');
  var animal = Animal('Fluffy', 'Cat');

  List<IWorker> workers = [human, robot];
  List<IEater> eaters = [human, animal];
  List<ISleeper> sleepers = [human, animal];

  print('\n -List of workers-');
  for (var worker in workers) {
    worker.work();
  }
  print('\n -List of eaters-');
  for (var eater in eaters) {
    eater.eat();
  }
  print('\n -List of sleeper-');
  for (var sleeper in sleepers) {
    sleeper.sleep();
  }
}
