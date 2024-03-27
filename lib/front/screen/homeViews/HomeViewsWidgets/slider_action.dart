import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderActionImage extends StatelessWidget {
  SliderActionImage({super.key});

  final List<String> imageList = [
  'assets/images/action.png',
  'assets/images/action.png',
  'assets/images/action.png',
];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: CarouselSlider(
            items: imageList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.asset(i, fit: BoxFit.cover, width: double.infinity, height: double.infinity, );
                },
              );
            }).toList(),
            options: CarouselOptions(autoPlay: true)
          ),
        ),
    );
  }
}