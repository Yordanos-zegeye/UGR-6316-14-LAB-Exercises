
void checkAge(int age) {
  if (age < 18) {
    throw Exception('You must be 18 or older to proceed.');
  }
}

void main() {
  int userAge = 16; 

  try {

    checkAge(userAge);
    print('You are eligible to proceed.');
  } catch (e) {
    print('Exception caught: $e');
  }
}

