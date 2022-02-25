import 'package:flutter/material.dart';

import '../themes.dart';

class SearchWidget extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchWidget({
    Key? key,
    required this.text,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(left: 10),
      width: width,
      height: 35,
      decoration: BoxDecoration(
        color: const Color(0xffE1E1E1),
        borderRadius: BorderRadius.circular(9),
      ),
      child: TextField(
        controller: controller,
        style: primaryText.copyWith(
          fontSize: 13,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: widget.text.isNotEmpty
              ? GestureDetector(
                  child: const Icon(
                    Icons.close_rounded,
                    color: Color(0xff8A8A8A),
                    size: 16,
                  ),
                  onTap: () {
                    controller.clear();
                    widget.onChanged;
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                )
              : null,
          icon: const Icon(
            Icons.search_rounded,
            color: Color(0xff8A8A8A),
            size: 16,
          ),
          hintText: widget.hintText,
          hintStyle: secondaryText.copyWith(fontSize: 13),
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
}
