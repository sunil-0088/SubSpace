import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../utils/constant.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: kBackgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: CarouselSlider(
            // carouselController: CarouselController(),
            options: CarouselOptions(
              aspectRatio: 2.0,
              viewportFraction: 1.0,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
            ),
            items: [
              Image.asset('assets/images/slider1.jpg'),
              Image.asset('assets/images/slider2.jpg'),
              Image.asset('assets/images/slider3.jpg'),
            ]),
      ),
    );
  }
}
