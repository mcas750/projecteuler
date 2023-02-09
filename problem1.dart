void main() {
  List<int> a = [3, 5];
  int n = 1000;
  int s = 0;
  for (int i in a) {
    if (n % i != 0) {
      int s1 = checkS1(n, i);
      s = s + s1;
    } else {
      int s2 = checkS2(n, i);
      s = s + s2;
    }
  }
  if (a.length > 1) {
    int q = 1;
    a.forEach((e) => q *= e);
    if (n % q != 0) {
      int s1 = checkS1(n, q);
      s = s - s1;
    } else {
      int s2 = checkS2(n, q);
      s = s - s2;
    }
  }
  print(s);
}

int checkS1(int n, int i) {
  double s1 = ((i + (n ~/ i) * i) / 2 * (n ~/ i));
  return s1.toInt();
}

int checkS2(int n, int q) {
  int n1 = n - 1;
  double s2 = ((q + (n1 ~/ q) * q) / 2 * (n1 ~/ q));
  return s2.toInt();
}
