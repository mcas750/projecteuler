import 'dart:math';

void main() {
  int i = 3;
  int a = 4;
  int? r;
  while (i <= 10001) {
    if (simpleNumber(a) == true) {
      r = a;
      i++;
    }
    a++;
  }
  print(r);
}

bool simpleNumber(int a) {
  if (a < 2) {
    return false;
  }
  if (a == 2 || a == 3) {
    return false;
  }
  if (a % 2 == 0 || a % 3 == 0) {
    return false;
  }
  for (int i = 2; i <= sqrt(a); i++) {
    //print(i);
    if (a % i == 0) {
      return false;
    }
  }
  return true;
}
