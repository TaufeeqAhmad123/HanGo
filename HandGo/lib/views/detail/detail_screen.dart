import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_style.dart';
import 'package:flutter_application_1/core/utils/colors.dart';
import 'package:flutter_application_1/core/utils/extantion.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:go_router/go_router.dart';

class DetailScreen extends StatelessWidget {
  final ProductModel product;
  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          imageWidget(product: product),
          roundedContainErWidget(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.title,
                      style: bold24
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
                  ],
                ),
                10.vSpace,
                Row(children: [
                  Text(product.providerName,style: semiBold18.copyWith(color: AppColors.KGreyColor),),
                  35.hSpace,
                  Text("⭐ ${product.rating} (${product.reviewCount})",style: semiBold18.copyWith(color: AppColors.KGreyColor),),
                ],),
                10.vSpace,
                 Text('About The Services', style: bold24),
                10.vSpace,
                 Text(product.description, style: regular16.copyWith(color: AppColors.KGreyColor),),
                 25.vSpace,
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('${product.customerNumber}K+',style: bold20,),
                        Text('Happy Customers',style: semiBold18.copyWith(color: AppColors.KGreyColor),),
                      ],
                    ),Column(
                      children: [
                        Text('${product.satisfactionPercentage}%',style: bold20,),
                        Text('Client Satisfaction',style: semiBold18.copyWith(color: AppColors.KGreyColor),),
                      ],
                    )
                  ],
                 ),
                 20.vSpace,
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(' Reviews', style: bold24),
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
                SizedBox(height: 250,child: ListView.builder(itemBuilder: (context,i){
                  return Column(
                    children: [
                          ListTile(leading: CircleAvatar(
                            backgroundImage: NetworkImage(product.reviews[i].reviewerImage),
                          ),
                          title: Text(product.reviews[i].reviewerName),
                          subtitle: Text(product.reviews[i].reviewText),
                          trailing: Text('${product.reviews[i].rating}⭐'),
                          ),
                          
                    ],
                  );
                }),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class roundedContainErWidget extends StatelessWidget {
  final Widget child;
  const roundedContainErWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 680,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: child,
        ),
      ),
    );
  }
}

class imageWidget extends StatelessWidget {
  const imageWidget({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(product.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(Icons.arrow_back, size: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
