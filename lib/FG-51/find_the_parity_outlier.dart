// You are given an array (which will have a length of at least 3, but could be very large)
//containing integers. The array is either entirely comprised of odd integers or entirely
//comprised of even integers except for a single integer N. Write a method that takes the array
//as an argument and returns this "outlier" N.

// Examples
// [2, 4, 0, 100, 4, 11, 2602, 36]
// Should return: 11 (the only odd number)

// [160, 3, 1719, 19, 11, 13, -21]
// Should return: 160 (the only even number)

int find(List<int> integers) {
  if (integers.length <= 2) {
    return 0;
  }
  if (integers[0] % 2 == integers[1] % 2) {
    return integers.firstWhere((element) => element % 2 != integers[0] % 2);
  } else {
    if (integers[0] % 2 == integers[2] % 2) {
      return integers[1];
    } else {
      return integers[0];
    }
  }
  //var conditionValue =
  // var even = [];
  // var odd = [];

  // for (var i = 0; i < integers.length; i += 1) {
  //   if (integers[i] % 2 == 0) {
  //     even.add(integers[i]);
  //   } else {
  //     odd.add(integers[i]);
  //   }
  // }

  // if (even.length > odd.length) {
  //   return odd[0];
  // } else if (even.length == odd.length) {
  //   return 0;
  // } else if (even.isEmpty || odd.isEmpty) {
  //   return 0;
  // } else {
  //   return even[0];
  // }
}

void main() {
  print(find([2, 4, 0, 100, 4, 11, 2602, 36]));
  print(find([11, 12]));
  print(find([11]));
  print(find([]));
  print(find([-12, 1, 7, 17, 19, 211, 7]));
  print(find([-1 * 10000000003, -18, 6, -8, -10, 6, 12, -24, 36]));
}
