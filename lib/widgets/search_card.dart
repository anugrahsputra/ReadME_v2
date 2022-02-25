import 'package:flutter/material.dart';

import '../themes.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    Key? key,
    required this.id,
    required this.title,
    required this.image,
    required this.author,
    required this.price,
  }) : super(key: key);

  final String id;
  final String title;
  final String image;
  final String author;
  final String price;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/detail', arguments: id);
      },
      child: Container(
        margin: const EdgeInsets.only(left: 30, bottom: 20),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 89,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    title,
                    style: primaryText.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                Text(
                  author,
                  style: secondaryText.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(height: 33),
                Text(
                  '\$$price',
                  style: primaryText.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
