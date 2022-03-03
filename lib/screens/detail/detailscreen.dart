// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:readmev2/providers/bookmark_provider.dart';

import '../../themes.dart';
import 'component/body.dart';

class DetailScreens extends StatefulWidget {
  const DetailScreens({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailScreens> createState() => _DetailScreensState();
}

bool isBookmarked = false;

class _DetailScreensState extends State<DetailScreens> {
  @override
  Widget build(BuildContext context) {
    BookmarkProvider bookmarkProvider = Provider.of<BookmarkProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
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
      bottomNavigationBar: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.66,
            margin: const EdgeInsets.only(left: 30, bottom: 20, right: 5),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isBookmarked = !isBookmarked;
                });
              },
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
          Container(
            width: MediaQuery.of(context).size.width * 0.15,
            margin: const EdgeInsets.only(bottom: 20, right: 30),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    Future.delayed(
                      const Duration(seconds: 1),
                      () {
                        Navigator.of(context).pop();
                      },
                    );
                    return SizedBox(
                      width: MediaQuery.of(context).size.width - (2 * 30),
                      height: MediaQuery.of(context).size.height,
                      child: AlertDialog(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        content: isBookmarked
                            ? Column(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Icon(
                                    Icons.check_circle_outline_rounded,
                                    size: 48,
                                    color: pinkColor,
                                  ),
                                  Text('Added to bookmark')
                                ],
                              )
                            : Column(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Icon(
                                    Icons.close_rounded,
                                    size: 48,
                                    color: blueColor,
                                  ),
                                  Text('Removed from bookmark')
                                ],
                              ),
                      ),
                    );
                  },
                );
              },
              child: Icon(
                isBookmarked
                    ? Icons.bookmark_outlined
                    : Icons.bookmark_outline_rounded,
                size: 24,
              ),
              style: ElevatedButton.styleFrom(
                primary: isBookmarked ? pinkColor : blueColor,
                elevation: 0,
                fixedSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
