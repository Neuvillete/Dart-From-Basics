import 'dart:io';

void main() {
  print("Enter the number of levels for Pascal's Triangle: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print("The number of levels must be a positive integer.");
    return;
  }

  for (int i = 0; i < n; i++) {
    int value = 1;  
    for (int j = 0; j <= i; j++) {
      print("$value ", terminator: "");
      
      value = value * (i - j) ~/ (j + 1);
    }
    
    print();
  }
}
