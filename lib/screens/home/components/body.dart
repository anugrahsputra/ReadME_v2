import 'package:flutter/material.dart';
import 'package:readmev2/screens/home/components/carousel.dart';
import 'package:readmev2/screens/home/components/latest_release.dart';
import 'package:readmev2/screens/home/components/trending.dart';

import '../../../widgets/section_title.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SectionTitle(title: 'Popular'),
          Carousel(),
          SectionTitle(title: 'Trending'),
          Trending(),
          SectionTitle(title: 'Latest Releases'),
          LatestRelease(),
        ],
      ),
    );
  }
}
