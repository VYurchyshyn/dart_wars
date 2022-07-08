// Write a function that when given a number >= 0, returns an Array of ascending length subarrays.

// pyramid(0) => [ ]
// pyramid(1) => [ [1] ]
// pyramid(2) => [ [1], [1, 1] ]
// pyramid(3) => [ [1], [1, 1], [1, 1, 1] ]
// Note: the subarrays should be filled with 1s

List<List<int>> pyramid(int n) {
  List<List<int>> multiplicity = [];
  if (n == 0 || n < 0) {
    return [];
  }
  for (var i = 1; i < n + 1; i++) {
    multiplicity.add(List<int>.filled(i, 1));
  }
  return multiplicity;
}

void main() {
  print(pyramid(3));
  print(pyramid(0));
  print(pyramid(-5));
  print(pyramid(18));
}
