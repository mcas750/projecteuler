import 'dart:math';

void main() {
  var stopWatch = Stopwatch();
  stopWatch.start();
  int s = 1;
  double? result;

  bool stop = false;
  while (stop == false) {
    int r = 0;
    for (int i = 1; i <= sqrt(tri(s)); i++) {
      if (tri(s) % i == 0) {
        r++;
      }
    }
    if (r * 2 >= 500) {
      stop = true;
      result = tri(s);
    }
    s++;
    
  }
  print('result: $result');
  stopWatch.stop();
  var milli = stopWatch.elapsed.inMilliseconds;
  print(milli / 1000);
}

double tri(int a) {
  double res = a * (a + 1) / 2;
  return res;
}
