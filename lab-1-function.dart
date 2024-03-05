double calculateAverage(List<double> numbers) {
  if (numbers.isEmpty) {
    return 0.0; 
  }   

  double sum = 0.0;
  for (double num in numbers) {
    sum += num;
  }

  return sum / numbers.length;
}