void printMapKeysAndValues(Map<dynamic, dynamic> map) {
  map.forEach((key, value) {
    print('Key: $key, Value: $value');
  });
}