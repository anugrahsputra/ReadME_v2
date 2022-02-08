import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/book_provider.dart';
import '../../../themes.dart';

class AboutBook extends StatelessWidget {
  const AboutBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bookId = ModalRoute.of(context)!.settings.arguments as String;
    final book = Provider.of<BookProvider>(context).findById(bookId);
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About This Book',
            style: primaryText.copyWith(
              fontSize: 18,
              fontWeight: bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 11,
            ),
            width: size.width,
            // height: size.height / 2,

            child: Text(
              book.description,
              style: secondaryText.copyWith(
                fontSize: 12,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
