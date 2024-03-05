List<T> removeDuplicates<T>(List<T> list) {
  List<T> uniqueList = [];

  for (T item in list) {
    if (!uniqueList.contains(item)) {
      uniqueList.add(item);
    }
  }

  return uniqueList;
}
