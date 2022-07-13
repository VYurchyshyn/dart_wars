// In this Kata, you will be given a string and your task will be to return the length
//of the longest prefix that is also a suffix. A prefix is the start of a string while
//the suffix is the end of a string. For instance, the prefixes of the string "abcd" are
//["a","ab","abc"]. The suffixes are ["bcd", "cd", "d"].
//You should not overlap the prefix and suffix.

// for example:
// solve("abcd") = 0, because no prefix == suffix.
// solve("abcda") = 1, because the longest prefix which == suffix is "a".
// solve("abcdabc") = 3. Longest prefix which == suffix is "abc".
// solve("aaaa") = 2. Longest prefix which == suffix is "aa". You should not overlap the prefix and suffix
// solve("aa") = 1. You should not overlap the prefix and suffix.
// solve("a") = 0. You should not overlap the prefix and suffix.
// All strings will be lowercase and string lengths are 1 <= length <= 500

// More examples in test cases. Good luck!

int solve(String s) {
  if (s.isNotEmpty && s.contains(RegExp(r'[a-z]'))) {
    List<String> suffix = [];
    List<String> prefix = [];

    if (s.split('').toSet().toList().length == 1) {
      return ((s.length - 1) / 2).round();
    }
    for (var i = 1; i < s.length; i++) {
      suffix.add(s.substring(0, s.length - i));
      prefix.add(s.substring(i));
    }
    for (var j = 1; j < prefix.length; j++) {
      if (prefix[j] == suffix[j] && j != prefix.length / 2 - 1) {
        return prefix[j].length;
      }
    }
    return 0;
  } else {
    throw Exception('String have to be lowerCase and not Empty');
  }
}

void main() {
  print(solve('abcdabc'));
  print(solve('aaaaaaaa'));
  print(solve('1'));
  print(solve('AAAAA'));
  print(solve('abcdefghijklmnopqrstuvwxyz'));
  print(solve(''));
}
