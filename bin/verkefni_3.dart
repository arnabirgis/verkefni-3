import 'dart:io';

List<String> groceryList = [];

void addItemToList(String item) {
  groceryList.add(item);
  print("Added '$item' to the grocery list.");
}

void viewList() {
  if (groceryList.isEmpty) {
    print("The grocery list is empty.");
  } else {
    print("Grocery List:");
    for (var item in groceryList) {
      print(item);
    }
  }
}

void main() {
  while (true) {
    print("\nMenu:");
    print("1. Add an item to the list");
    print("2. View the list");
    print("3. End the program");
    stdout.write("Enter your choice (1/2/3): ");
    var choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write("Enter the item you want to add: ");
      var item = stdin.readLineSync() ?? ""; 
      addItemToList(item);
    } else if (choice == '2') {
      viewList();
    } else if (choice == '3') {
      print("Program ended. Here is your final grocery list:");
      viewList();
      break;
    } else {
      print("Invalid choice. Please select again (1/2/3).");
    }
  }
}