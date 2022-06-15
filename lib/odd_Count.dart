// Given a number (n), return the number of positive odd numbers below (n)

int oddCount(n) {
  List x = [];
  for (int i = 0; i < n; i++) {
    if (i % 2 != 0) {
      x.add(i);
    }
  }
  return x.length;
}
