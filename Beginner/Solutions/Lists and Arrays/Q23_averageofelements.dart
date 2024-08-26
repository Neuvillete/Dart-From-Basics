import 'dart:io';

void main() {
  print("Enter the number of elements in the list: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  print("Enter the elements:");

  for (int i = 0; i < n; i++) {
    int element = int.parse(stdin.readLineSync()!);
    numbers.add(element);
  }

  int sum = 0;

  for (int number in numbers) {
    sum += number;
  }

  double average = sum / n;

  print("The average of the list is: $average");
}
