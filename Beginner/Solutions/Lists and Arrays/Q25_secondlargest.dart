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

  if (n < 2) {
    print("The list should have at least two elements.");
    return;
  }

  int largest = numbers[0];
  int secondLargest = numbers[0];

  for (int i = 1; i < n; i++) {
    if (numbers[i] > largest) {
      secondLargest = largest;
      largest = numbers[i];
    } 
    else if (numbers[i] > secondLargest && numbers[i] != largest) {
      secondLargest = numbers[i];
    }
  }

  if (largest == secondLargest) {
    print("There is no second largest element.");
  } 
  else {
    print("The second largest element is: $secondLargest");
  }
}
