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

  int i = 0;
  while (i < numbers.length - 1 && numbers[i] <= numbers[i + 1]) {
    i++;
  }

  if (i == numbers.length - 1) {
    print("The list is sorted in ascending order.");
    return;
  }

  i = 0;
  while (i < numbers.length - 1 && numbers[i] >= numbers[i + 1]) {
    i++;
  }

  if (i == numbers.length - 1) {
    print("The list is sorted in descending order.");
  } 
  else {
    print("The list is not sorted.");
  }
}
