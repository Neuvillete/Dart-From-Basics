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

  List<int> uniqueNumbers = [];

  for (int i = 0; i < numbers.length; i++) {
    int j;
    for (j = 0; j < uniqueNumbers.length; j++) {
      if (numbers[i] == uniqueNumbers[j]) {
        break; 
      }
    }
    
    if (j == uniqueNumbers.length) {
      uniqueNumbers.add(numbers[i]);
    }
  }

  print("List after removing duplicates:");
  for (int number in uniqueNumbers) {
    print(number);
  }
}
