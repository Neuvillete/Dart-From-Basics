import 'dart:io';

void main() {
  print("Enter the number of elements in the list: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  print("Enter the elements:");

  for (int i = 0; i < n; i++) {
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  int largest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }

  print("The largest element in the list is: $largest");
}
