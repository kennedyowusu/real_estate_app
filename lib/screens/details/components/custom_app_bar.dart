import 'package:real_estate_app/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/constants/colors..dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding,
        right: appPadding,
        top: appPadding,
      ),
      child: Container(
        height: size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: darkBlue,
                  border: Border.all(color: darkBlue),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  Icons.chevron_left_rounded,
                  color: white,
                ),
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(
                Icons.favorite_border_rounded,
                color: white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
