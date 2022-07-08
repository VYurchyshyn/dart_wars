// Given a string, capitalize the letters that occupy even indexes and odd indexes separately,
//and return as shown below. Index 0 will be considered even.

// For example, capitalize("abcdef") = ['AbCdEf', 'aBcDeF']. See test cases for more examples.

// The input will be a lowercase string with no spaces.

// Good luck!

List<String> capitalize(String x) {
  if (x.contains(RegExp(r'[a-z]'))) {
    List<String> evenLine = x.split('');
    List<String> oddLine = x.split('');
    for (var i = 0; i < x.split('').length; i++) {
      i.isEven
          ? evenLine[i] = evenLine[i].toUpperCase()
          : oddLine[i] = oddLine[i].toUpperCase();
    }
    return [evenLine.join(), oddLine.join()];
  } else {
    return ['Transform array to lower case or with lower case letters'];
  }
}

void main() {
  print(capitalize('codewars'));
  print(capitalize('codewars space'));
  print(capitalize(''));
  print(capitalize('AAAA'));
  print(capitalize('123124'));
}
