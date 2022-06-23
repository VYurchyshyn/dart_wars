// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).

// Note: If the number is a multiple of both 3 and 5, only count it once.

int solution(int n) {
  int result = 0;
  for (int i = 0; i < n; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      result += i;
    }
  }
  return result;
}

void main() {
  print(solution(10));
  print(solution(-1));
  print(solution(15));
  print(solution(200));
  print(solution(0));
  print(solution(1000));
}
