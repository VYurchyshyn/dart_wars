// Given a string, capitalize the letters that occupy even indexes and odd indexes separately,
//and return as shown below. Index 0 will be considered even.

// For example, capitalize("abcdef") = ['AbCdEf', 'aBcDeF']. See test cases for more examples.

// The input will be a lowercase string with no spaces.

// Good luck!

List<String> capitalize(String x) {
  if (!x.contains(RegExp(r'[a-z]'))) {
    return ['Transform array to lower case or with lower case letters'];
  }

  // List<String> evenLine = x.split('');
  // List<String> oddLine = x.split('');
  //for (var i = 0; i < x.split('').length; i++) {
  //   i.isEven
  //       ? evenLine[i] = evenLine[i].toUpperCase()
  //       : oddLine[i] = oddLine[i].toUpperCase();
  // }
  // return [evenLine.join(), oddLine.join()];
  return x.split('').fold(['', ''], (previousValue, element) {
    var evenLine = previousValue[0].length.isEven;
    previousValue[0] = evenLine
        ? previousValue[0] + element.toUpperCase()
        : previousValue[0] + element;
    previousValue[1] = !evenLine
        ? previousValue[1] + element.toUpperCase()
        : previousValue[1] + element;

    return previousValue;
  });
}

void main() {
  print(capitalize('codewars'));
  print(capitalize('codewars space'));
  print(capitalize(''));
  print(capitalize('AAAA'));
  print(capitalize('123124'));
}
