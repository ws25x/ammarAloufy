import 'package:flutter/material.dart';
import '../widget/bookContainer.dart';
import '../widget/appColors.dart' as appColor;
import '../widget/poplCont.dart';
import 'activities/availableActivities.dart';
import 'activities/comingActivities.dart';
import 'settings.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

List<String> cateGo = ['الانشطة الحالية', 'الانشطة القادمة'];
int selectedIndex = 0;

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: appColor.greenFlag,
          title: Text('الرئيسية', style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const setting()),
                );
              },
              icon: Icon(Icons.settings, color: Colors.white),
            ),
          ],
        ),

        backgroundColor: appColor.sec,

        body: Column(
          children: [
            // Text('hello user', textDirection: TextDirection.rtl,),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Icon(Icons.star),
                  Text(
                    ' الاعلى تقييماً ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),

            Padding(padding: EdgeInsets.only(bottom: 20)),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: 180,
                // width: 350,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    popCount(imgPath: 'assets/images/mak.jpg', txt: 'مكة'),
                    popCount(imgPath: 'assets/images/mak.jpg', txt: 'makkah'),
                    popCount(imgPath: 'assets/images/mak.jpg', txt: 'makkah'),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),

            // SizedBox(height: 20,),

            // Categories(),
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cateGo.length,
                itemBuilder:
                    (context, index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45),
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Container(
                              width: 140,
                              height: 30,
                              decoration: BoxDecoration(
                                color:
                                    selectedIndex == index
                                        ? Colors.white
                                        : Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 4,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  cateGo[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color:
                                        selectedIndex == index
                                            ? appColor.greenFlag
                                            : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            // SizedBox(height: 10,),
                            // selectedIndex == index? available() : coming(),
                            // const SizedBox(height: 20,), selectedIndex == 0 ?  available() : coming(),
                            // Text('data')
                          ],
                        ),
                      ),
                    ),
              ),
            ),

            selectedIndex == 0 ? available() : coming(),
          ],
        ),
      ),
    );
  }
}

/////////////////////////////////////
//           categories            //
/////////////////////////////////////

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> cateGo = ['Available activities', 'coming activities'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 480,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cateGo.length,
        itemBuilder:
            (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                      width: 140,
                      height: 30,
                      decoration: BoxDecoration(
                        color:
                            selectedIndex == index
                                ? Colors.white
                                : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 4,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          cateGo[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color:
                                selectedIndex == index
                                    ? appColor.greenFlag
                                    : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(height: 10,),
                    // selectedIndex == index? available() : coming(),
                    // const SizedBox(height: 20,), selectedIndex == 0 ?  available() : coming(),
                    const SizedBox(height: 20),
                    selectedIndex == 0 ? Text('available()') : Text('coming()'),
                    Text('data'),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
