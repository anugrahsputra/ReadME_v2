import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:readmev2/providers/book_provider.dart';

import '../../../themes.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bookId = ModalRoute.of(context)!.settings.arguments as String;
    final book = Provider.of<BookProvider>(context).findById(bookId);
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(
        top: 25,
        left: 25,
        right: 25,
      ),
      width: size.width,
      height: size.height * 0.25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            book.image,
            height: size.height,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book.title,
                style: primaryText.copyWith(
                  fontWeight: semiBold,
                ),
              ),
              Text(
                book.author,
                style: secondaryText.copyWith(
                  fontWeight: semiBold,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 3,
                ),
                width: size.width * 0.20,
                height: 19,
                decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    book.category,
                    style: primaryText.copyWith(
                      color: Colors.white,
                      fontSize: 9,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$${book.price}',
                    style: secondaryText.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/stars_icon.svg',
                          height: 16),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '(${book.rating})',
                        style: secondaryText.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
