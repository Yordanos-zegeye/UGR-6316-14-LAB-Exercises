int findHighest(List<int> numbers) {
  if (numbers.isEmpty) {
      return 0;
  }

  int highest = numbers[0]; 

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > highest) {
      highest = numbers[i];
    }
  }

  return highest;
}