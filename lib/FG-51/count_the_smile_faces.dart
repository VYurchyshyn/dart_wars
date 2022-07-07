// Given an array (arr) as an argument complete the function countSmileys that should return
//the total number of smiling faces.

// Rules for a smiling face:

// Each smiley face must contain a valid pair of eyes. Eyes can be marked as : or ;
// A smiley face can have a nose but it does not have to. Valid characters for a nose are - or ~
// Every smiling face must have a smiling mouth that should be marked with either ) or D
// No additional characters are allowed except for those mentioned.

// Valid smiley face examples: :) :D ;-D :~)
// Invalid smiley faces: ;( :> :} :]

// Example
// countSmileys([':)', ';(', ';}', ':-D']);       // should return 2;
// countSmileys([';D', ':-(', ':-)', ';~)']);     // should return 3;
// countSmileys([';]', ':[', ';*', ':$', ';-D']); // should return 1;

// Note
// In case of an empty array return 0. You will not be tested with invalid input
//(input will always be an array).
//Order of the face (eyes, nose, mouth) elements will always be the same.

//TODO: Add more check
int countSmileys(List<String> arr) {
  int result = 0;
  for (String smile in arr) {
    List<String> arrOfSmile = smile.split('');
    if (arrOfSmile.length == 2) {
      arrOfSmile[0] == ':' || arrOfSmile[0] == ';'
          ? arrOfSmile[1] == ')' || arrOfSmile[1] == 'D'
              ? result += 1
              : null
          : null;
    } else {
      arrOfSmile[0] == ':' || arrOfSmile[0] == ';'
          ? arrOfSmile[1] == '-' || arrOfSmile[1] == '~'
              ? arrOfSmile[2] == ')' || arrOfSmile[2] == 'D'
                  ? result += 1
                  : null
              : null
          : null;
    }
  }
  return result;
}

void main() {
  print(countSmileys([':)', ';(', ';}', ':-D']));
  print(countSmileys([]));
  print(countSmileys([':o)', ':--D', ';-~)']));
}

// The Solution I Couldn't Think of :(
//   int countSmileys(List<String> arr) {
//   int smileyCount = 0;
//   for(var entry in arr){
//     if(RegExp(r'^[;:][-~]?[)D]$').hasMatch(entry)){
//       smileyCount++;
//     }
//   }
//   return smileyCount;
// }
