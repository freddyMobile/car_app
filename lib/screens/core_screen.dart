import 'package:car_app/constants/page_const.dart';
import 'package:car_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CoreScreen extends StatefulWidget {
  const CoreScreen({super.key});

  @override
  State<CoreScreen> createState() => _CoreScreenState();
}

class _CoreScreenState extends State<CoreScreen> {
  int curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[curIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
        child: SizedBox(
          height: 60,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Wrap(
                children: [
                  BottomNavigationBar(
                      onTap: (value) {
                        setState(() {
                          curIndex = value;
                        });
                      },
                      backgroundColor: Colors.black,
                      type: BottomNavigationBarType.fixed,
                      currentIndex: curIndex,
                      selectedFontSize: 0,
                      unselectedFontSize: 0,
                      items: const [
                        BottomNavigationBarItem(
                            backgroundColor: Colors.black,
                            icon: Icon(
                              Icons.home_outlined,
                              color: Colors.white54,
                            ),
                            activeIcon: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                            label: ''),
                        BottomNavigationBarItem(
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.white54,
                            ),
                            activeIcon: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                            label: ''),
                        BottomNavigationBarItem(
                            icon: Icon(
                              Icons.shop_outlined,
                              color: Colors.white54,
                            ),
                            activeIcon: Icon(
                              Icons.shop,
                              color: Colors.white,
                            ),
                            label: ''),
                        BottomNavigationBarItem(
                            icon: Icon(
                              Icons.lightbulb_outline_sharp,
                              color: Colors.white54,
                            ),
                            activeIcon: Icon(
                              Icons.lightbulb_sharp,
                              color: Colors.white,
                            ),
                            label: '')
                      ]),
                ],
              )),
        ),
      ),
    );
  }
}
