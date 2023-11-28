import 'package:real_estate_app/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/screens/home/components/categories.dart';
import 'package:real_estate_app/screens/home/components/custom_app_bar.dart';
import 'package:real_estate_app/screens/home/components/houses.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopSection(),
          const SearchField(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Categories(),
          Houses(),
        ],
      ),
    );
  }
}
