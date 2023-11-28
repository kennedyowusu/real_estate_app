import 'package:carousel_pro/carousel_pro.dart';
import 'package:real_estate_app/constants/colors..dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatefulWidget {
  final List<String> imagesListUrl;

  CarouselImages(this.imagesListUrl);

  @override
  _CarouselImagesState createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<AssetImage> imageWidgets =
        widget.imagesListUrl.take(6).map((imageUrl) {
      return AssetImage(imageUrl);
    }).toList();

    return Container(
      height: size.height * 0.35,
      child: Carousel(
        dotSize: 5,
        dotBgColor: Colors.transparent,
        dotColor: Colors.white,
        dotIncreasedColor: Colors.blue,
        autoplay: false,
        images: imageWidgets,
      ),
    );
  }
}
