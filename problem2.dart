void main(){
  int x = 1;
  int y = 1;
  int s = 0;
  while (y < 4000000) {
    y = x + y;
    x = y - x;
    if (y % 2 == 0){
      s = s + y;
    }
  }
  print(s);
}
