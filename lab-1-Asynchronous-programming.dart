import 'dart:async';

Future<String> fetchUserData() async {
  
  await Future.delayed(Duration(seconds: 2));
  
  
  return 'User Data Fetched';
}


Future<void> fetchData() async {
  print('Fetching data...');
  
  String result = await fetchUserData();
  
  print('Data fetched: $result');
}

void main() {
  fetchData();
  print('Main function continues executing...');
}



