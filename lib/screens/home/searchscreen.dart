import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/book_provider.dart';
import '../../themes.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({
    Key? key,
  }) : super(key: key);

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  // final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final data = Provider.of<BookProvider>(context);
    var book = data.books;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 23),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.filter_list_rounded,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
          ],
          title: Container(
            padding: const EdgeInsets.only(left: 10),
            width: width,
            height: 35,
            decoration: BoxDecoration(
              color: const Color(0xffE1E1E1),
              borderRadius: BorderRadius.circular(9),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.search_rounded,
                  color: Color(0xff8A8A8A),
                  size: 16,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    // controller: _textEditingController,
                    style: primaryText.copyWith(
                      fontSize: 13,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: 'Search',
                      hintStyle: secondaryText.copyWith(fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: noResult());
  }

  Column noResult() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Text(
              'No Results!',
              style: primaryText.copyWith(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
