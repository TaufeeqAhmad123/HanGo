import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_style.dart';
import 'package:flutter_application_1/core/utils/colors.dart';
import 'package:flutter_application_1/core/utils/extantion.dart';
import 'package:flutter_application_1/core/utils/image.dart';
import 'package:flutter_application_1/model/onbaording_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: onboardingData.length,
        controller: _pageController,
        itemBuilder: (context, index) {
          final data = onboardingData[index];
          return Stack(
            alignment: AlignmentGeometry.bottomCenter,

            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(data.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned.fill(
                bottom: 295,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      stops: [.4, 2.0],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.white],
                    ),
                  ),
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(color: AppColors.KWhiteColor),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.sp),
                  child: Column(
                    children: [
                      Text(
                        data.title,
                        style: bold26,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Text(
                        data.description,
                        style: regular16.copyWith(color: AppColors.KGreyColor),
                      ),
                      30.vSpace,
                      index== 1 ?  ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(375, 70),
                              backgroundColor: AppColors.KprimaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onPressed: () {
                              
                            },
                            child: Text(
                              'Get Started',
                              style: bold18.copyWith(
                                color: AppColors.KWhiteColor,
                              ),
                            ),
                          ) :
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Skip', style: bold18),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(130, 70),
                              backgroundColor: AppColors.KprimaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onPressed: () {
                              if (index == 0) {
                                _pageController.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeIn,
                                );
                              }
                            },
                            child: Text(
                              'Next',
                              style: bold18.copyWith(
                                color: AppColors.KWhiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
