import 'package:dart_wars/dart_wars.dart' as dart_wars;

void main(List<String> arguments) {
  print('Hello Dart wars');
}

// Given a number (n), return the number of positive odd numbers below (n)

int oddCount(n) {
  List x = [];
  for (int i = 0; i < n; i++) {
    if (i % 2 != 0) {
      x.add(i);
    }
  }
  return x.length;
}

// Nathan loves cycling.

// Because Nathan knows it is important to stay hydrated,
// he drinks 0.5 litres of water per hour of cycling.

// You get given the time in hours and you need to return the number of litres Nathan will drink,
//rounded to the smallest value.

int litres(num time) {
  return (time / 2).floor();
}

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

// You are given two interior angles (in degrees) of a triangle.

// Write a function to return the 3rd.

// Note: only positive integers will be tested.

// https://en.wikipedia.org/wiki/Triangle

int otherAngle(int a, int b) {
  return 180 - (a + b);
}

// Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as an integer number.

// For example: month 2 (February), is part of the first quarter; month 6 (June),
//is part of the second quarter; and month 11 (November), is part of the fourth quarter.

int quarter(int month) {
  if ([1, 2, 3].contains(month)) return 1;
  if ([4, 5, 6].contains(month)) return 2;
  if ([7, 8, 9].contains(month)) return 3;
  return 4;
}
