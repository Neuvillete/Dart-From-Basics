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

  print("Enter the number of steps to rotate left:");
  int steps = int.parse(stdin.readLineSync()!);

  steps = steps % numbers.length;

  for (int i = 0; i < steps; i++) {
    int firstElement = numbers[0];
    for (int j = 0; j < numbers.length - 1; j++) {
      numbers[j] = numbers[j + 1];
    }
    numbers[numbers.length - 1] = firstElement;
  }

  print("List after rotating left by $steps steps:");
  for (int element in numbers) {
    print(element);
  }
}
