
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_style.dart';
import 'package:flutter_application_1/core/utils/extantion.dart';

class appBarWidget extends StatelessWidget {
  const appBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          CircleAvatar(radius: 30),
          10.hSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('HI Ahmad', style: bold18),
              Text('Islamabad PK', style: regular16),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.notification_add),
            onPressed: () {
              // Handle settings action
            },
          ),
    
      ],
    );
  }
}


