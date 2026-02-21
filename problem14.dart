void main() {
  Set<num> chisla = {};
  
  int? ii;
  int nn = 0;
  for (int i = 1; i <= 1000000; i++) {
    int n = 0;
    num t = i;
    if (chisla.contains(i)) {
      continue;
    } else {
      while (t != 1) {
        chisla.add(t);
        t = t % 2 == 0 ? t / 2 : 3 * t + 1;
        n++;
      }
    }
    if (nn < n) {
      ii = i;
      nn = n;
    }
  }
  print('ii: $ii nn: $nn');
}
