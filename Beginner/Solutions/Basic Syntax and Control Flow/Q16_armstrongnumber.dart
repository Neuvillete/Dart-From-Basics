import 'dart:io';

void main() {
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  int originalNumber = number;
  int sum = 0;

  int digits = 0;
  int temp = number;
  while (temp > 0) {
    temp ~/= 10;
    digits++;
  }

  while (number > 0) {
    int digit = number % 10;
    int power = 1;

    for (int i = 0; i < digits; i++) {
      power *= digit;
    }

    sum += power;
    number ~/= 10;
  }

  if (sum == originalNumber) {
    print("$originalNumber is an Armstrong number.");
  } 
  else {
    print("$originalNumber is not an Armstrong number.");
  }
}
