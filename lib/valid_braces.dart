// Write a function that takes a string of braces, and determines if the order of the
// braces is valid. It should return true if the string is valid, and false if it's invalid.

// This Kata is similar to the Valid Parentheses Kata, but introduces new characters:
//brackets [], and curly braces {}. Thanks to @arnedag for the idea!

// All input strings will be nonempty, and will only consist of parentheses, brackets
//and curly braces: ()[]{}.

// What is considered Valid?
// A string of braces is considered valid if all braces are matched with the correct brace.

// Examples
// "(){}[]"   =>  True
// "([{}])"   =>  True
// "(}"       =>  False
// "[(])"     =>  False
// "[({})](]" =>  False

//TODO: no other elements, if brace right close - true

bool validBraces(String braces) {
  while (
      braces.contains('()') || braces.contains('[]') || braces.contains('{}')) {
    braces = braces.replaceAll('()', "");
    braces = braces.replaceAll('[]', "");
    braces = braces.replaceAll('{}', "");
  }
  return braces.isEmpty;
}

void main() {
  print(validBraces('[]'));
  print(validBraces('1223'));
  print(validBraces('awdawdawd'));
  print(validBraces('[(}]'));
  print(validBraces('[(t)]'));
  print(validBraces('[(){}]'));
}
