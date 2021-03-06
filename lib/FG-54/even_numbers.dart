// Given an array of numbers, return a new array of length number containing the last
//even numbers from the original array (in the same order).
//The original array will be not empty and will contain at least "number" even numbers.

// Add more checks
Iterable<int> evenNumbers(List<int> arr, int n) {
  if (arr.isEmpty) {
    return throw Exception('array cant be empty');
  }
  return arr
      .where((element) => element % 2 == 0)
      .toList()
      .reversed
      .take(n)
      .toList()
      .reversed;
}

void main() {
  print(evenNumbers([1, 2, 3, 4, 5, 6, 7, 8, 9], 3)); // => [4, 6, 8]

  print(evenNumbers(
      [-22, 5, 3, 11, 26, -6, -7, -8, -9, -8, 26], 2)); //=> [-8, 26]

  print(evenNumbers([6, -25, 3, 7, 5, 5, 7, -3, 23], 1)); // => [6]
  print(evenNumbers([], 0));
}
