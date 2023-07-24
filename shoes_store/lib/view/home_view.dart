import 'package:flutter/material.dart';
import 'package:shoes_store/constants/inkwell.dart';
import 'package:shoes_store/constants/product_item.dart';
import 'package:shoes_store/theme/app_colors.dart';

import 'package:shoes_store/theme/app_texts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/1a6395c2-4b30-4df0-b43e-4575a57b8478/air-max-goaterra-2-mens-boots-5mjdGp.png",
    "https://static.nike.com/a/images/t_default/rorabfpoffxpmekxfaq7/manoa-leather-mens-boots-Mj42BL.png",
    "https://static.nike.com/a/images/t_default/7a39151f-ebd2-4824-9afb-59e52c46a54d/sfb-6-leather-mens-boot-l3Ngv1.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(78),
                          color: const Color(0xffE7E7E8),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_sharp),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 250, top: 15),
                      child: Icon(Icons.favorite_border, size: 45),
                    ),
                  ],
                ),
              ),
              Image.asset(
                "assets/image/cover.png",
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Size All', style: AppTextStyle.colorSizeAll),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 250),
                    child: Icon(Icons.keyboard_arrow_down),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 88),
                child: Text(
                  'Jordan 14 Retro Gym\n Red To',
                  style: AppTextStyle.jordantext,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 19),
                child: FittedBox(
                  child: Row(
                    children: [
                      Text('Condition:'),
                      Text('New', style: AppTextStyle.newtext),
                      SizedBox(width: 5),
                      Padding(
                        padding: EdgeInsets.only(bottom: 7),
                        child: Text('.'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Ticker:JB-JO1RBGRBW'),
                      SizedBox(width: 5),
                      Padding(
                        padding: EdgeInsets.only(bottom: 7),
                        child: Text('.'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '100% Authentic',
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 250),
                child: Text('Information', style: AppTextStyle.information),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 23),
                child: Row(
                  children: [
                    Text('Style'),
                    SizedBox(
                      width: 70,
                    ),
                    Text('487471-006', style: AppTextStyle.sifra)
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 23),
                child: Row(
                  children: [
                    Text('Colorway'),
                    SizedBox(
                      width: 43,
                    ),
                    Text('BLACK \nWHITE-OFF WHITE-GYM RED',
                        style: AppTextStyle.blackText)
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 23),
                child: Row(
                  children: [
                    Text('Retail Price'),
                    SizedBox(
                      width: 30,
                    ),
                    Text("\$190"),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 23),
                child: Row(
                  children: [
                    Text('Release Date'),
                    SizedBox(
                      width: 20,
                    ),
                    Text("07/02/2020"),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 23),
                child: Inkwell(),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 200),
                child: Text(
                  'Related Products',
                  style: AppTextStyle.information,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 360,
                height: 235,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ProductItem(
                    productName: "Jordan 14 Retro Gym Red \n Toro (GS) $index",
                    imageUrl: images[index],
                    price: 169 + index,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 80,
                width: 329,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withAlpha(80),
                      blurRadius: 7.0, // soften the shadow
                      spreadRadius: .0, //extend the shadow
                      offset: const Offset(
                        .0, // Move to right 5  horizontally
                        5.0, // Move to bottom 5 Vertically
                      ),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        height: 48,
                        width: 98,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.firstcontColor),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_home_outlined,
                                size: 30,
                              ),
                            ),
                            const Text(
                              "menu",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "LilitaOne-Regular"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Image.asset(
                      'assets/image/pngwing.png',
                      height: 35,
                      width: 35,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search, size: 34),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_2_outlined,
                        size: 34,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
