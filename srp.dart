class Task {
  String title;
  String description;
  bool isCompleted;

  Task(this.title, this.description, {this.isCompleted = false});
}

class TaskManager {
  List<Task> tasks = [];

  void printTasks() {
    print('Lista sarcinilor:');
    for (var task in tasks) {
      var status = task.isCompleted ? 'finalizat' : 'în progres';
      print('- ${task.title}: ${task.description} ($status)');
    }
  }
}

class AddTask {
  TaskManager manager;

  AddTask(this.manager);

  void addTask(String title, String description) {
    manager.tasks.add(Task(title, description));
  }
}

class CompleterTask {
  void completeTask(Task task) {
    task.isCompleted = true;
  }
}

void main() {
  var taskManager = TaskManager();
  var addTask = AddTask(taskManager);
  var completerTask = CompleterTask();

  addTask.addTask('Curățare mașină', 'Să curăț mașina în weekend.');
  addTask.addTask(
      'Cumpărături', 'Să cumpăr alimente pentru săptămâna viitoare.');

  taskManager.printTasks();

  var taskToComplete = taskManager.tasks[0];
  completerTask.completeTask(taskToComplete);

  taskManager.printTasks();
}
