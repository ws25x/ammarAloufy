import 'package:as_project/test/main.dart';
import 'package:flutter/material.dart';
import 'widget/bookContainer.dart';
import 'views/home.dart';
import 'views/search.dart';
import 'views/settings.dart';

import 'welcomePage.dart';
import 'widget/appColors.dart' as appColor;

// main() {
//   // runApp(MaterialApp(debugShowCheckedModeBanner: false, home: welcome()),);
//   // runApp(homePage());
// }

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int selectedView = 0;

  List<BottomNavigationBarItem> items = [

    BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'الرئيسية'),
    BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: 'تواصل'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'البحث'),
    BottomNavigationBarItem(icon: Icon(Icons.notifications_active_outlined), label: 'الاشعارات'),
    BottomNavigationBarItem(icon: Icon(Icons.receipt_outlined), label: 'الحجوزات'),

  ];

  List views = [home(),setting(),search(),welcome()];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        backgroundColor: appColor.sec,




        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: appColor.sec,
          items: items,

          currentIndex: selectedView,
          selectedItemColor: appColor.greenFlag,
          unselectedItemColor: Colors.grey,
          onTap: (currentIndex) {
            setState(() {
              selectedView = currentIndex;
            });
          },
        ),

        body: views.elementAt(selectedView),
      );
  }
}
