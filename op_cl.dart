class Book {
  String title;
  String author;
  int year;

  Book(this.title, this.author, this.year);

  String getDetails() {
    return "Title: $title\nAuthor: $author\nYear: $year";
  }
}

class FictionBook extends Book {
  FictionBook(String title, String author, int year)
      : super(title, author, year);

  double calculateLateFee() {
    return 1.0;
  }
}

class NonFictionBook extends Book {
  NonFictionBook(String title, String author, int year)
      : super(title, author, year);

  double calculateLateFee() {
    return 0.5;
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void removeBook(Book book) {
    books.remove(book);
  }

  List<Book> searchByTitle(String title) {
    return books.where((book) => book.title == title).toList();
  }

  List<Book> searchByAuthor(String author) {
    return books.where((book) => book.author == author).toList();
  }
}

void main() {
  var book1 = FictionBook("The Great Gatsby", "F. Scott Fitzgerald", 1925);
  var book2 = NonFictionBook("The Selfish Gene", "Richard Dawkins", 1976);

  var library = Library();
  library.addBook(book1);
  library.addBook(book2);

  var searchTitle = "The Great Gatsby";
  var searchAuthor = "Richard Dawkins";
  var titleResults = library.searchByTitle(searchTitle);
  var authorResults = library.searchByAuthor(searchAuthor);

  print("Search for books with title '$searchTitle':");
  for (var book in titleResults) {
    print(book.getDetails());
  }

  print("\nSearch for books by author '$searchAuthor':");
  for (var book in authorResults) {
    print(book.getDetails());
  }

  library.removeBook(book2);
}
