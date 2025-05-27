void main() {
  const String word = "barf";
  print(word);

  var wordLength = word.length - 1;
  for (var i = 1; i < wordLength; i++) {
      print(word[i] + word[i]);
  }

  // for (var i = (wordLength + 1); i > 0; i--) {
  //   print(word[i]);
  // }
}