import 'package:flutter/material.dart';

import '../../themes.dart';
import '../../widgets/bookmark_card.dart';

class Bookmarkscreen extends StatelessWidget {
  const Bookmarkscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Bookmark',
          style: primaryText.copyWith(
            fontSize: 20,
            fontWeight: bold,
          ),
        ),
        centerTitle: true,
      );
    }

    // ignore: unused_element
    Widget emptyBookmark() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Center(
            child: Text(
              'You have not bookmark anything yet',
              style: primaryText.copyWith(fontSize: 18, fontWeight: bold),
            ),
          ),
        ),
      );
    }

    Widget bookmark() {
      return Expanded(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            children: const [
              BookmarkCard(),
              BookmarkCard(),
              BookmarkCard(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyBookmark(),
        bookmark(),
      ],
    );
  }
}
