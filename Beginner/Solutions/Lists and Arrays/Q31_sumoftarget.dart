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

  print("Enter the target sum value:");
  int target = int.parse(stdin.readLineSync()!);

  print("Pairs of elements that sum up to $target:");
  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] + numbers[j] == target) {
        print("(${numbers[i]}, ${numbers[j]})");
      }
    }
  }
}
