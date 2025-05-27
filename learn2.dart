import 'dart:io';

void main(){
  // -----------part 5 net ninja dart tutorial: list and sets / course-----------

  //-----------LIST-----------
  var scores = [1,2,3,4,5]; 
  //can initialize multiple datatypes. 
  //but if na-initialize na and if datatype is decided, you cant append new values that doesnt match datatype
  List<int> numbers = [1,2,3,4,6]; //only int

  // var scoresLength = scores.length;
  // for (var i = 0; i < scoresLength; i++) {
  //   print(scores[i]);
  // }

  //modifying list
  // re-assign
  scores[0] = 40;

  //adding
  scores.add(500);

  //inserting
  scores.insert(0, 600);

  //removing
  scores.remove(5);

  print(scores);
  print(numbers);

  scores.removeLast(); //auto remove last value, void function
  print(scores);

  print(scores.length); //length of the list
  
  scores.shuffle(); //shuffle, random order each run, void function
  print("shuffle $scores");

  print("indexOf ${scores.indexOf(2)}"); //nakabase sya sa scores.shuffle
  /*
    All functions learned:
    1. .add()
    2. .insert(index, element);
    3. .remove()
    4. .removeLast() void
    5. .length
    6. .shuffle() void
    7. indexOf()
  */

  //-----------SET-----------
  print("-----------SET-----------");
  /*
    note:
    1. collection
    2. not ordered
    3. no duplicates
    4. can add, not insert
  */

  var names = {"Zy", "Ken", "Maddy", 1, 2};
  print(names);
  Set<String> students = {"Zy", "Ken", "Maddy"};
  print(students);

  students.add("Kaye");
  students.remove("Zy");
  print(students);
  print("length: ${students.length}");

  // -----------part 6 net ninja dart tutorial: control flow / course-----------

  //for loop
  for (int i = 0; i <= 5; i++) {
    print("current value of i is $i");
  }
  print("");
  for (int i = 5; i > 0; i--) {
    print("current value of i is $i");
  }

  List<int> teamNumbers = [1, 5, 6, 9, 123, 3, 5, 2, 456, 789];

  teamNumbers.shuffle();
  print(teamNumbers);
  //foreach
  print("foreach");
  for (int teamNumber in teamNumbers) {
    if (teamNumber < 100) {
      prints("$teamNumber, ");
    } else {
      prints("nge, ");
    }
  }
  print("");
  print("where function");
  for (int teamNumber in teamNumbers.where((s) => s < 100)) {
    prints("$teamNumber, ");
  }

}

void prints(String word) {
  stdout.write(word);
}

/*
print(); "adds new line"
stdout.write(); :print na tapadd
*/