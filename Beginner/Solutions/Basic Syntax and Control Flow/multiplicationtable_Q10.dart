import 'dart:io';

void main() {
  print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);

  print('Multiplication table for $number:');

  for (int i = 1; i <= 10; i++) {
    print('$number x $i = ${number * i}');
  }
}
