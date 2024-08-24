void main() {
  print('Prime numbers between 1 and 50:');

  for (int i = 2; i <= 50; i++) {
    int factors = 0;

    for (int j = 1; j <= i; j++) {
      if (i % j == 0) {
        factors++;
      }
    }

    if (factors == 2) {
      print(i);
    }
  }
}
