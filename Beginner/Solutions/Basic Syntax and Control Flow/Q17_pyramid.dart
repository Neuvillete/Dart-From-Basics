import 'dart:io';

void main() {
  print("Enter the number of rows for the pyramid: ");
  int rows = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= rows; i++) {
    for (int j = i; j < rows; j++) {
      print(" ", terminator: ""); 
    }

    for (int k = 1; k <= (2 * i - 1); k++) {
      print("*", terminator: ""); 
    }

    print(); 
  }
}
