import 'package:as_project/touristPages/touristLog.dart';
import 'package:flutter/material.dart';
import '../widget/appColors.dart' as appColor;

class setting extends StatelessWidget {
  const setting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: appColor.greenFlag,
          title: Text('الاعدادات', style: TextStyle(color: Colors.white)),
        ),

        backgroundColor: appColor.greenFlag,

        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Text('data',style: TextStyle(fontSize: 20),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  // Icon(Icons.person),
                  Text(
                    'مرحبا محمد',
                    style: TextStyle(fontSize: 37, color: Colors.white),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Expanded(
              child: Container(
                width: 480,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                ),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Flexible(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 8,
                                childAspectRatio: 6,
                              ),

                          padding: EdgeInsets.only(top: 20, bottom: 20),

                          itemCount: 8,
                          itemBuilder: (context, index) {
                            switch (index) {
                              case 0:
                                return settingWidget(txt: 'معلومات الحساب', icn: Icons.person_outline,);

                              case 1:
                                return settingWidget(txt: 'اشعارات', icn: Icons.notifications_outlined,);

                              case 2:
                                return settingWidget(txt: 'المظهر', icn: Icons.wb_sunny_outlined,);

                              case 3:
                                return settingWidget(txt: 'الحماية و الخصوصية', icn: Icons.lock_outline,);

                              case 4:
                                return settingWidget(txt: 'الدعم و المساعدة', icn: Icons.headphones_outlined,);

                              case 5:
                                return settingWidget(txt: 'تواصل', icn: Icons.email_outlined,);

                              case 6:
                                return settingWidget(txt: 'عن التطبيق', icn: Icons.info_outline,);

                              case 7:
                                return settingWidget(txt: 'تسجيل خروج', icn: Icons.logout_outlined,);

                              default:
                                return Container();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class settingWidget extends StatelessWidget {
  final String txt;
  final IconData icn;
  const settingWidget({super.key, required this.txt, required this.icn});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(value),
      width: 330,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(txt, style: TextStyle(fontSize: 22)),
                SizedBox(width: 10),
                Icon(icn, size: 37),
              ],
            ),
            Icon(Icons.arrow_back),
          ],
        ),
      ),
    );
  }
}
