void main() {
  int a = 20;
  Set<int> ol = {};
  ol.add(multi(simpleNumber(a)));
  for (int i = a; i >= 1; i--) {
    ol.add(i);
  }
  List<int> l = (ol.difference(simpleNumber(a))).toList();
  print(resultNOK(l));
}
// NOK
int resultNOK(List<int> l) {
  int pr = 0;
  int lcm = 0;
  for (int j = 1; j <= l.length - 1; j++) {
    if (l[j - 1] > l[j]) {
      pr = l[j - 1];
    } else {
      pr = l[j];
    }
    while (true) {
      if (pr % l[j - 1] == 0 && pr % l[j] == 0) {
        lcm = pr;
        l[j] = lcm;
        break;
      }
      pr++;
    }
  }
  return lcm;
}
// find simple number
Set<int> simpleNumber(int a) {
  Set<int> l = {};
  for (int i = 2; i < a; i++) {
    int k = 0;
    for (int j = 2; j <= i; j++) {
      if (i % j == 0) {
        k = k + 1;
      }
    }
    if (k < 2) {
      l.add(i);
    }
  }
  return l;
}
// multiplication simple number
int multi(Set<int> sl) {
  int a = 1;
  for (int i = 0; i <= sl.length - 1; i++) {
    a = a * sl.elementAt(i);
  }
  return a;
}
