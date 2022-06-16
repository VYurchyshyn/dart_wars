// Take 2 strings s1 and s2 including only letters from ato z.
//Return a new sorted string, the longest possible, containing distinct letters -
//each taken only once - coming from s1 or s2.

// Example
// a = "xyaabbbccccdefww"
// b = "xxxxyyyyabklmopq"
// longest(a, b) -> "abcdefklmopqwxy"

// a = "abcdefghijklmnopqrstuvwxyz"
// longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"

String longest(String a, String b) {
  List s1s2 = (a + b).split('').toSet().toList()..sort();
  return s1s2.join();
}

void main() {
  print(longest('aawdawdawdd', 'awdawdasduwdga'));
}
