import 'dart:io';

void main() {
  print('Enter the value of n:');
  int n = int.parse(stdin.readLineSync()!);

  int a = 0, b = 1;

  print('The first $n Fibonacci numbers are:');

  for (int i = 0; i < n; i++) {
    stdout.write('$a '); 
    int next = a + b;
    a = b;
    b = next;
  }
}
