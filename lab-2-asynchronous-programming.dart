import 'dart:async';


Future<String> fetchUserData() {

  return Future.delayed(Duration(seconds: 2), () {

    return 'User Data Fetched';
  });
}

void main() {
  print('Fetching data...');


  fetchUserData().then((result) {
    print('Data fetched: $result');
  });

  print('Main function continues executing...');
}
