import 'todo.dart';

class TodoManager extends Todo {
  void add() {
    UserInputForItemDetails();
    item = CreatingTodoItem();
    todoList.add(item);
    print("New Item Added Successfully!");
  }

  void show() {
    if (todoList.isEmpty) {
      print("No items in the list");
    } else {
      print("Todo List:");
      print(todoList);
      for (int i = 0; i < todoList.length; i++) {
        print(
            "## Task ${i + 1} ==>\n id : ${todoList[i]['id']}\n Title : ${todoList[i]['title']} \n Description : ${todoList[i]['description']}");
      }
    }
  }

  void remove() {
    print("Which item to remove?");
    print(todoList);
    print("Enter item id:");
    int ItemId = UserInputForItemId();
    if (ItemId >= 0) {
      var ItemRemoved = FindItem(ItemId);
      if (ItemRemoved != -1) {
        todoList.removeAt(FindItemIndex(ItemId));
        print('$ItemRemoved removed from the list successfully!');
        print('List of uncompleted tasks:');
        show();
      } else {
        print("Item does not exist in the list");
      }
    } else {
      print("Invalid ItemId");
    }
  }

  void update() {
    print("Which item to update?");
    print(todoList);
    print("Enter item id:");
    int ItemId = UserInputForItemId();
    if (ItemId >= 0) {
      var ItemUpdated = FindItem(ItemId);
      if (ItemUpdated != -1) {
        print("Updating item $ItemUpdated");
        UserInputForItemDetails();
        var i = FindItemIndex(ItemId);
        todoList[i] = {
          'id': FindItem(ItemId)['id'],
          'title': title,
          'description': description
        };
        print('Updated List:');
        show();
      } else {
        print("Item does not exist in the list");
      }
    } else {
      print("Invalid Item Id");
    }
  }
}
