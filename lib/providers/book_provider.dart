// ignore_for_file: unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:readmev2/data/book_data.dart';
import 'package:readmev2/models/book_models.dart';

class BookProvider with ChangeNotifier {
  List<BookModel> _books = bookdata;

  List<BookModel> get books {
    return [..._books];
  }

  BookModel findById(String id) {
    return _books.firstWhere((book) => book.id == id);
  }
}
