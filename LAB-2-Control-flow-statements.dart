void main() {

  int a = 0;
  int b = 1;
  
  print(a);
  print(b);
  
  for (int i = 0; i < 8; i++) {
    int c = a + b;
    print(c);
    a = b;
    b = c;
  }
}
