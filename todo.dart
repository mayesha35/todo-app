import 'dart:io';

class Todo {
  var todoList = [];
  var item = Map<String, dynamic>();
  int? id = 0;
  String? title;
  String? description;

  void UserInputForItemDetails() {
    print("Todo Title:");
    title = stdin.readLineSync();
    if (title == "") {
      print("Please enter a title.");
    } else {
      title = title;
    }
    print("Todo Description:");
    description = stdin.readLineSync();
    if (description == "") {
      print("Please enter a description.");
    } else {
      description = description;
    }
  }

  UserInputForItemId() {
    int? ItemId;
    String ItemIdString = stdin.readLineSync()!;
    if (isNumeric(ItemIdString)) {
      return ItemId = int.parse(ItemIdString);
    } else {
      return ItemId = -1;
    }
  }

  CreatingTodoItem() {
    if (todoList.isEmpty) {
      id = 0;
    } else {
      id = todoList.last['id'] + 1;
    }
    return item = {'id': id, 'title': title, 'description': description};
  }

  FindItem(int ID) {
    var SearchItem;
    return SearchItem =
        todoList.firstWhere((element) => element['id'] == ID, orElse: () => -1);
  }

  int FindItemIndex(int ID) {
    int? index;
    index = todoList.indexOf(FindItem(ID));
    return index;
  }

  bool isNumeric(String s) {
    // num.tryParse returns null if the input is not numeric
    return (num.tryParse(s) != null);
  }
}
