// Given an array of ones and zeroes, convert the equivalent binary value to an integer.

// Eg: [0, 0, 0, 1] is treated as 0001 which is the binary representation of 1.

// Examples:

// Testing: [0, 0, 0, 1] ==> 1
// Testing: [0, 0, 1, 0] ==> 2
// Testing: [0, 1, 0, 1] ==> 5
// Testing: [1, 0, 0, 1] ==> 9
// Testing: [0, 0, 1, 0] ==> 2
// Testing: [0, 1, 1, 0] ==> 6
// Testing: [1, 1, 1, 1] ==> 15
// Testing: [1, 0, 1, 1] ==> 11
// However, the arrays can have varying lengths, not just limited to 4.

import 'dart:math';

int binaryArrayToNumber(List<int> arr) {
  if (arr.isNotEmpty && arr.every((element) => element < 2 && element >= 0)) {
    var num = 0;

    for (var i = 0; i < arr.length; i++) {
      var index = arr.length - 1 - i;
      var result = pow(2, index).toInt();
      num += result * arr[i];
    }
    return num;
  } else {
    throw Exception('Put 0 or 1 only');
  }
}

void main() {
  print(binaryArrayToNumber([1, 0, 1, 1]));
  print(binaryArrayToNumber([1, 0, 1, 1, 1, 0, 1, 0]));
  print(binaryArrayToNumber([0, 1, 1, 1]));
  print(binaryArrayToNumber([1, 0, 1, 1, 1, 0, 1, 2]));
  print(binaryArrayToNumber([]));
  print(binaryArrayToNumber([-1, 0]));
}
