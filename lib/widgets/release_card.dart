import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../themes.dart';

class ReleaseCard extends StatelessWidget {
  const ReleaseCard({
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
              height: 120,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: primaryText.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        '\$$price',
                        style: primaryText.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  author,
                  style: secondaryText.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(height: 60),
                SvgPicture.asset('assets/icons/stars_icon.svg')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
