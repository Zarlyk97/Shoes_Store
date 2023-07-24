import 'package:flutter/material.dart';
import 'package:shoes_store/theme/app_colors.dart';

class Inkwell extends StatelessWidget {
  const Inkwell({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 65,
            width: 143,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.buyColor),
            child: Image.asset('assets/image/Buy.png'),
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 65,
            width: 143,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.red),
            child: Image.asset('assets/image/Tocart.png'),
          ),
        ),
        const SizedBox(
          height: 65,
        )
      ],
    );
  }
}
