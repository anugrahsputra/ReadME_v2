import 'package:flutter/material.dart';

import '../themes.dart';

class BookmarkCard extends StatelessWidget {
  const BookmarkCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/book_5.jpg',
            width: 60,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hyouka',
                  style: primaryText.copyWith(fontWeight: semiBold),
                ),
                Text(
                  'Honobu Yonezawa',
                  style: secondaryText.copyWith(
                    fontWeight: semiBold,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  '\$20.00',
                  style: secondaryText.copyWith(fontWeight: semiBold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
