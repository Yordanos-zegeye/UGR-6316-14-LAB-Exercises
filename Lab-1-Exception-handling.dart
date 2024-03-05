void performOperation(int number) {
  if (number <= 0) {
    throw Exception('Number must be greater than zero.');
  } else {
    print('Operation performed successfully.');
  }
}

void main() {
  try {
    performOperation(-5);
  } catch (e) {
    print('Exception caught: $e');
  }
}