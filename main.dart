import 'dart:math';

void main() {
  List<String> arr = [
    "nap",
    "teachers",
    "cheaters",
    "PAN",
    "ear",
    "era",
    "hectares"
  ];
  print(aclean(arr));
}

List<String> aclean(arr) {
  List<String> sortedWords = [];
  List forSort = [];
  for (int i = 0; arr.length > i; i++) {
    forSort.add(arr[i].toLowerCase().split(""));
    forSort[i].sort();
    sortedWords.add(forSort[i].join());
  }

  List<String> arrOfIndex = [];
  for (int i = 0; sortedWords.length > i; i++) {
    List<int> sortedIndexes = [];
    for (int a = 0; sortedWords.length > a; a++) {
      if (sortedWords[i] == sortedWords[a]) {
        sortedIndexes.add(a);
      }
    }
    arrOfIndex.add((sortedIndexes.join()));
  }

  List<String> uniqWords = [];
  List<String> uniqIndexes = arrOfIndex.toSet().toList();
  uniqIndexes.forEach((element) {
    Random rnd = Random();
    String randIndex = element[rnd.nextInt(element.length)];
    uniqWords.add((arr[int.parse(randIndex)]));
  });
  return uniqWords;
}
