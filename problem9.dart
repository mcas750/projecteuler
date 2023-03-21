import 'dart:math';

void main() {
  int q = 5;
  int? w;
  for (int i = 2; i <= q; i++) {
    for (int j = 1; j <= i; j++) {
      num a = pow(i, 2) - pow(j, 2);
      int b = 2 * i * j;
      num c = pow(i, 2) + pow(j, 2);
      num s = a + b + c;
      //print('s = $s');
      //print('---');
      if (s == 1000) {
        w = 1;
        print('$a, $b, $c');
        num x = pow(a, 2) + pow(b, 2);
        num y = pow(c, 2);
        print('x = $x y = $y');
        num result = a * b * c;
        print(result);
        break;
      } else {
        q++;
      }
    }
    if (w == 1) {
      break;
    }
  }
}
