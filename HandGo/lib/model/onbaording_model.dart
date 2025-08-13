import 'package:flutter_application_1/core/utils/image.dart';

class OnboardingModel {
  final String title;
  final String description;
  final String image;

  OnboardingModel({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<OnboardingModel> onboardingData = [
  OnboardingModel(
    title: 'Profession Home help, Right \n When You Need It',
    description: 'Your journey to a better life starts here.',
    image: p1,
  ),
  OnboardingModel(
    title: 'Pick a service, choose a time,\n and we\'ll handle the rest.',
    description: 'Connect with professionals who can assist you.',
    image: p2,
  ),
];
