void main(){
  // -----------part 2 net ninja dart tutorial: list and sets / course-----------

  var scores = [1,2,3,4,5]; 
  //can initialize multiple datatypes. 
  //but if na-initialize na and if datatype is decided, you cant append new values that doesnt match datatype
  List<int> numbers = [1,2,3,4,6]; //only int

  print(scores);
  print(numbers);

  // var scoresLength = scores.length;
  // for (var i = 0; i < scoresLength; i++) {
  //   print(scores[i]);
  // }

  //re-assign
  scores[0] = 40;
  print(scores);
}