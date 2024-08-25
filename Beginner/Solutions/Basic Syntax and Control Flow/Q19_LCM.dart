import 'dart:io';

void main() {
  print("Enter the first number: ");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter the second number: ");
  int b = int.parse(stdin.readLineSync()!);

  if (a <= 0 || b <= 0) {
    print("Both numbers must be positive.");
    return;
  }

  int originalA = a;
  int originalB = b;

  while (b != 0) {
    int remainder = a % b;
    a = b;
    b = remainder;
  }

  int lcm = (originalA * originalB) ~/ a;

  print("The LCM of $originalA and $originalB is: $lcm");
}
