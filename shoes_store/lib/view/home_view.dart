import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shoes_store/constants/inkwell.dart';
import 'package:shoes_store/product.dart';
import 'package:shoes_store/theme/app_texts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  bool _isPressed = false;

  void _handlePress() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(children: [
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
                    Padding(
                      padding: const EdgeInsets.only(left: 250, top: 5),
                      child: IconButton(
                        icon: Icon(
                          _isPressed ? Icons.favorite : Icons.favorite_border,
                          size: 40,
                          color: _isPressed ? Colors.red : Colors.black,
                        ),
                        onPressed: _handlePress,
                      ),
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
                      child: Text(AppTextStyle.sizeAll)),
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
                  AppTextStyle.jordan,
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
                      Text(AppTextStyle.condition),
                      Text('New', style: AppTextStyle.newtext),
                      SizedBox(width: 5),
                      Padding(
                        padding: EdgeInsets.only(bottom: 7),
                        child: Text('.'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(AppTextStyle.ticker),
                      SizedBox(width: 5),
                      Padding(
                        padding: EdgeInsets.only(bottom: 7),
                        child: Text('.'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        AppTextStyle.authenticc,
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
                child: Text(AppTextStyle.informations,
                    style: AppTextStyle.information),
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
                    Text(AppTextStyle.black, style: AppTextStyle.blackText)
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
                    Text(AppTextStyle.price),
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
                    Text(AppTextStyle.date),
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
                  AppTextStyle.related,
                  style: AppTextStyle.information,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ProductItem2(),
              const SizedBox(
                height: 30,
              ),
            ]),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.2),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                tabs: const [
                  GButton(
                    icon: Icons.home_outlined,
                    text: 'menu',
                  ),
                  GButton(
                    icon: Icons.crop_free_outlined,
                    text: 'Scan',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.person_outline,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
