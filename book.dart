import 'dart:core';

class Book {

  String title;
  String author;
  int publicationYear;
  int pagesRead;


  static int totalBooks = 0;

  Book(this.title, this.author, this.publicationYear, this.pagesRead) {
    totalBooks++;
  }


  void read(int pages) {
    pagesRead += pages;
  }


  int getPagesRead() {
    return pagesRead;
  }

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }


  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {

  Book book1 = Book("The complete reference C++", "Herbert Schildt", 2003, 0);
  Book book2 = Book("C++ all in one for dummies", "John paul Mueller", 2016, 10);
  Book book3 = Book("Artificial Intelligence", "Stauart Russell", 2010, 5);


  book1.read(375);
  book2.read(273);
  book3.read(1083);


  print("Book 1: ${book1.getTitle()}, by ${book1.getAuthor()}");
  print("Publication Year: ${book1.getPublicationYear()}");
  print("Pages read: ${book1.getPagesRead()}");
  print("Age: ${book1.getBookAge()} years\n");

  print("Book 2: ${book2.getTitle()}, by ${book2.getAuthor()}");
  print("Publication Year: ${book2.getPublicationYear()}");
  print("Pages read: ${book2.getPagesRead()}");
  print("Age: ${book2.getBookAge()} years\n");

}