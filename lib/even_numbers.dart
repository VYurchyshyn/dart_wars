// Given an array of numbers, return a new array of length number containing the last even numbers from the original array (in the same order).
//The original array will be not empty and will contain at least "number" even numbers.

List<int> evenNumbers(List<int> arr, int n) {
  return arr.reversed
      .where((element) => element % 2 == 0)
      .take(n)
      .toList()
      .reversed
      .toList();
}
