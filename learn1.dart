void main() {
  /* 
  for (var i = 0; i <= 4; i++) {
    print('hello $i');
  }
  for (var i = 10; i > 0; i--) {
    print('hello $i');
  }
  */

  // -----------part 2 net ninja dart tutorial: TYPE ANNOTATIONS / course-----------
  //part 1 is introduction of dart, proceed to part 2

  var name = "ken";
  print(name);

  final timeNow = DateTime.now(); //runtime 
  const isPretty = true; //compile 

  print(timeNow);
  print(isPretty);

  print(10 + 5);
  print(10 - 5);
  print(10 * 5);
  print(5 / 2);
  print(5 % 2); 

  //concatenation
  String name2 = "Kenny";
  const age = 14;
  
  print("I am $age"); // for non-string type. use interpolation
  print("I am " + name2); // for strings, pero pwede gihapon ka maka-use ug interpolation
  print("My friends call me $name"); // interpolation for strings
  //print("She is ${person.name}"); // interpolation for with objectsS

  // comments
  /* 
    multi-line comment  
  */
  // or just ctrl + /





  // -----------part 3 net ninja dart tutorial: TYPE ANNOTATIONS / course-----------
  // MORE DATATYPES. can change value, not type

  String word = "hey";
  const String words = "heys"; //can also add final and const
  int num = 09;
  bool isTall = true;

  print("$word and $words, $num is my favorite number, because it's tall which is $isTall");

  //double avg = 7.9; // can be an int

  //int point; // can also declare before initializing
  // print(point); //this is error because null, null safety in dart

  int? points; //okay lang na null, use "?"
  print("points: $points"); //output: "null"




  // -----------part 4 net ninja dart tutorial: functions / course-----------
  /*void main() {}

  void: what type of data in this function will be returned? in this case, void = none
  main: function name
  (): you cant put parameter inside
  {}: function body

  ### Note:
  - Can create function outside of main function
  - Can call outside function's function name inside main function
  */

  // calling greet function
  final greeting = greet("Kenny", 20); //parameter positions matter
  print(greeting);

  // calling greet2 function
  // pwede wlay name kay gibutngan mn ug "?" ang datatype sa greet2 function, output: "null"
  final greeting2 = greet2(newAge2:  20, newName2: "Kenny"); //parameter positions doesnt matter
  print(greeting2);
}

/* 
  parameter can have no datatype constraint, can have too
  greet(parameter) or greet(String parameter)
*/

/*
  can also put datatype before function name
  String greet() or just greet(), datatype must match return
  String greet, return "greet"
  int greet, return 12
*/
String greet(String newName, int newAge) {
  return "Hi, my name is $newName and I am $newAge";
}

/*
  parameters with position doesnt matter
*/

String greet2({String? newName2, required int newAge2}) {
  return "HI, I'm student 2 and my name is $newName2, and i am $newAge2 years old.";
}