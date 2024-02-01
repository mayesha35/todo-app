import 'dart:io';

import 'todo-manager.dart';

TodoManager todo = TodoManager();

class Main {
  void separator() {
    print(
        "-----------------------------------------------------------------------------");
  }

  choiceOfAction() {
    while (true) {
      print("Enter your choice of action :");
      var choice = stdin.readLineSync();
      separator();
      switch (choice) {
        case "1":
          separator();
          print("Showing the list of tasks");
          todo.show();
          separator();
          break;
        case "2":
          separator();
          print("Add new task to the todo list:");
          todo.add();
          separator();
          break;
        case "3":
          separator();
          print("Remove completed task from the todo list");
          todo.remove();
          separator();
          break;
        case "4":
          separator();
          print("Update any task");
          todo.update();
          separator();
          break;
        default:
          separator();
          print("Invalid choice");
          separator();
          break;
      }
    }
  }
}

void main() {
  Main mainObj = Main();
  mainObj.separator();
  print(
      " 1. Show all of your todo items\n 2. Add new task to the todo list\n 3. Remove completed task from the todo list \n 4. Update any task ");
  mainObj.separator();
  mainObj.choiceOfAction();
}
