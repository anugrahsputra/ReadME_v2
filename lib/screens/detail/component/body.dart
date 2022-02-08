import 'package:flutter/material.dart';

import 'book_details.dart';
import 'description.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: const [
        BookDetails(),
        SizedBox(height: 30),
        AboutBook(),
      ],
    );
  }
}
