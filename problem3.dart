import 'dart:math';

void main() {
  int a = 600851475143;
  int? c;
  double b = sqrt(a);
  for (int i = 3; i <= b.toInt(); i += 2) {
    if (a % i == 0) {
      int k = 0;
      for (int j = 3; j <= sqrt(i).toInt(); j += 2) {
        if (i % j == 0) {
          k = k+1;
        }
      }
      if (k == 0){
        c = i;
      }
    }
  }
  print(c);
}
