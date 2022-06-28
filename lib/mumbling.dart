// This time no story, no theory. The examples below show you how to write function accum:

// Examples:
// accum("abcd") -> "A-Bb-Ccc-Dddd"
// accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
// accum("cwAt") -> "C-Ww-Aaa-Tttt"

// The parameter of accum is a string which includes only letters from a..z and A..Z.

String accum(String str) {
  if (str.contains(RegExp('^[a-zA-Z]'))) {
    String result = str[0];
    for (var i = 1; i < str.length; i++) {
      result =
          "$result-${str[i].toUpperCase()}${((str[i]) * (i)).toLowerCase()}";
    }
    return (result);
  } else {
    return 'use only a...z and A...Z';
  }
}

void main() {
  print(accum('abcd'));
  print(accum('123123'));
  print(accum('cwAt'));
  print(accum('!@!@#!@#!@#'));
  print(accum('4546^&*()'));
  print(accum('cwdr124')); // :(
}
