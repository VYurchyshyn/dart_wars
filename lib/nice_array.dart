// A Nice array is defined to be an array where for every value n in the array, there is also an element n - 1 or n + 1 in the array.

// examples:

// [2, 10, 9, 3] is a nice array because

//  2 =  3 - 1
// 10 =  9 + 1
//  3 =  2 + 1
//  9 = 10 - 1

// [4, 2, 3] is a nice array because

// 4 = 3 + 1
// 2 = 3 - 1
// 3 = 2 + 1 (or 3 = 4 - 1)

// [4, 2, 1] is a not a nice array because

// for n = 4, there is neither n - 1 = 3 nor n + 1 = 5
// Write a function named isNice/IsNice that returns true if its array argument is a Nice array, else false. An empty array is not considered nice.

bool isNice(List<int> arr) {
  if (arr.isEmpty) {
    return false;
  }
  for (int i = 0; i < arr.length; i++) {
    bool isNice = arr.contains(arr[i] + 1) || arr.contains(arr[i] - 1);
    if (!isNice) {
      return false;
    }
  }
  return true;
}

void main() {
  print(isNice([4, 2, 1]));
  print(isNice([2, 10, 9, 3]));
  print(isNice([]));
  print(isNice([-1, -2, -3, -4, -3, -4, -5]));
}

//return arr.length > 0 && arr.addAll((n) => arr.contains(n + 1) || arr.contains(n - 1));

//   if (arr.length == 0){
//     return false;
//   }
//   return arr.where((n) => arr.contains(n - 1) || arr.contains(n + 1)) == arr.length;

//   Set<int> matchInd = Set<int>();
  
//   for (var i = 0; i < arr.length; i++){
//     if (matchInd.contains(i)){
//       continue;
//     }
//     bool match = false;
    
//     for(var j = i + 1; j < arr.length; j++){
//       if ((arr[j] == arr[i] + 1) || (arr[j] == arr[i] + - 1)){
//         match = true;
//         matchInd.add(j);
//         break;
//       }
//     }
//     if (!match){
//       return false;
//     }
//   }
//   return true;
// }