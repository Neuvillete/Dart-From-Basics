import 'dart:io';

void main() {
  print("Enter the first number: ");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter the second number: ");
  int b = int.parse(stdin.readLineSync()!);

  if (a < b) {
    int temp = a;
    a = b;
    b = temp;
  }

  while (b != 0) {
    int remainder = a % b;
    a = b;
    b = remainder;
  }

  print("The GCD is: $a");
}
