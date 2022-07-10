// In this Kata, you will be given a string that may have mixed uppercase and lowercase letters
//and your task is to convert that string to either lowercase only or uppercase only based on:

// ! make as few changes as possible.
// ! if the string contains equal number of uppercase and lowercase letters,
//convert the string to lowercase.

// For example:

// solve("coDe") = "code". Lowercase characters > uppercase. Change only the "D" to lowercase.
// solve("CODe") = "CODE". Uppercase characters > lowecase. Change only the "e" to uppercase.
// solve("coDE") = "code". Upper == lowercase. Change all to lowercase.
// More examples in test cases. Good luck!

String solve(String s) {
  if (s.contains(RegExp('^[a-zA-Z]')) && s.isNotEmpty) {
    int toLowerCase = 0;
    int toUpperCase = 0;
    for (var i = 0; i < s.length; i++) {
      s[i] == s[i].toLowerCase() ? toLowerCase += 1 : toUpperCase += 1;
    }
    return toLowerCase < toUpperCase ? s.toUpperCase() : s.toLowerCase();
  } else {
    return 'put only letters, string cant be empty';
  }
}

void main() {
  print(solve('CODe'));
  print(solve('code'));
  print(solve('CoDe'));
  print(solve('Code Value'));
  print(solve('123123123'));
  print(solve(''));
}
