import 'package:flutter/material.dart';

import '../models/book_models.dart';
import '../themes.dart';

class BuildImage extends StatelessWidget {
  const BuildImage({
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
    return InkWell(
      onTap: () => Navigator.pushNamed(context, '/detail', arguments: id),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Stack(
            children: <Widget>[
              Image.asset(image, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: primaryText.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        author,
                        style: primaryText.copyWith(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
