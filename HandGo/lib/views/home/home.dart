import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_style.dart';
import 'package:flutter_application_1/core/utils/colors.dart';
import 'package:flutter_application_1/core/utils/extantion.dart';
import 'package:flutter_application_1/core/utils/image.dart';
import 'package:flutter_application_1/views/home/widget/app_bar_widget.dart';
import 'package:flutter_application_1/widgets/my-text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBarWidget(),
              20.vSpace,
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      controller: _searchController,
                      hintText: 'Search',
                      prefixIcon: Icons.search,
                    ),
                  ),
                  10.hSpace,
                  IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: () {
                      // Handle filter action
                    },
                  ),
                ],
              ),
              15.vSpace,
              Text('Special Offer', style: bold24),
              10.vSpace,
              Container(
                height: 200,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: AppColors.KprimaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start  ,
                        children: [
                          Text(
                            "40%",
                            style: bold34.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 44),
                            
                          ),
                          Text(
                            "Today's Special Offer",
                            style: semiBold18.copyWith(color: Colors.white),
                      
                          ),
                          Text(
                            "Get discount for every order\n.Only valid for today",
                            style: regular16.copyWith(color: Colors.white),
                      
                          ),
                        ],
                      ),
                      
                    ),
                    Image.asset(p1),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
