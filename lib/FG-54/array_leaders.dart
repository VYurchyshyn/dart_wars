// Definition
// An element is leader if it is greater than The Sum all the elements to its right side.

// Task
// Given an array/list [] of integers , Find all the LEADERS in the array.

// Notes
// Array/list size is at least 3 .

// Array/list's numbers Will be mixture of positives , negatives and zeros

// Repetition of numbers in the array/list could occur.

//Returned Array/list should store the leading numbers in the same order in the original array/list.

List<int> arrayLeaders(List<int> numbers) {
  if (numbers.isEmpty || numbers.length < 3) {
    return throw Exception('add at least 3 int numbers');
  }
  List<int> leaders = [];
  num sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum = 0;
    for (int j = i + 1; j < numbers.length; j++) {
      sum += numbers[j];
    }
    if (numbers[i] > sum) leaders.add(numbers[i]);
  }
  return leaders;
}

void main() {
  print(arrayLeaders([16, 17, 4, 3, 5, 2]));
  print(arrayLeaders([16, 17, 4]));
  print(arrayLeaders([0, -1, -29, 3, 2]));
  print(arrayLeaders([16, 17]));
  print(arrayLeaders([]));
}
