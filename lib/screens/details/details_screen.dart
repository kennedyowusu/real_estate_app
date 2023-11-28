import 'package:flutter/material.dart';
import 'package:real_estate_app/model/house.dart';
import 'package:real_estate_app/screens/details/components/carousel_images.dart';
import 'package:real_estate_app/screens/details/components/custom_app_bar.dart';
import 'package:real_estate_app/screens/details/components/house_details.dart';

class DetailsScreen extends StatefulWidget {
  final House house;

  const DetailsScreen({Key? key, required this.house}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CarouselImages(widget.house.moreImagesUrl),
              CustomAppBar(),
            ],
          ),
          HouseDetails(widget.house),
        ],
      ),
    );
  }
}
