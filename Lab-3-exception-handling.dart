void main() {
  try {
    // Some code that might throw an exception
    int result = 10 ~/ 0; // Division by zero, will throw an exception
    print('Result: $result'); // This line will not execute
  } catch (e) {
    print('Exception caught: $e');
  } finally {
    // Code that must run regardless of whether an exception was thrown or caught
    print('Finally block executed');
  }
}

