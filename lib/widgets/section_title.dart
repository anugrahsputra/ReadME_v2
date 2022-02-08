import 'package:flutter/material.dart';

import '../themes.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 31, top: 20),
      child: Text(
        title,
        style: primaryText.copyWith(
          fontWeight: bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
