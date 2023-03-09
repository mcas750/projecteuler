import 'dart:math';

void main() {
  int result = (pow(ap(100), 2)).toInt() - app(100);
  print(result);
}

int ap(int a) {
  int ap = (((a + 1) * a) ~/ 2).toInt();
  return ap;
}

int app(int a) {
  int app = ((a * (a + 1) * (2 * a + 1)) ~/ 6).toInt();
  return app;
}
