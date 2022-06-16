// It's the academic year's end, fateful moment of your school report.
//The averages must be calculated. All the students come to you and entreat you to calculate their average for them.
//Easy ! You just need to write a script.

// Return the average of the given array rounded down to its nearest integer.

// The array will never be empty.

int getAverage(List<int> arr) {
  if (arr.isNotEmpty) {
    return (arr.reduce((value, element) => value + element) / arr.length)
        .floor();
  } else {
    return 0;
  }
}

void main() {
  print(getAverage([1, 2, 3, 4, 5, 6, 7, 8, 10]));
  print(getAverage([]));
}
