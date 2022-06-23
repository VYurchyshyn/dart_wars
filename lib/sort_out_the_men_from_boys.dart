// Now that the competition gets tough it will Sort out the men from the boys .

// Men are the Even numbers and Boys are the odd!

// Given an array/list [] of n integers , Separate The even numbers from the odds,
// or Separate the men from the boys

// Notes
// Return an array/list where Even numbers come first then odds

// Since , Men are stronger than Boys , Then Even numbers in ascending order While odds in descending .

// Array/list size is at least 4 .

// Array/list numbers could be a mixture of positives , negatives .

// Have no fear , It is guaranteed that no Zeroes will exists

// Repetition of numbers in the array/list could occur , So (duplications are not included when separating).

//Input >> Output
// menFromBoys ({7, 3 , 14 , 17}) ==> return ({14, 17, 7, 3})

// Explanation:
// Since , { 14 } is the even number here , So it came first , then the odds in descending order {17 , 7 , 3} .

// menFromBoys ({-94, -99 , -100 , -99 , -96 , -99 }) ==> return ({-100 , -96 , -94 , -99})

List<int> menFromBoys(List<int> arr) {
  List<int> men = arr.where((a) => a % 2 == 0).toList();
  men.sort((a, b) => a.compareTo(b));
  List<int> boys = arr.where((a) => a % 2 == 1).toList();
  boys.sort((a, b) => b.compareTo(a));
  return [...men, ...boys].toList();
}

void main() {
  print(menFromBoys([7, 3, 14, 17]));
  print(menFromBoys([]));
  print(menFromBoys([0, 0, 0, 1, 2]));
}
