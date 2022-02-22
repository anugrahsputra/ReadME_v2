// ignore_for_file: unused_field, prefer_final_fields

import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:readmev2/models/book_models.dart';

class BookProvider with ChangeNotifier {
  List<BookModel> _books = [
    BookModel(
      id: '1',
      title: 'Hyouka',
      author: 'Honobu Yonezawa',
      description:
          'Hyouka is a 2001 Japanese mystery novel written by Honobu Yonezawa. It is the first volume of the Classic Literature Club (古典部, Koten-bu) series. Five additional volumes have been published between 2002 and 2016. A manga adaptation drawn by Taskohna began serialization in the March 2012 issue of Kadokawa Shoten\'s Shōnen Ace.',
      image: 'assets/images/book_5.jpg',
      category: 'Romance',
      price: 10 + Random().nextInt(100).toDouble(),
      rating: Random().nextInt(1000).toInt(),
    ),
    BookModel(
      id: '2',
      title: 'The Buried Giant',
      author: 'Kazuo Ishiguro',
      image: 'assets/images/book_1.jpg',
      description:
          'The Buried Giant is a fantasy novel by the Nobel Prize-winning British writer Kazuo Ishiguro, published in March 2015. The novel follows an elderly Briton couple, Axl and Beatrice, living in a fictional post-Arthurian England in which no-one is able to retain long-term memories.',
      category: 'Fantasy',
      price: 10 + Random().nextInt(100).toDouble(),
      rating: Random().nextInt(1000).toInt(),
    ),
    BookModel(
        id: '3',
        title: 'The Whisperers',
        author: 'Orlando Figes',
        image: 'assets/images/book_2.jpg',
        description:
            'The Whisperers: Private Life in S talin\'s Russia is a history of private life in the Soviet Union during Stalinism, written by Orlando Figes. It was published in 2007 by Metropolitan Books and as an audiobook in 2018 by Audible Studios.',
        category: 'History',
        price: 10 + Random().nextInt(100).toDouble(),
        rating: Random().nextInt(1000).toInt()),
    BookModel(
      id: '4',
      title: 'The Ex Hex',
      author: 'Erin Sterling',
      image: 'assets/images/book_3.jpg',
      description:
          'New York Times bestselling author Rachel Hawkins, writing as Erin Sterling, casts a spell with a spine-tingling romance full of wishes, witches, and hexes gone wrong.',
      category: 'Romance',
      price: 10 + Random().nextInt(100).toDouble(),
      rating: Random().nextInt(1000).toInt(),
    ),
    BookModel(
      id: '5',
      title: 'Dark Places',
      author: 'Gillian Flynn',
      image: 'assets/images/book_4.jpg',
      description:
          'Dark Places is a mystery novel by Gillian Flynn published in 2009. The novel deals with class issues in rural America, intense poverty and the Satanic cult hysteria that swept the United States in the 1980s.',
      category: 'Mystery',
      price: 10 + Random().nextInt(100).toDouble(),
      rating: Random().nextInt(1000).toInt(),
    ),
    BookModel(
      id: '6',
      title: 'The Keeper Of Night',
      author: 'Kyle Lee Baker',
      image: 'assets/images/book_6.jpg',
      description:
          'Half British Reaper, half Japanese Shinigami, Ren Scarborough has been collecting souls in the London streets for centuries. Expected to obey the harsh hierarchy of the Reapers who despise her, Ren conceals her emotions and avoids her tormentors as best she can.\nWhen her failure to control her Shinigami abilities drives Ren out of London, she flees to Japan to seek the acceptance she’s never gotten from her fellow Reapers. Accompanied by her younger brother, the only being on earth to care for her, Ren enters the Japanese underworld to serve the Goddess of Death… only to learn that here, too, she must prove herself worthy. Determined to earn respect, Ren accepts an impossible task—find and eliminate three dangerous Yokai demons—and learns how far she’ll go to claim her place at Death’s side.',
      category: 'Thriller',
      price: 10 + Random().nextInt(100).toDouble(),
      rating: Random().nextInt(1000).toInt(),
    ),
  ];

  List<BookModel> get books {
    return [..._books];
  }

  BookModel findById(String id) {
    return _books.firstWhere((book) => book.id == id);
  }
}
