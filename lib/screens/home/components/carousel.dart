import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../providers/book_provider.dart';
import '../../../widgets/image_carousel.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<BookProvider>(context);
    final book = data.books;

    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            aspectRatio: 2.2,
            autoPlay: true,
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
          itemCount: book.length,
          itemBuilder: (context, i, realIndex) {
            return BuildImage(
              id: book[i].id,
              title: book[i].title,
              image: book[i].image,
              author: book[i].author,
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        buildIndicator()
      ],
    );
  }

  Widget buildIndicator() {
    final data = Provider.of<BookProvider>(context);
    final book = data.books;

    return AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: book.length,
        effect: const ColorTransitionEffect(
            spacing: 5.0,
            radius: 5.0,
            dotWidth: 6,
            dotHeight: 6,
            dotColor: Color(0xffC4C4C4),
            activeDotColor: Color(0xff9DB0FF)));
  }
}
