void main() {
  int a = 999;
  int b = 999;
  int temp = 0;
  for (int i = a; i >= 100; i -= 2) {
    for (int j = b; j >= 100; j -= 2) {
      int m = i * j;
      String s = '';
      for (int q = m.toString().length - 1; q >= 0; q--) {
        s = s + m.toString()[q];
      }
      if (int.parse(s) == m && m > temp) {
        temp = m;
      }
    }
  }
  print(temp);
}
