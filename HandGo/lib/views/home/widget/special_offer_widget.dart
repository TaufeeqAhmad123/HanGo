
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_style.dart';
import 'package:flutter_application_1/core/utils/colors.dart';
import 'package:flutter_application_1/core/utils/image.dart';

class specialOfferWidget extends StatelessWidget {
  const specialOfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,

      width: double.infinity,

      decoration: BoxDecoration(
        color: AppColors.KprimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "40%",
                  style: bold34.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 44,
                  ),
                ),
                Text(
                  "Today's Special Offer",
                  style: semiBold18.copyWith(color: Colors.white),
                ),
                Text(
                  "Get discount for every order.\nOnly valid for today",
                  style: regular16.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: -75,
                  top: 10,

                  child: Image.asset(p6, width: 250, fit: BoxFit.contain),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
