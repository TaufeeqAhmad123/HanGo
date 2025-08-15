import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routes/routes.dart';

import 'package:flutter_application_1/model/product_model.dart';
import 'package:go_router/go_router.dart';

class popularServiceWidget extends StatelessWidget {
  const popularServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final item = products[index];
          return GestureDetector(
            onTap: () {
              context.go(AppRoutes.detail, extra: products[index]);
            },
            child: Container(
              width: 200,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(item.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
