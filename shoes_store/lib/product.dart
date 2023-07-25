import 'package:flutter/material.dart';
import 'package:shoes_store/theme/app_texts.dart';

class ProductItem2 extends StatelessWidget {
  const ProductItem2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 10; i++)
            Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(
                    left: 15,
                    top: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.grey)],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'assets/image/thumb.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppTextStyle.text,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        AppTextStyle.text1,
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        AppTextStyle.text2,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
