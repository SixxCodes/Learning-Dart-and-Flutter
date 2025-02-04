import 'dart:io';
/*Practice: Creating Classes

Create a Book class to represent books in a library
system.

The class should include attributes and methods to
manage book details.*/

void main(){
  /*
  var book1 = Book(
    book_id: 1,
    book_name: "Hantungan",
    book_description: "A story about life and love.",
    book_author: "Tiadla",
    book_genre: ["Drama", "Love Story", "Mystery"],
    book_publication_year: "10/10/2005"
  );

  book1.printBookDetails();

  book1.checkOut();
  book1.checkOut();

  book1.returnBook();
  book1.checkOut();
  */

  var book1 = Book(
    book_id: 1,
    book_name: "Hantungan",
    book_description: "A story about life and love.",
    book_author: "Tiadla",
    book_genre: ["Drama", "Love Story", "Mystery"],
    book_publication_year: "10/10/2005"
  );

  List<Book> library = [book1];
  while (true) {
    print("""Kini Libary
    1. View Library
    2. Add Book
    3. Borrow a Book
    4. Return a Book
    5. View Bag
    6. Exit Library""");

    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    if (choice == 1) {
      //View Library
      for (var book in library) {
        book.printBookDetails();
        print("--------------------");
      }
    } else if (choice == 2) {
      //Add Book
      stdout.write("Enter book name: ");
      String book_name = stdin.readLineSync()!;
      stdout.write("Enter book description: ");
      String book_description = stdin.readLineSync()!;
      stdout.write("Enter book author: ");
      String book_author = stdin.readLineSync()!;

      //-------------------GENRE-------------------
      List<String> book_genre = [];
      stdout.write("How many genres does this book have?");
      int num_genres = int.parse(stdin.readLineSync()!);

      for (int i = 0; i < num_genres; i++) {
        stdout.write("Enter book genre $i: ");
        String book_genre_input = stdin.readLineSync()!;
        book_genre.add(book_genre_input);
      }

      stdout.write("Enter book publication year (MM-DD-YYYY): ");
      String book_publication_year = stdin.readLineSync()!;

      library.add(Book(
        book_id: 1, 
        book_name: book_name, 
        book_description: book_description, 
        book_author: book_author,
        book_genre: book_genre,
        book_publication_year: book_publication_year
        ));

      print("Book added successfully!");

    } else if (choice == 3) {
      //Borrow Book
      stdout.write("Enter book name to borrow: ");
      //String book_name_borrow = stdin.readLineSync()!;
    } else if (choice == 4) {
      //Return Book
    } else if (choice == 5){
      //View Bag
    } else {
      print("Invalid choice");
    }
  }
}

class Book {
  
  int book_id;
  String book_name;
  String book_description;
  String book_author;
  List<String> book_genre;
  String book_publication_year;

  bool isAvailable;

  Book({
    required this.book_id,
    required this.book_name,
    required this.book_description,
    required this.book_author,
    this.book_genre = const [],
    required this.book_publication_year,

    this.isAvailable = true
  });

  void printBookDetails() {
    print("Book ID: $book_id");
    print("Book Name: $book_name");
    print("Book Description: $book_description");
    print("Author: $book_author");
    print("Genre: ${book_genre.join(", ")}");
    print("Publication Year: $book_publication_year");

    print("Availability: ${isAvailable ? 'Available' : 'Checked out'}");
  }

  void checkOut() {
    if (isAvailable) {
      isAvailable = false;
      print("$book_name has been checked out.");
    } else {
      print("$book_name is currently not available.");
    }
  }

  void returnBook() {
    if (!isAvailable) {
      isAvailable = true;
      print("$book_name has been returned.");
    } else {
      print("$book_name was not checked out.");
    }
  }
}