import 'package:flutter/material.dart';
import 'package:readmev2/data/book_data.dart';
import 'package:readmev2/models/book_models.dart';

class BookmarkProvider with ChangeNotifier {
  List<BookModel> _bookmark = bookdata;

  List<BookModel> get bookmark => _bookmark;

  set bookmark(List<BookModel> bookmark) {
    _bookmark = bookmark;
    notifyListeners();
  }

  setBook(BookModel books) {
    if (!isBookmark(books)) {
      _bookmark.add(books);
    } else {
      _bookmark.removeWhere((element) => element.id == books.id);
    }
    notifyListeners();
  }

  isBookmark(BookModel books) {
    if (_bookmark.indexWhere((element) => element.id == books.id) == -1) {
      return false;
    } else {
      return true;
    }
  }
}
