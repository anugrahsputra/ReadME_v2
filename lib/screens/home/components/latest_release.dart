import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readmev2/widgets/release_card.dart';

import '../../../providers/book_provider.dart';

class LatestRelease extends StatelessWidget {
  const LatestRelease({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<BookProvider>(context);
    final book = data.books;

    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: book.length,
            itemBuilder: (context, i) {
              return ReleaseCard(
                id: book[i].id,
                title: book[i].title,
                image: book[i].image,
                author: book[i].author,
                price: book[i].price.toString(),
              );
            },
          ),
        ],
      ),
    );
  }
}
