import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_application_1/core/utils/app_style.dart';
import 'package:flutter_application_1/core/utils/colors.dart';
import 'package:flutter_application_1/core/utils/extantion.dart';
import 'package:flutter_application_1/core/utils/image.dart';
import 'package:flutter_application_1/views/home/widget/action_button.dart';
import 'package:flutter_application_1/views/home/widget/app_bar_widget.dart';
import 'package:flutter_application_1/views/home/widget/earch_widget.dart';
import 'package:flutter_application_1/views/home/widget/popular_service_widge.dart';
import 'package:flutter_application_1/views/home/widget/special_offer_widget.dart';
import 'package:flutter_application_1/widgets/my-text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> items = [
    {"icon": clean, "title": "Cleaning"},
    {"icon": hammer, "title": "Repair"},
    {"icon": roller, "title": "Painting"},
    {"icon": more, "title": "More"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appBarWidget().animate().slideY(
                  begin: -1,
                  duration: 500.ms,
                  curve: Curves.easeIn,
                ),
                20.vSpace,
                searchWidget(searchController: _searchController),
                15.vSpace,
                Text('Special Offer', style: bold24),
                10.vSpace,
                specialOfferWidget().animate().fadeIn(
                  duration: 1000.ms,
                  curve: Curves.easeIn,
                ),
                20.vSpace,
                Text('Categories', style: bold26),
                30.vSpace,

                actionButton(items: items).animate().slideX(
                  begin: 1,
                  duration: 1000.ms,
                  curve: Curves.easeIn,
                ),
                20.vSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular Services', style: bold24),
                    TextButton(
                      onPressed: () {
                        // Handle view all action
                      },
                      child: Text(
                        'View All',
                        style: semiBold20.copyWith(
                          color: AppColors.KprimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                20.vSpace,
                popularServiceWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
