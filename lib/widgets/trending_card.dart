import 'package:flutter/material.dart';

import '../themes.dart';

class TrendingCard extends StatelessWidget {
  const TrendingCard({
    Key? key,
    required this.id,
    required this.title,
    required this.image,
    required this.author,
  }) : super(key: key);

  final String id;
  final String title;
  final String image;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/detail', arguments: id);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                  width: 97,
                ),
                const SizedBox(height: 3),
                Text(
                  title,
                  style: primaryText.copyWith(
                    fontSize: 11,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  author,
                  style: secondaryText.copyWith(
                    fontSize: 11,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
