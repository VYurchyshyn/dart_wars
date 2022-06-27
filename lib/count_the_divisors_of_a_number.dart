// DESCRIPTION:
// Count the number of divisors of a positive integer n.

// Random tests go up to n = 500000.

// Examples (input --> output)
// 4 --> 3 (1, 2, 4)
// 5 --> 2 (1, 5)
// 12 --> 6 (1, 2, 3, 4, 6, 12)
// 30 --> 8 (1, 2, 3, 5, 6, 10, 15, 30)

int divisors(n) {
  int numDivisors = 0;

  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      numDivisors++;
    } else if (n > 500000) {
      return 0;
    }
  }
  return numDivisors;
}

int oneMoreDivisors(n) =>
    List<int>.generate(n, (i) => i + 1).where((e) => n % e == 0).length;

void main() {
  print(divisors(11));
  print(divisors(500001));
  print(oneMoreDivisors(11));
  print(divisors(30));
}
