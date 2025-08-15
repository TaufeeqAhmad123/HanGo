
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_style.dart';
import 'package:flutter_application_1/core/utils/colors.dart';
import 'package:flutter_application_1/core/utils/extantion.dart';
import 'package:flutter_svg/svg.dart';

class actionButton extends StatelessWidget {
  const actionButton({super.key, required this.items});

  final List<Map<String, String>> items;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        4,
        (index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              items[index]['icon']!,
              width: 50,
              height: 50,
              color: AppColors.KprimaryColor,
            ),
            20.vSpace,
            Text(items[index]['title']!, style: semiBold20),
          ],
        ),
      ),
    );
  }
}
