//Library
import 'dart:io';

void main() {
  List<Book> books = [];
  
  while (true) {
    menu();
    print('Choose an option from the menu:');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      print('Enter the title of the book you want to add:');
      String? title = stdin.readLineSync();

      print('Enter the author of the book:');
      String? author = stdin.readLineSync();

      print('Enter the year of publication:');
      String? inputYear = stdin.readLineSync();
      int? year = int.tryParse(inputYear ?? '');
  

      if (title != null && author != null && year != null) {
        books.add(Book(title: title, author: author, year: year, available: true));
        print('Book added successfully!');
      } else {
        print('Invalid data. Could not add the book.');
      }
    } 
    
    else if (choice == '2') {
      if (books.isEmpty) {
        print('No books registered in the system.');
      } else {
        print('List of all books:');
        for (int i = 0; i < books.length; i++) {
          print('Book ${i + 1}: Title: ${books[i].title}, Author: ${books[i].author}, Year: ${books[i].year}, Available: ${books[i].available ? 'Yes' : 'No'}');
        }
      }
    } 
    
    else if (choice == '3') {
      print('Enter the title of the book to mark as unavailable:');
      String? searchTitle = stdin.readLineSync();

      if (searchTitle != null) {
      
        for (int i = 0; i < books.length; i++) {
          if (books[i].title == searchTitle) {
            books[i].available = false;
           
            print('Book "${books[i].title}" marked as unavailable.');
            break;
          }
          else{
            print('Book not found. Please try again');
            break;
          }
        }
        
      }
    } 
    
    else if (choice == '4') {
      print('Enter the title of the book to remove:');
      String? searchTitle = stdin.readLineSync();

      if (searchTitle != null) {
        bool removed = false;
        for (int i = 0; i < books.length; i++) {
          if (books[i].title == searchTitle) {
            books.removeAt(i);
            removed = true;
            print('Book "$searchTitle" removed successfully.');
            break;
          }
        }
        if (!removed) {
          print('Book not found.');
        }
      }
    } 
    
    else if (choice == '5') {
      print('Exiting the menu... Goodbye!');
      break;
    } 
    
    else {
      print('Invalid option! Try again.');
    }
  }
}

class Book {
  String author;
  String title;
  int year;
  bool available;

  Book({
    required this.author,
    required this.title,
    required this.year,
    required this.available,
  });
}

void menu() {
  print('\n===== MENU =====');
  print('[1] Add a new book');
  print('[2] List all books');
  print('[3] Mark book as unavailable');
  print('[4] Remove book from library');
  print('[5] Exit');
}
