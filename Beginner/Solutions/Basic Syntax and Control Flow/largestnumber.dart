import 'dart:io';

void main() {
  print('Enter the first number:');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  int num2 = int.parse(stdin.readLineSync()!);

  print('Enter the third number:');
  int num3 = int.parse(stdin.readLineSync()!);

  int largest;

  if (num1 >= num2 && num1 >= num3) {
    largest = num1;
  } 
  else if (num2 >= num1 && num2 >= num3) {
    largest = num2;
  } 
  else {
    largest = num3;
  }

  print('The largest number is: $largest');
}
