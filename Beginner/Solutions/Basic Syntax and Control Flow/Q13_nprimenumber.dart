import 'dart:io';

void main() {
  print("Enter the value of n: ");
  int n = int.parse(stdin.readLineSync()!);

  int count = 0;
  int number = 2;

  while (count < n) {
    int isPrime = 1;

    if (number <= 1) {
      isPrime = 0;
    } 
    else if (number > 3) {
      if (number % 2 == 0 || number % 3 == 0) {
        isPrime = 0;
      } 
      else {
        for (int i = 5; i * i <= number; i += 6) {
          if (number % i == 0 || number % (i + 2) == 0) {
            isPrime = 0;
            break;
          }
        }
      }
    }

    if (isPrime == 1) {
      print(number);
      count++;
    }

    number++;
  }
}
