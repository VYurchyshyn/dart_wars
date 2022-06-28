// You are going to be given a word.
//Your job is to return the middle character of the word.
//If the word's length is odd, return the middle character.
//If the word's length is even, return the middle 2 characters.

// #Examples:

// Kata.getMiddle("test") should return "es"

// Kata.getMiddle("testing") should return "t"

// Kata.getMiddle("middle") should return "dd"

// Kata.getMiddle("A") should return "A"

// #Input
// A word (string) of length 0 < str < 1000 (In javascript you may get slightly more than 1000 in some test cases due to an error in the test cases).
// You do not need to test for this. This is only here to tell you that you do not need to worry about your solution timing out.

// #Output
// The middle character(s) of the word represented as a string.

//Solution 1
String getMiddle(String s) {
  if (s.length % 2 == 0) {
    return ((s.length ~/ 2 < 0) ? '' : s[s.length ~/ 2 - 1]) + s[s.length ~/ 2];
  } else {
    return s[s.length ~/ 2];
  }
}

//Solution 2
String getMiddlee(String s) {
  if (s.length % 2 == 0) {
    var firstIndex = (s.length ~/ 2) - 1;
    var lastIndex = (s.length ~/ 2) + 1;
    return s.substring(firstIndex, lastIndex);
  } else if (s.length == 1) {
    return s;
  } else {
    var firstIndex = s.length ~/ 2;
    var lastIndex = (s.length ~/ 2) + 1;
    return s.substring(firstIndex, lastIndex);
  }
}

void main() {
  print(getMiddle('dart'));
  print(getMiddle('flutter'));
  print(getMiddle('B'));
  print(getMiddle('middle'));
  // print(getMiddle('')); // add if
}
