import 'package:flutter/material.dart';

import '../../data/book_data.dart';
import '../../models/book_models.dart';
import '../../themes.dart';
import '../../widgets/search_card.dart';
import '../../widgets/search_widget.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({Key? key}) : super(key: key);

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  String query = '';
  late List<BookModel> books;

  @override
  void initState() {
    super.initState();

    books = bookdata;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 23),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_list_rounded,
                color: Colors.black,
                size: 28,
              ),
            ),
          ),
        ],
        title: buildSearch(),
      ),
      body: query.isEmpty
          ? noResult()
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: books.length,
                    itemBuilder: (context, i) {
                      final book = books[i];
                      return SearchCard(
                        id: book.id,
                        title: book.title,
                        image: book.image,
                        author: book.author,
                        price: book.price.toString(),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }

  Column noResult() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Text(
              'Search a Book',
              style: primaryText.copyWith(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSearch() {
    return SearchWidget(
      text: query,
      hintText: 'Title or Author Name',
      onChanged: searchBook,
    );
  }

  void searchBook(String query) {
    final books = bookdata.where((book) {
      final title = book.title.toLowerCase();
      final author = book.author.toLowerCase();
      final searchLower = query.toLowerCase();

      return title.contains(searchLower) || author.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.books = books;
    });
  }
}
