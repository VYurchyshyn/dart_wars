// Write a function that takes in a string of one or more words, and returns the same string,
//but with all five or more letter words reversed (Just like the name of this Kata).
//Strings passed in will consist of only letters and spaces. Spaces will be included
//only when more than one word is present.

// Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" spinWords
//( "This is a test") => returns "This is a test" spinWords( "This is another test" )=>
//returns "This is rehtona test"

String spinWords(String str) {
  if (str.contains(RegExp(r'[A-Z]'))) {
    List<String> listOfStr = str.split(' ');
    for (var i = 0; i < listOfStr.length; i++) {
      if (listOfStr[i].split('').length > 4) {
        listOfStr[i] = listOfStr[i].split('').reversed.join();
      }
    }
    return listOfStr.join(' ');
  } else {
    return 'Array cant be empty, array must contain string value and space only';
  }
}

void main() {
  print(spinWords('Testing for Just kidding there is still one more'));
  print(spinWords('123'));
  print(spinWords('Testing for Just kidding there is still'));
  print(spinWords(''));
  print(spinWords(
      'If you dont like to add some check the Algorithms please leave this file'));
}
