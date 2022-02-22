import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/book_provider.dart';
import '../../../widgets/trending_card.dart';

class Trending extends StatelessWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<BookProvider>(context);
    final book = data.books;

    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: SizedBox(
        height: 195,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: book.length,
          itemBuilder: (context, i) {
            return TrendingCard(
              id: book[i].id,
              title: book[i].title,
              image: book[i].image,
              author: book[i].author,
            );
          },
        ),
      ),
    );
  }
}
