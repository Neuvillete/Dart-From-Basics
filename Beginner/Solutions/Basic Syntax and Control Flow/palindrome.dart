import 'dart:io';

void main() {
  print('Enter a string:');
  String input = stdin.readLineSync()!;

  if (input == input.split('').reversed.join('')) {
    print('The string is a palindrome.');
  } 
  else {
    print('The string is not a palindrome.');
  }
}
