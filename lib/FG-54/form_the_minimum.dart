// Task
// Given a list of digits, return the smallest number that could be formed from these digits,
// using the digits only once (ignore duplicates).

// Notes:
// Only positive integers will be passed to the function (> 0 ), no negatives or zeros.
// Input >> Output Examples
// minValue ({1, 3, 1})  ==> return (13)
// Explanation:
// (13) is the minimum number could be formed from {1, 3, 1} , Without duplications

// minValue({5, 7, 5, 9, 7})  ==> return (579)
// Explanation:
// (579) is the minimum number could be formed from {5, 7, 5, 9, 7} , Without duplications

// minValue({1, 9, 3, 1, 7, 4, 6, 6, 7}) return  ==> (134679)
// Explanation:
// (134679) is the minimum number could be formed from {1, 9, 3, 1, 7, 4, 6, 6, 7} ,
// Without duplications

// Dont know need the check element > 9

int minValue(List<int> arr) {
  if (arr.isEmpty || arr.any((element) => element < 0)) {
    return throw Exception('put positive integer');
  }
  List<int> result = arr.toSet().toList();
  result.sort();
  return int.parse(result.join(''));
}

void main() {
  print(minValue([4, 7, 5, 7]));
  print(minValue([0, 0, 0, 0]));
  print(minValue([1, 1, 1, 1, 1, 1, 1, 1, 1]));
  print(minValue([5, 3, 2, 1, 0, 9, 8, 15, 16]));
  print(minValue([]));
  print(minValue([4, 2, -3]));
}
