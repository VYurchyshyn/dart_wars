// Definition
// Extra perfect number is the number that first and last bits are set bits.

// Task
// Given a positive integer N , Return the extra perfect numbers in range from 1 to N .

List<int> extraPerfect(n) {
  if (n > 0) {
    List<int> list = [];
    for (int i = 1; i <= n; i++) {
      if (i % 2 != 0) {
        list.add(i);
      }
    }
    return list;
  } else {
    return [];
  }
}

void main() {
  print(extraPerfect(5));
  print(extraPerfect(7));
  print(extraPerfect(28));
  print(extraPerfect(0));
}
