/*Practice: Creating Classes

Create a Book class to represent books in a library
system.

The class should include attributes and methods to
manage book details.*/

void main(){

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