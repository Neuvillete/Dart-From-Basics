import 'dart:io';

void main() {
  print("Enter the number of elements in the list:");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];
  print("Enter the elements:");
  for (int i = 0; i < n; i++) {
    int element = int.parse(stdin.readLineSync()!);
    numbers.add(element);
  }

  print("Enter the element to find:");
  int target = int.parse(stdin.readLineSync()!);

  int index = -1;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == target) {
      index = i;
      break;
    }
  }

  if (index != -1) {
    print("Element found at index: $index");
  } 
  else {
    print("Element not found in the list.");
  }
}
