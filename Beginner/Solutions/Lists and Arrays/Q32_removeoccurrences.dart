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

  print("Enter the element to remove:");
  int elementToRemove = int.parse(stdin.readLineSync()!);

  List<int> result = [];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] != elementToRemove) {
      result.add(numbers[i]);
    }
  }

  print("List after removing all occurrences of $elementToRemove:");
  for (int element in result) {
    print(element);
  }
}
