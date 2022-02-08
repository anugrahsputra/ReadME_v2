import 'package:flutter/material.dart';

import '../../themes.dart';
import 'component/body.dart';

class DetailScreens extends StatelessWidget {
  const DetailScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          'Book',
          style: primaryText.copyWith(
            fontSize: 20,
            fontWeight: bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const Body(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 25),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Buy & Read',
            style: primaryText.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: blueColor,
            elevation: 0,
            fixedSize: const Size(double.infinity, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
