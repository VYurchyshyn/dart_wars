// Write a function that accepts an array of 10 integers (between 0 and 9),
//that returns a string of those numbers in the form of a phone number.

// Example
// createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) // => returns "(123) 456-7890"
// The returned format must be correct in order to complete this challenge.
// Don't forget the space after the closing parentheses!

//Добавить больше проверок

String createPhoneNumber(List<int> numbers) {
  var formatOfNumber = "(xxx) xxx-xxxx";

  for (var i = 0; i < numbers.length; i++) {
    formatOfNumber = formatOfNumber.replaceFirst('x', numbers[i].toString());
  }
  if (numbers.length != 10) {
    throw Exception('Add only 10 symvols');
  }

  return formatOfNumber;
}

void main() {
  print(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]));
  //print(createPhoneNumber([]));
  print(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 9, 0]));
}
