import 'package:flutter/material.dart';
import 'package:shoes_store/theme/app_colors.dart';

class ProductItem extends StatelessWidget {
  final String productName;
  final String imageUrl;
  final int price;

  const ProductItem(
      {super.key,
      required this.productName,
      required this.imageUrl,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.firstcontColor,
      ),
      margin: const EdgeInsets.only(right: 10),
      width: 200,
      height: 235,
      child: Column(children: [
        SizedBox(
          width: 200,
          height: 150,
          child: Image.network(imageUrl),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(productName),
        const SizedBox(
          height: 10,
        ),
        Text(price.toString()),
      ]),
    );
  }
}
