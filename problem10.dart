import 'dart:math';

void main(){
  int a = 2000000;
  int s = 0;
  
  for (int i = 0; i <= a; i++){
    if (simpleNumber(i) == true){
      s = s + i;
    }
  }
  print(s);
}

bool simpleNumber(int a) {
  if (a < 2) {
    return false;
  }
  if ((a != 2 && a % 2 == 0) || (a != 3 && a % 3 == 0)) {
    return false;
  }
  for (int i = 2; i <= sqrt(a); i++) {
    if (a % i == 0) {
      return false;
    }
  }
  return true;
}
