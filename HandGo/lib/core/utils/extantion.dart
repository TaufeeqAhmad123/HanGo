import 'package:flutter/material.dart';

extension IntExtensions on int {
  SizedBox get vSpace => SizedBox(height: toDouble());
  SizedBox get hSpace => SizedBox(width: toDouble());
}
